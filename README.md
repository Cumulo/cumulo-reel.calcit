# Cumulo Reel in Calcit

Cumulo 的 Reel 状态、操作记录与重放库。

## 0.0.62 候选：对使用者的影响

保持正式 Calcit CLI / `@calcit/procs` **0.30.1**，同步完整正式依赖图：Util 0.0.32、
Message 0.0.39、UI 0.8.1、Respo 0.16.126、JS-FFI 0.2.6、Recollect 0.0.68、
WS-EDN 0.0.48，传递 Router 0.8.38、Value 0.5.22。下游也须整体更新并保留
Caps strict，不能只改根版本、混用旧图或 main/hash/alpha。

迁移 7 处旧 Result 判定、12 处旧 Struct 构造、7 处 foldl 和 1 处 concat，
保留原 63 项测试的名字、标签、断言与执行顺序。Date、process、WebSocket server/socket
的 4 处 unsafe 转换改用已有 js-cast 成员检查；真实宿主语义不变，无效宿主替身
可能更早失败，成员形状不证明参数、返回值或 payload。Node Buffer 不属于 js-cast
宿主，仍由 WS-EDN 原窄适配负责，不能机械替换。协议、存档、监听、SID 和
原有回调/派发行为不改；开放 Router.data/pages/记录合同不伪装成已证明闭合模型。

原 Node runner 的 5 处 JS Option 构造改为公开 nil->option，输入已知为非 nil 的
ClientStore/String 或明确的 null，保留全部原断言；生成 ABI `option_$o_unwrap`
仍是实际 .unwrap 实现，不机械改名。没有新测试组、检查脚本、迁移框架或预算放宽。
双入口 strict 继续要求 passed，并明确要求空 diagnostics。

本候选仍需原完整 CI、实际应用及评审验收；不自动合并、部署 Demo 或创建正式 tag。

## 已合并的后续清理（尚未配对新 tag）

CLI/runtime 和已发布依赖图保持正式 0.30.1，不改变协议、存档、监听、公开函数行为
或原测试断言。仅把分区链原附带测试里的两处 `option:unwrap` 改为 `.unwrap`，并将
Demo 的单一字符串 `:padding` 样式合同从 `Map<Tag,Dynamic>` 收紧为 `Map<Tag,String>`；
不改样式值，不把混合状态或 wire 数据强行收窄。现有 JS 入口与 reload 行为不改，
不删除错误展示入口，也不以 raise 替换它。

盘点覆盖 23 namespace /156 定义与全部63个附带测试（无 examples）。项目程序本身
旧 Option helper 为0，真实遗留是上述测试2处；此前全来源查询的28命中属于内置
`calcit.core`，不能算作项目债务，也不能作为删除编译器兼容入口的证据。
生成 JS 和原 JS 回归中的 `option_$o_unwrap` 属于 runtime ABI，编译器也会用它
实现新的 `.unwrap`，不是应机械改名的 Calcit 源码调用。

本清理不自动合并或部署 Demo，不创建未验收正式 tag；消费者继续引用已发布版本，
不要改指 main/hash。没有新增永久检查脚本、测试框架或质量预算。

## 已发布 0.0.61：使用者影响

CLI / `@calcit/procs` 成对使用精确正式 **0.30.1**。依赖更新为 Util 0.0.31、
Message 0.0.38、UI 0.8.0、Respo 0.16.124、js-ffi 0.2.5、Recollect 0.0.67、
WS-EDN 0.0.47，传递 Router 0.8.37；全部为已发布正式 tag，不用 alpha/hash。
消费者应同时升级 CLI/runtime 和依赖图，重启开发服务并刷新；公开 Reel/partition、
协议、存档和监听默认值不变，0.0.61 的配对升级不改业务函数。UI 0.8 基础样式可能影响外观。
Message 的已知长文本裁切仍见其 #53，不宣称本候选修复。

原附着测试、负向类型探针及七组 Node 回归保留，native/JS 附着测试改用 Calcit
已发布共享 runner，不再手工提取并拼接新的测试函数。没有新验证脚本、框架或预算。
0.0.61 已正式发布，使用时仍须同步升级依赖图，不能只切换 CLI/runtime 或引用 main/hash。
发布提交的原完整 CI 与隔离合成账户/刷新/SIGINT持久化验收通过；这些历史证据不自动
覆盖上方后续清理，需要按该 PR 的精确提交重新验收。
既有 Demo 仅上传前端 COS，不部署业务应用或服务端，本轮不自动合并或发版。

