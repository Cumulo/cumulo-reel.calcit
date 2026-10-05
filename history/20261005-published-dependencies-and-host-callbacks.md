# 发布依赖与真实宿主回调回归

## 发布依赖

使用已发布的 cumulo-util `0.0.24`、ws-edn `0.0.33`、Respo
`0.16.114-alpha.6` 和 JS-FFI `0.2.1-alpha.11`。正式 Calcit / procs
保持 `0.28.0`。通过实际 Caps 下载与 toolchain 校验的九个发布模块
执行本轮回归，不再使用本地开发模块覆盖。

模块/package 版本准备为 `0.0.48`，尚未创建标签。

## Watcher 与 memo

具名 `on-store-change!` 不读取两个参数，声明独立的 Current/Previous 泛型，
保留两个参数、一次 render 和 Unit 返回。两处 add-watch! 复用该回调，
正式 0.28 的 nullable watcher 类型诊断消失。

发布 Recollect `0.0.53` 没有此前调用的 memo handle API。改用其已发布的
`memo-twig-by1` / `memo-twig-by2`，显式传递原 builder 和逻辑 key，
保留 begin/finish frame 生命周期。应用 reload 用 `reset-twig-memo!`
清空应用使用的共享 twig cache。原附属测试名称、tags、身份复用、typed
projection 和 1→2→0→1 缓存计数断言保持不变。

## 服务端真实启动与退出

实际启动 main! 发现环境变量 port 的 `parse-float` 返回 Result，却被直接
传给 WebSocket server。新增 `resolve-server-port`，取出成功的 Number，
拒绝无效文本、负数、越界值、小数、NaN 与 Infinity；允许 0 用于临时端口。
九个附属测试覆盖默认值、正常端口、临时端口及上述拒绝场景。

实际 SIGINT 停机发现 Node listener 传入两个参数，零参数业务退出回调
因此触发 arity 错误。仅用于 SIGINT 的 NodeProcessHost listener 合同改为
String/Number 两参数，宿主适配器忽略它们并以零参数调用业务回调。
业务 on-exit! 保持零参数和原 persist/quit 顺序。

新增 Node 集成测试启动真实服务端 entry，使用 port=0 和隔离数据库，
发送真实 SIGINT，验证退出码 0、无 arity 错误，并检查数据库已持久化。

## 实测

- 正式 0.28 两入口严格检查通过，全部原生测试 33/33。
- 真实生成 JS 的协议回放、WebSocket、端口占用失败、持久化和完整
  entry/SIGINT 回归 5/5。
- 客户端与服务端输出目录独立；Node 24 Vite 生产构建通过。
- 真实浏览器连接、注册、profile/members 投影与退出同步通过，
  无应用脚本错误。后端数据位于独立临时目录，测试服务和页面均已关闭。
- Snapshot 由 CLI guarded transaction 修改，格式与 diff 检查通过。
  没有提交生成 JS、截图或 JSON 输出。

## 剩余门禁

质量门禁仍有 77 项逐定义回归，预算未提高。Caps 仍报告 UI、Respo 和
JS-FFI 的传递版本差异；本仓库继续使用原有非 strict 下载流程并显示这些
警告，不据本轮结果声称其他消费者的严格依赖解析已通过。
发布和完整质量验收仍未完成。

## 开放数据的类型保留

`decode-open` 只把输入原样放入 `Result :ok`，改为
`Fn<Value>(Value) -> Result<Value, String>`，保留实际输入与输出的关系。
Router.data 仍是开放数据，其他外部解码入口的 Dynamic 保持原有合同。
新增两条附属回归验证 Number 返回类型以及包含 nil 和异构 List 的开放
Map 原样保留，并纳入同一 AST 的 native/新生成 JS 协议回放。

原生测试 35/35，两入口严格检查通过，Node 运行回归 5/5。
质量回归从 77 降至 74：schemaDynamic 49→47、unresolved 80→78、
typeNotFull 36→35。预算、unsafeCoerce 及真实外部数据校验未改变。
README 更新为当前发布依赖和验证状态，历史迁移细节保留在 history 中。

## 字段读取器与定义映射

`decode-field` 的 source 使用 `Map<Tag,Value>`，decoder 接收相同的 Value，
返回的 Result 保留独立的 T。实际 Map 存取与 decoder 调用直接证明这一关系，
开放的协议 source 仍绑定为 Dynamic，外部字段的受检 decoder 保持不变。
新增四条附属回归覆盖 Number、nil、字段缺失与 decoder 错误的字段上下文，
并纳入同一 AST 的 native/重新生成 JS 回放。

严格检查负例先接受 String Map 与 String decoder，再把同一调用的 Map 值
改为 Number，确认检查拒绝该调用。此 probe 只由 Calcit CLI 创建于临时
Snapshot，检查后清理，不将错误代码或生成 JSON 入库。

class mapper 的实际值是 change-op 的 Enum 定义，声明改为
`Map<Tag,EnumDef>`。它仍不验证 change-op 的 payload；普通 Enum 实例类型
与定义值不同，不能用 `Map<Tag,Enum>` 代替。

正式两入口严格检查、39/39 原生与 5/5 Node 运行回归通过。
质量回归进一步从 74 降至 68，原预算与 unsafeCoerce 保持不变。
