---
title: "实时 Reel 状态与重放"
summary: "用泛型 ReelState 保留数据库类型，区分实时 updater 与历史记录解码边界"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "reel"
  - "reel-reducer"
  - "refresh-reel"
  - "time travel"
  - "replay records"
entry_for:
  - "cumulo-reel.core/reel-reducer"
  - "cumulo-reel.core/refresh-reel"
  - "cumulo-reel.core/play-records"
---

# 实时 Reel 状态与重放

ReelState<Db> 同时保存 base 与当前 db，两者使用同一数据库类型。纯 updater
返回 Db；WebSocket、持久化、投影和 revision 策略由应用处理。

## 创建状态与实时更新

使用新构造器，并为原子声明 Ref<ReelState<应用 Db>> 的 schema。reel-schema
仍是开放的 ReelState<Dynamic> 模板，不能提供具名数据库的类型证据。

```cirru.no-check
defref *reel $ %{} cumulo-reel.core/ReelState
  :base initial-db
  :db initial-db
  :records $ []
  :merged? false

reset! *reel $ cumulo-reel.core/reel-reducer
  @*reel updater op sid op-id op-time dev?
```

实时 updater 的合同为 Fn<Db,Op,Sid,OpId,Number> → Db。操作本身携带 payload，
没有另一个 op-data 参数。dev? 仅控制是否追加记录，不改变业务结果。reset 使用已有
base，merge 将当前 db 设为 base；都清空记录并保留 Db 类型。控制操作仍需与传入
updater 的 Op 合同一致，控制分支不会调用 updater。

原子、函数参数和返回值中的 ReelState 都应明确写为 `(:: 'cumulo-reel.core/ReelState
'app.schema/Db)`。正式 0.28 在部分局部构造器上下文仍需要显式类型说明；可为全新的、
字段已知的构造器提供预期类型，这不等于把开放的旧状态强转为具名数据库。

## 重载与历史记录

历史记录保留原来的四项 List：`[op sid op-id op-time]`。records 为
List<List<Dynamic>>，不会凭 List 位置宣称其内容已经是某个 Op 或 Number。

```cirru.no-check
reset! *reel $ cumulo-reel.core/refresh-reel @*reel initial-db replay-updater
```

replay-updater 的合同是 Fn<Db,Dynamic,Dynamic,Dynamic,Dynamic> → Db。它在使用
记录中的操作和元数据前负责验证或重建名义值；数据库从状态保留类型，不需要每条记录
再次深度解码。不要把开放参数 assert-type 成业务类型来代替运行时验证。

refresh-reel 在 merged? 为 true 时使用状态内的 base，否则使用新 initial-db。
play-records 按顺序重放，并保持 Db 类型。异常向调用方传播；更新原子发生在成功得到
完整新状态之后。持久化恢复仍应先验证数据库，再构造 typed ReelState；这个泛型容器
不是未验证输入的 decoder。

## 验证范围与迁移状态

这项 API 迁移目前是本地源码覆盖，尚未发布。核心通过正式 0.28 与候选编译器的严格
检查；Number → String 的错误 updater 在两者中均被拒绝。Calcium 的完整客户端、
服务端严格检查和附带回归通过。原子创建、实时结果、历史顺序与 merged base 均有
实际测试，记录布局没有改成另一套 wire 格式。

本项目 demo 使用本地 ws-edn 5ce8958 与 Recollect 3007237 后，两种编译器的
完整服务端严格检查与 8 个附带测试通过。投影改用保存参数/返回类型的泛型 memo
容器，重载显式释放并更换容器；命中直接复用结果，不重新解码。再接入本地 Respo
7644b19 后，正式 0.28 客户端剩两条 watcher 告警；候选编译器修正已经绑定的
nullable 泛型比较后，完整客户端严格检查和 JS 生成通过，服务端与 8 个附带测试
仍通过。编译器的共享 watcher 用例已在 native 与 JS 回放，但尚未验证本 demo
在浏览器中的完整交互。真实网络、浏览器、全部发布
依赖解析和发布交付未完成。不可将核心及一个下游通过扩大为整个项目或 milestone 完成。

## 协议边界的最新验证

当前客户端在 patch 完成后逐层解码并重建具名 Store，失败时保留原 Ref 值。
change-op class mapper 仅恢复 Enum 身份，payload 仍由 decoder 验证。Router.data
保留 Dynamic；nil 用户、头像、路由和其他 nullable 字段保留现有语义。服务端输入
操作检查 tag、参数数量和类型，再构造 Op，兼容现有客户端匿名 Enum wire 格式。

24 项 native 测试在正式/候选编译器中通过，其中 16 项协议用例从同一附带 AST
回放到新生成 JS，两种编译器都通过。4 项 Node 运行测试、候选严格检查和 Vite 构建
通过。隔离浏览器实际验证了初始同步、错误消息、注册输入、资料路由和退出同步。
客户端与服务端分别输出到 js-out/ 和 js-server-out/，生成文件不入库。

发布依赖与质量验收仍未完成。当前质量门禁报告 80 项逐定义回归，预算没有放宽；
正式编译器的 nullable watcher 修复及本地 ws-edn、Recollect、Respo 覆盖尚待发布。
