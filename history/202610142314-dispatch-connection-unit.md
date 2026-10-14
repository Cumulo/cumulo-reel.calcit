# 连接分支对齐声明的 Unit

## 原因与范围

完整 strict 返回证明首先报告 `cumulo-reel.app.client/dispatch!` 的实际返回 Unknown。
用正式 Calcit 0.29.3 在隔离 Snapshot 中验证 Number 参数尾递归，以及
Dynamic / Option<Dynamic> 参数的同形尾递归，两者均通过独立 Unit 返回证明并实际运行。
不能把该诊断直接归因为编译器不支持 recur。

实际源合同是：`dispatch!` 声明 Unit，状态分支和 `ws-send!` 都返回 Unit，
但连接分支直接返回 `connect!` 的 `ws-edn.client/WsClient`。调用者是 renderer
的 Unit callback 和自动登录动作，不消费这个句柄；`connect!` 的句柄 API 自身保留。

通过 CLI query/tree 查看真实节点，再用 transaction dry-run 和精确 scoped revision
守卫，仅将该单表达式 match 分支改为：

```cirru
do
  connect!
  , &unit
```

该位置需要 `do` 表达两个顺序步骤；函数体和 let 不另加包装。连接仍执行一次，
其异常继续传播；只丢弃内部句柄以符合已声明 Unit。不在尾部 recur 后插入 Unit，
不放宽 schema、增加 Dynamic 或 unsafe，也不改变底层 WebSocket API。

## 验证

- 正式 0.29.3 入口检查与原 54 项附带测试通过；状态分支、混合 key、失败不修改状态的断言保留。
- 原生成 JS 中连接调用仍执行一次，分支返回 `void 0`；尾递归 while/recur 路径保留。
- 全新临时存储的真实本地服务与真实浏览器验证：连接动作返回 Unit，实际 WebSocket
  收到并解码服务端投影；浏览器 error 为空。临时页面和服务已关闭，不访问生产存储。
- 完整 strict 已越过 dispatch 的原错误，继续报告 `simulate-login!` 的旧日志返回合同。
  正式 0.29.3 尚未包含新的 println/eprintln/echo Unit 签名与 native 语义，应在实际
  配对 alpha 发布后重跑，不对所有日志分支机械追加 Unit。

## 保留的门槛

本增量不是整个消费者验收。新的日志/回调合同须用真正发布且配对的 CLI/runtime 验证；
完整 strict、实际业务、宏/依赖退场审计、PR review/CI、精确 main 与模块发布仍继续。
