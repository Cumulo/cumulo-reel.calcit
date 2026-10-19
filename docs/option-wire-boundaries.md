# Option 与 wire 边界

库内 `ReelState<Db>` 的 base/db 保留同一个数据库类型；客户端引用为
`Ref<Option<ClientStore>>`。缺失值在这些结构中使用 Option，具体输入在原解码处检查。
编码出口仍兼容旧协议，不为减少 nil 数量改 wire、历史记录或错误行为。

## 具名编码出口

- `encode-optional-string` 将 `Option<String>` 编码为旧 nil/String；空字符串保留，不选业务默认值。
- `encode-session` 把可选 id、user-id、nickname 及 Router 编码成旧字段格式；id 0 不是缺失。
- `encode-router` 递归编码可选嵌套路由，保留开放 data；None 编码为 nil，不抹掉已有路由。
- `encode-client-store` 只在输出时编码可选用户、名称、Session 和 Router；输入仍是已验证的 ClientStore。

`apply-server-patch` 在调用 Recollect patch 时把离线的 None 编码成旧 nil 基值；已有
ClientStore 先经相同 encoder。patch 成功后仍通过原 decoder 恢复 `Option<ClientStore>`，
非法 envelope、change payload 或嵌套字段返回原 Result 错误，不更新客户端状态。
这不是将任意 Dynamic 宣称为 ClientStore。

服务端 `sync-clients!` 缓存保存 ClientStore，而不是 wire 副本；只在 diff 输入处编码
旧/新视图。首次没有缓存时，nil 是 Recollect 旧基值协议的一部分。发送和缓存写入的
原先顺序不改，不借这次依赖升级引入新的 ACK 或重试协议。

## 兼容派发出口

`dispatch!` 继续接受旧 List/Tag 调用及其可选 payload，在封装原匿名 operation 和打印
原日志时保留 None→nil。真正执行 states 更新前，cursor 仍检查为 List，写入结果仍检查为
原状态 Map；不能把这个兼容参数当作业务内容已经具有具体类型。

登录组件的 cursor 本身保留 Option。缺失时派发根路径 `[]`；Some 中已有的值原样传给
开放回调，原混合 Tag/String/Number cursor 保持对象身份。现有宿主测试还验证非法文本
不会派发、有效文本只派发一次、回调异常对象不变。应用的操作解码边界仍负责拒绝非法 cursor。

## 验证范围

原 definition `:tests` 包含初次完整快照、增量 patch、旧 Map/名义 wire、递归路由、可选
用户/头像、nil reset 和非法嵌套字段。原 Node harness 重放同一 AST，并验证真实回环
WebSocket、广播/断线/重连、持久化与 SIGINT，不另建断言副本或计数门禁。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn check-types
calcit fix --workflow strict --verify --format edn
calcit test --require-match --summary-only --format edn
yarn compile-page
yarn compile-server
node --test scripts/server-runtime.test.mjs
yarn vite build
```

本机网络测试仅使用 127.0.0.1 与临时合成存储。脚本中缺省地址的真实全网卡监听分支仅在
隔离 CI runner 执行；本机只核对其配置值，不把本地连接 URL 当作监听隔离证明。
正式依赖版本、最新提交审查/CI、精确 main 和正式 tag 复验是独立门槛，不能用旧版本测试代替。
