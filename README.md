# Cumulo Reel in Calcit

Cumulo 的 Reel 状态、操作记录与重放库。

## 使用

服务端新建 `ReelState`，在定义 schema 中声明 `Ref<ReelState<Db>>`：

```cirru
defref *reel $ %{} cumulo-reel.core/ReelState
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

## 发布工具链迁移当前状态

本轮未发布的 `0.0.52` 候选使用正式 Calcit/procs `0.29.0` 和稳定递归模块依赖。
客户端顶层状态已改为 `Ref<Option<ClientStore>>`，离线、重连和渲染通过 Option
分支处理；接收原有 nil 传输时转换为 `Option :none`，非法 patch 仍不更新 Ref。
Store watcher 使用两项 `Option<ClientStore>` 参数的具体合同，不再借用独立泛型。
ClientStore.user 也已改为 Option；传输投影只在 wire 边界还原原 nil/具名用户，
业务 Store 仍为 Struct。两个入口及 browser/node 全公开严格检查通过；原有
50 项附带测试和 6 项 Node 运行测试全部通过，包括同 AST 的协议 JS 回放、
增量 patch、原子拒绝、真实 WebSocket、持久化和 SIGINT。前后端生成及 Vite 构建通过。
旧 nominal Struct wire 格式已恢复为独立用例，与 legacy Map 用例分别通过原生和
生成 JS 回放。Router.router 已改为 Option；wire 专用的 Router/Session 投影只展开
具名协议字段，Router.data 仍保持开放值。现有增量测试覆盖 home 到 profile 及嵌套
子路由变化，失败先复现再修复。
Session.user-id/id/nickname 也已改为 Option，同步迁移连接、登录、注册、退出及投影。
成员 wire 投影使用带具体 sid/Session 合同的 Map 遍历，避免 List 配对丢失类型；
字符串 Option 只在 wire 编码函数还原为旧 nil/String。最新严格检查为 browser
101/101、node 118/118；原有 50 项测试、6 项 Node 运行回归、前后端生成和 Vite
构建通过。上轮隔离存储可加载并登录旧测试用户，新注册用户的资料/成员和退出
也通过且无 error 日志。ClientStore.name 和 ClientUser.avatar 随后也迁移为 Option，
wire 编码仍保留 nil/String；现有增量用例覆盖显示名 none/some 和嵌套头像更新。
原有 50 项测试、6 项 Node 回归、构建及隔离存储用户的浏览器登录/资料/退出通过。
零调用的旧 decode-nullable-string 已退役，源码可从 Git 历史恢复。
User.avatar 也已迁移为 Option；存储读取验证 Database/User 字段和 Map key 后才
构造业务 Struct，不再通过 assert-type 接受未经验证的旧数据。旧 nil/String 头像
及新持久化 Option 均支持，非法头像被拒绝；pages 内容保持开放，不改变业务数据。
持久化仍写具名 Database 并清空 sessions。最新严格检查 browser 101/101、node
124/124，52 项附带测试和既有 6 项 Node 回归全部通过；新增存储用例复用原有
协议 native/JS 回放入口，没有独立检查脚本。前后端生成和 Vite 构建通过，前轮
隔离旧数据库也通过生成 JS 解码及新格式往返。此次存储变更后的真实浏览器旧用户
登录、资料/成员显示和退出已通过，error 日志为空。7 处旧 option:* 已改为当前
Option 方法，废弃 w-log 改为 dbg；项目 deprecated-call 为零，server 入口动态
方法报告为零。开放的 Router.data、pages 和协议输入保持原有边界，不以覆盖率
数字为由强制收窄。候选尚未发布，不据此宣称全生态迁移已完成。

以下为此前发布工具链的历史验收记录，不代表本轮正式版候选已完成：

Calcit/procs 固定为已发布的 `0.29.0-alpha.16`，使用已发布的 cumulo-util `0.0.25`、
ws-edn `0.0.35`、Message `0.0.30`、Respo UI `0.7.32-alpha.5`、Respo `0.16.114-alpha.8`、
JS-FFI `0.2.1-alpha.13` 和 Recollect `0.0.56`。当前验证不使用本地开发模块覆盖。
模块/package 版本为 `0.0.50`；发布状态以同名 Git tag 与 GitHub Release 为准。

- 客户端和服务端严格检查通过；原生附属测试 49/49（含分区引擎 10 项）。
- 协议输入先验证 envelope、change-op 和操作 payload，再构造具名值。
  nullable 字段保留 nil，Router.data 继续接受开放数据。非法 patch 不发布状态。
- `decode-open` 原样返回输入，以泛型保留输入/输出的类型关系。它不验证
  Router.data，也不会把开放的路由数据变成已验证业务值。
- `decode-field` 以泛型保留 Map 值与 decoder 参数的关系。String 专用
  decoder 接到 Number Map 时被静态拒绝；开放协议字段仍逐项验证。
  class mapper 使用 `Map<Tag,EnumDef>`，只恢复定义身份，不证明 payload。
- Number、String、Bool、Tag 标量 decoder 使用 `Fn<Input>(Input)`，返回对应
  具体类型的 `Result`。任意输入仍经 `try-decode-map-as` 校验，不将输入泛型
  当作已验证数据；外部协议、nullable 数据与历史记录的开放边界保持。
- nullable、嵌套对象与 patch 接口也保留输入泛型；原 envelope、字段、参数数量、
  payload 和 patch 结果校验不变。`play-records` 保留 List 元素与回调参数的
  `RecordValue` 关系，数据库仍为 Db；应用 replay decoder 的四个输入泛型独立。
- 已验证重新生成 JS 的协议回放、真实 WebSocket、端口占用失败、持久化、
  服务端启动和 SIGINT 退出；实际浏览器连接、注册、资料/成员显示及退出通过。
- 旧 Dynamic 数量 baseline 已退役，改用全项目按宿主划分的公开 API 检查：
  browser 95 个定义、node 112 个定义，覆盖未被入口调用的公开函数。
  严格入口检查、严格 Caps、原生测试、生成 JS 的运行回归与 COS 内置验证均保留。
  开放协议与历史记录仍在实际使用前解码，不通过删类型或增加强转满足统计指标。

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
