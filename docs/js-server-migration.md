# Cumulo Reel 的 Node JS server 迁移

服务端入口使用 Calcit 的 `:server` JS 模式。业务层继续使用数字 session ID、原始 Cirru EDN 消息和 `:connect`／`:message`／`:disconnect`／`:blob` 事件；WebSocket、文件、定时器和本地日期只在宿主适配层接触 Node API。密码 MD5 与随机颜色保留原调用语义，分别由现有 npm 包提供。

`cumulo-reel.app.server-ws/serve!` 只负责传输，不提前解析消息。业务层仍通过 `try-parse-cirru-edn-as` 验证客户端操作，并按原逻辑返回错误。连接关闭与错误复用 `close-session!`，只发送一次断线事件。数字 ID 从 1 起分配，与原 native WebSocket 服务一致。

持久化仍采用 Cirru EDN。`check-write-text!` 在内容相同时跳过写入，并在需要时建立备份目录；备份路径沿用宿主本地月份和日期，格式为 `backups/<month>/<day>-snapshot.cirru`。服务端时间戳仍是毫秒。

当前直接依赖 `js-ffi@0.1.36`，与现有上游模块的固定版本一致，保留 CI 的 `caps --strict --ci` 门禁。已确认迁移所需的 Node 文件、路径、时间及契约 API 在该版本存在；上游模块统一升级后再推进到更新的 `js-ffi` 版本。

质量基线仅增加四个宿主对象断言：一个 `Date` 到 `LocalDateHost`，一个 `process` 到 `NodeProcessHost`，以及 WebSocket server 与 socket 到对应的 host trait。外部 npm 返回值用 `expect-string` 检查，消息中的布尔值用 `expect-bool` 检查，不再增加 `unsafe-coerce`。这些断言应保持在适配层，不能向业务定义扩散。退出信号由 `process.on('SIGINT')` 注册，不再使用 native CLI 的 `on-control-c`。

验收命令：

```bash
caps --calcit-version 0.20.0 --strict --ci
corepack yarn install --immutable
calcit calcit.cirru --check-only
calcit --entry server calcit.cirru --check-only
calcit calcit.cirru test
calcit --entry server calcit.cirru analyze quality --baseline config/calcit-quality.cirru
calcit --entry server calcit.cirru js
node --check js-out/cumulo-reel.app.server.mjs
```

静态验收之后，还必须在 Node 进程中验证连接、数字 ID、文本与二进制消息、断线、EDN 非法输入、重连、广播、持久化和备份路径。`node --check` 只能证明生成文件的语法，不代表服务端已通过运行验收。