## 使用

服务端新建 `ReelState`，在定义 schema 中声明 `Ref<ReelState<Db>>`。
下面是应用接线示意，需要由应用提供 initial-db、updater、操作和元数据，并非独立程序：

```cirru.no-check
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

客户端在已解码的 ClientStore 上读取记录数量，交给 Respo 的 JS 渲染环境：

```cirru.no-check
cumulo-reel.comp.reel/comp-reel store.:reel-length ({})
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
caps --strict --ci
corepack enable
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --warn-dyn-method
calcit calcit.cirru --entry server --check-only --warn-dyn-method
yarn check-types
calcit calcit.cirru fix --workflow strict --verify --format edn
calcit calcit.cirru --entry server fix --workflow strict --verify --format edn
calcit calcit.cirru test --require-match

yarn compile-page
yarn vite build
yarn compile-server
CALCIT_BIN="$(command -v calcit)" node --test scripts/server-runtime.test.mjs
```

Vite 8 构建使用 Node 24，与 Actions 保持一致。客户端生成到 `js-out/`。
Node 回归前按 [CI 的共享 runner 准备步骤](.github/workflows/compile.yaml) 下载当前
Calcit 发布 tag 的四个 runner/协议/元数据文件到忽略的 `.calcit/calcit-tests/`，
不复制为项目源码、不安装或构建另一份编译器。零匹配或后端失败仍阻断；不承诺 WASM。
默认入口为 JS 模式：直接运行 `calcit` 会生成浏览器页面，`calcit -w` 持续编译；
不会尝试在 native 中执行 `document` 或 DOM 渲染。
服务端生成到 `js-server-out/`，避免不同入口裁剪共享模块时覆盖另一入口的
导出。两个生成目录均不入库。开发模式启动服务端：

```bash
mode=dev node --input-type=module -e 'const app = await import("./js-server-out/cumulo-reel.app.server.mjs"); app.main_$x_();'
```

本机开发或隔离验收可为同一入口设置 `WSS_BIND_ADDRESS=127.0.0.1`：

```bash
WSS_BIND_ADDRESS=127.0.0.1 mode=dev node --input-type=module -e 'const app = await import("./js-server-out/cumulo-reel.app.server.mjs"); app.main_$x_();'
```

地址从现有 `get-env` 的 `Option<String>` 读取，设置后原样传给 Node WebSocket 的
`host`；未设置时仍仅传 `port`，保留原宿主默认监听行为。空字符串明确报错，
其他地址是否合法由 Node 判断，不静默回退到全网卡。`serve!(port, on-event)`、
session ID、事件与协议均不变，不增加平行启动入口或修改生产配置。
原网络回归显式绑定回环并断言实际 socket 地址；缺失地址的默认配置另作精确断言，
默认 `serve!` 的真实监听路径只在隔离 CI runner 验证，并明确记录执行结果，
不为验证默认值而在本机开放所有网卡。

`0.0.58` 的验收基线在正式 alpha.5 配对下通过双入口完整 strict、原63项附着测试、
103/125项 browser/node 公开定义、原7组 Node 网络/持久化/SIGINT回归与构建。
真实隔离浏览器验证双访客人数2→1→2的断开/重连增量和Unicode输入，未创建账号，
未触及生产存储，控制台无warning/error。后续源码修改仍须通过最新提交审查、CI
与精确 main 验证；历史版本的验收不自动覆盖新提交。

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

### 历史迁移记录（不代替当前候选验收）

工具链按 `deps.cirru :calcit-version` 和 `package.json @calcit/procs` 配对固定；
已发布的 `0.0.58` 配对预发布版 `0.30.1-alpha.5`，将 Recollect 0.0.63、
WS-EDN 0.0.43、Message 0.0.37、Util 0.0.29、UI 0.7.41 和 Respo 0.16.122
统一到同一依赖图，不混用 hash。稳定 0.30.0 消费者继续使用 0.0.54，不能只更新
模块而保留旧 CLI/runtime。当时 0.30.1 尚未正式发布，当前正式组合见文首。

此前源码继续使用 alpha.5 CLI/runtime，依赖升级到已发布的 Recollect **0.0.65**，
消费其 diff/patch 的 Option 边界修复与类型收敛；其他模块和 npm runtime 不变。
已发布 0.0.58 的依赖图不会随源码改变，当前声明须在下一模块版本正式发布后才能作为
下游升级目标。剩余 wire、兼容派发与缓存编码的 nil 合同见 [Option 与 wire 边界](docs/option-wire-boundaries.md)。
0.0.57 仅更新对正式 WS-EDN 0.0.42 的依赖声明，使下游可以使用 strict Caps
安装该 Option 配置读取补丁；库源码、公开 schema、协议和原测试不变。
以下为先前迁移记录，不代表本次重新改写了这些实现。
先前迁移收紧 `render-app!` 接受的 renderer 首参为 DomElement，
与已有先解包的 `mount-target` 及 Respo SSR 入口一致。实际渲染、协议及附带测试不变；
原 Node 回归的三处容器拒绝断言兼容 alpha.4 的通用 `&get` 错误文本，
保留原输入、拒绝、cursor 身份与不派发断言，不增加检查或测试组；
安装不覆盖本地开发模块或共享缓存。候选版本号不表示已发布，正式 tag 必须等
最新 CI/review、真实消费者和精确合并 main 验收后创建。
依赖的正式版本以 `deps.cirru` 为准，模块发布状态以同名 tag/Release 为准。
语义测试放在定义 `:tests`，原 Node harness 重放同一 AST，并验证真实 WebSocket、
持久化与 SIGINT；浏览器回归使用隔离存储，不接触生产数据。

为 0.30.1 迁移的 12 处程序读取及 4 处原测试读取使用公开 `get` 与 Option 匹配，
保留缺失和存在 nil 的原结果、惰性 fallback、字段解码及原断言。登录与事件入口继续
拒绝非 Map，由既有 typed get lowering 保留 Map 专用访问，不叠加重复解码；
容器仍在原分支先执行 nil state fallback，不提前拒绝离线状态。
登录文本、删除消息的 ID 和消息协议读取在 Option 分支内直接调用原解码器，
分支结果分别为 String 与 Result<Message,String>，不先恢复开放 nil 中间值。
数据库 users/sessions/pages 也在分支内直接解码；备份路径在分支内转为 String，
保留原 nil 文本与日期目录行为，不选择新的默认路径。
缺失字段仍在原位置交给同一个 nil 解码分支，保留完整错误文本、字段检查顺序与
失败时不派发的行为；不将缺失值当作空字符串。附带协议回归由原 Node harness
重放同一 AST，登录宿主回归还核对缺失/nil/false/数字的精确错误。
旧 cursor 派发、state fallback 和 wire 可空字段仍按既有边界处理，
这些改动不表示所有开放数据已成为闭合模型。
登录初值在 Option 分支内解码为 LoginState，保留缺失/nil 的原初值、旧具名
Struct 输入与精确错误；cursor 内部保留 Option，缺失 cursor 时使用根 cursor `[]`，
已存在的 cursor 原值仍交给原 dispatch 边界，不把混合 key 路径转成字符串。
父容器仍执行原 Map 读取检查，不生成未使用的 nil payload。
原 61 项定义测试、完整 strict 及现有 7 项 Node 回归在旧 alpha.3 配对上通过；
混合 cursor 引用身份、空字符串/Unicode 输入、非法事件不派发及错误传播均有宿主回放。
正式 0.30.0 配对和上述正式图已复跑完整 strict、原 61 项定义测试、原 7 项
Node 回归、103/124 项 browser/node 公开定义及两入口构建。真实隔离浏览器验证
双访客人数增量、断开/重连和 Unicode 输入，未创建账号或接触原存储。
Tabletwo 的独立消费者副本完成完整 strict、51+2 项测试、构建和实际 WSS/持久化回放。
这些是候选验收，不替代最新远端 CI/review、精确 main 或正式 tag 安装证据。
额外通用 JS replay 不能在 Node 中加载浏览器 DOM 入口，不作为通过记录；
原 target-specific Node harness 和真实浏览器分别覆盖对应宿主。
此前 review 在既有 Node 用例补齐空白默认值与调用方预填登录字段断言，
保留 cursor 身份、非法输入拒绝和事件断言；不增加测试组、脚本或框架。
上述 0.30.0 验收是历史基线，不代替本次 0.30.1 配对的真实消费者与远端验收。
开发 watch 直接使用入口的 `-w` 持续模式，保留 browser / Node 各自输出目录。

### 限制

- Router.data、pages、事件与传输输入不是已证明的闭合业务模型，具体消费前必须检查。
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
