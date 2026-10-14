# Cumulo Reel in Calcit

Cumulo 的 Reel 状态、操作记录与重放库。

## 使用

服务端新建 `ReelState`，在定义 schema 中声明 `Ref<ReelState<Db>>`：

```cirru
defref *reel $ cumulo-reel.core/ReelState
  :base initial-db
  :db initial-db
  :records $ []
  :merged? false

; dev? 为 true 时记录操作，便于调试和重放
cumulo-reel.core/reel-reducer @*reel updater op sid op-id op-time dev?

; 重载时用新的 updater 重放已有记录
reset! *reel (cumulo-reel.core/refresh-reel @*reel initial-db replay-updater)
```

客户端：

```cirru
cumulo-reel.comp.reel/comp-reel (:reel-length store) ({})
```

`ReelState<Db>` 的 base/db 使用同一类型，实时 updater 也必须返回 Db。
历史记录仍为四项 List；replay-updater 在使用操作和元数据前负责验证。
`reel-schema` 是 `ReelState<Nil>` 空模板。需要具名数据库
合同时使用新的构造器与明确的 schema，不能把空模板断言成已验证状态。

重放与重载细节见 [实时 Reel 状态与重放](docs/realtime-reel.md)。

分区同步引擎 `cumulo-reel.partition`（每个分区每个 revision 只 diff 一次、epoch 化的 ACK 进度、
连接发送规划、客户端原子应用 delta 链，key 与视图类型泛型）见 [分区同步引擎](docs/partition-sync.md)。
应用模板见 [cumulo-workflow](https://github.com/Cumulo/cumulo-workflow)。

## 开发与依赖

先安装发布版本模块，再检查两个入口：

```bash
caps --ci
corepack enable
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --warn-dyn-method
calcit calcit.cirru --entry server --check-only --warn-dyn-method
yarn check-types
calcit calcit.cirru test --require-match

yarn compile-page
yarn vite build
yarn compile-server
node --test scripts/server-runtime.test.mjs
```

Vite 8 构建使用 Node 24，与 Actions 保持一致。客户端生成到 `js-out/`，
服务端生成到 `js-server-out/`，避免不同入口裁剪共享模块时覆盖另一入口的
导出。两个生成目录均不入库。开发模式启动服务端：

```bash
mode=dev node --input-type=module -e 'const app = await import("./js-server-out/cumulo-reel.app.server.mjs"); app.main_$x_();'
```

`deps.cirru :calcit-version` 与 `package.json @calcit/procs` 保持同一版本。
Actions 使用 `calcit-lang/setup-calcit@v1.5.0`，显式安装 `calcit,caps`。

`caps --strict --ci` 检查传递依赖的版本冲突。冲突应在对应上游模块升级并
发布后修复；原有普通 `caps --ci` 会显示版本差异并选择兼容的最高 SemVer。
非 strict 下载成功不能作为其他消费者严格依赖解析通过的证据。

## 应用模板的类型边界

客户端使用 `Ref<Option<ClientStore>>` 表达离线与已连接状态；Session、Router、
用户和头像的缺失值使用 Option。网络投影仍兼容原 nil/String 与具名/Map wire，
输入先解码为具名值，非法增量 patch 不更新 Ref。持久化读取检查 Database/User
字段和 Map key，写入时清空 sessions；pages 和 Router.data 保持开放边界。

profile 读取路由数据时验证 Number session key 和 nil/String 用户名，再交给
`Map<Number,Option<String>>` 的显示逻辑。访客条目保留，显示“访客”；已登录
用户名（包括空字符串）原样保留，非法 key 或用户名拒绝，不改 wire 格式。
通过 `map-entries` 保留 key/value 类型，而不是拆解异构 pair 后加断言。

登录状态和事件文本在实际使用前解码。浏览器挂载使用 Respo 的类型化 DOM
查询入口；应用层不把另一个库的 host 类型直接断言为 Respo DomElement。
dispatch 成功返回 Unit，不把底层连接 handle 或 `reset!` 的新状态泄漏给 callback。
状态树使用受检 cursor 和 `update-state-tree`，保留 Tag/String/Number 混合路径。

`decode-open` 保留输入/输出的泛型关系，不证明开放 payload；`decode-field` 保留
Map 值与 decoder 参数关系，String 专用 decoder 不能接收 Number Map。协议、
历史记录和开放路由字段在具体使用时检查，不依赖 Dynamic 数量预算。

工具链按 `deps.cirru :calcit-version` 和 `package.json @calcit/procs` 配对固定；
当前预发布验证使用已发布的 `0.30.0-alpha.2`，安装不覆盖本地开发模块。
依赖的正式版本以 `deps.cirru` 为准，模块发布状态以同名 tag/Release 为准。
语义测试放在定义 `:tests`，原 Node harness 重放同一 AST，并验证真实 WebSocket、
持久化与 SIGINT；浏览器回归使用隔离存储，不接触生产数据。

### 限制

- Router.data、pages、事件与传输输入不是已证明的闭合业务模型，具体消费前必须检查。
- Calcit alpha.2 的 strict proof 可能检查 JS-backed 定义未执行的 Cirru body；应核对真实 JS 来源与宿主测试，不给忽略的 body 加假校验。
- 完整升级验收还包括发布版 strict workflow 与实际业务，不以局部类型检查或源码零命中替代。

迁移经过与验证范围见：

- [类型边界与协议交付记录](history/20261004-type-boundary-delivery.md)
- [发布依赖与宿主回调回归](history/20261005-published-dependencies-and-host-callbacks.md)
- [Respo alpha.7 正式依赖下游回归](history/20261005-respo-alpha7-published-consumer.md)
- [Calcit alpha.16 与 Recollect 0.0.56](history/20261007-alpha16.md)
- [空 Reel 模板的真实类型与静态检查限制](history/20261005-empty-reel-nil-contract.md)

COS Actions 只上传前端 `dist`，不部署服务端。生产前缀仍为
`Cumulo/cumulo-reel.calcit/`；PR 使用 `pr/<number>/<run-id>/<attempt>/`，
避免不同 PR 或重跑覆盖资源。draft 与 fork PR 不上传；同一 PR 的运行排队，
不同 PR 使用独立前缀。上传校验仅使用 Action 内置 `public-base-url`，无额外脚本。

## License

MIT
