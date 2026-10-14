# 客户端状态边界的发布版迁移

正式 Calcit/procs 0.29.3 与 Respo 0.16.119 暴露旧 dispatch! 将开放 Enum payload
直接当作 List cursor 使用的问题。旧包裹 update-states 的返回也是 Dynamic，随后
对 &map:get 的输入和最终状态使用 assert-type；这不能在 source proof 中替代实际检查。

迁移使用已有 update-state-tree，先以 decode-map-as 校验 cursor 的 List 形状，
再校验结果符合原 *states 的 Map<Tag, Dynamic> 合同后更新 Ref。嵌套业务数据仍开放，
不把 String/Number key 转成 String、不选择业务默认值、不引入 unsafe 或新入口。
状态分支显式返回已有 dispatch! schema 声明的 Unit；直接返回 reset! 的 Map 不符合
该合同。legacy List 调用与匿名 :states 操作仍可使用。

两个 definition :tests 覆盖 Tag/String/Number 混合嵌套路径、两种旧调用、实际 Unit
返回，以及非法 cursor 在状态写入前失败。原 52 项测试全部保留，现 54/54；225 个
按宿主的公开定义、前后端生成、Vite 构建及原 6 项 Node 回归通过。新增测试从原
Snapshot 的 :tests 提取同一 AST，在临时 Snapshot 用 CLI 守卫加入回放入口；真实
浏览器加载生成 JS，两项通过且无 error 日志。没有伪造 document，也没有新增维护
的检查脚本。普通 Node 的该浏览器入口因 document 不存在失败，不把它计为 JS 通过。

整体迁移仍未验收：原严格 Caps 拒绝 Message/Util/WS-EDN 的旧依赖 pins；开发
编译器的 dispatch! 返回 proof 仍报告 recur 的 Unknown。未 push/PR、未发布模块，
这些局部结果不替代整个消费者在匹配发布版上的 strict 与业务验收。
