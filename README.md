
Cumulo Reel in calcit-js
------

> Reel library for Cumulo

### Usage

服务端：新建 ReelState，并在定义 schema 中声明 `Ref<ReelState<Db>>`。

```cirru
defatom *reel $ %{} cumulo-reel.core/ReelState
  :base initial-db
  :db initial-db
  :records $ []
  :merged? false

; "action update, `dev?` is optional, turn it on to record states"
cumulo-reel.core/reel-reducer @*reel updater op sid op-id op-time dev?

; "do this on reload"
reset! *reel (cumulo-reel.core/refresh-reel @*reel initial-db replay-updater)
```

Client side:

```cirru
cumulo-reel.comp.reel/comp-reel (:reel-length store) ({})
```

`ReelState<Db>` 的 base/db 使用同一类型，实时 updater 的返回值也必须为 Db。
历史记录仍是四项 List；replay-updater 在使用其操作和元数据前负责验证，数据库类型
由状态直接保留。`reel-schema` 保留为开放的 `ReelState<Dynamic>` 模板；需要具名
数据库合同时使用新的构造器与明确的 schema，不能把这个开放模板断言成已验证状态。

当前泛型迁移尚未发布。核心和 Calcium 下游通过两种编译器的严格检查与回归；
本项目 demo 使用下述本地依赖覆盖后，正式与候选服务端严格检查均通过。
客户端进一步接入本地 Respo 类型边界修复后，正式 0.28 仍报告两条 watcher
合同告警；候选编译器修正泛型 nullable callback 比较后，完整客户端严格检查和
JS 生成通过。真实协议与浏览器运行仍待验证，不能作为完整发布验收结果。

use `mode=dev` to enable dev mode:

```bash
mode=dev node js-out/bundle.js
```

### Workflow

https://github.com/Cumulo/cumulo-workflow

### Development and dependency policy

Install released Calcit modules and validate both entries before sending a PR:

```bash
caps --ci
corepack enable
yarn install --immutable
calcit --check-only
calcit --entry server --check-only
calcit test
yarn compile-page
yarn vite build
yarn compile-server
```

`deps.cirru :calcit-version` and `package.json @calcit/procs` must stay on the
same Calcit release. Actions use the maintained `calcit-lang/setup-calcit@v1`
tag with explicit `calcit,caps` tools; application workflows should not pin an
opaque action commit unless they are temporarily testing an unreleased fix.

开发时先从正式 tag 安装 Calcit 模块，并同时验证 client/server entry。必须保持
`deps.cirru :calcit-version` 与 `package.json @calcit/procs` 使用同一个 Calcit
版本。Actions 通过可审计、可升级的 `calcit-lang/setup-calcit@v1` tag 安装
`calcit,caps`；除非临时验证尚未发布的修复，业务项目不应固定不透明的 commit
hash。

`caps --strict --ci` is useful for detecting stale transitive pins. A strict
failure caused by two released modules requesting different versions must be
fixed and released in those upstream modules; regular `caps --ci` reports the
same divergence and selects the highest compatible SemVer for local migration
work.

`caps --strict --ci` 用于发现传递依赖中的旧版本固定。如果两个已发布模块请求
不同版本，应在对应上游模块升级并发版；迁移期间普通 `caps --ci` 会报告同一
分歧，并选择兼容的最高 SemVer 继续验证。
For reducer, reload, and replay guidance usable from the CLI, see
[Realtime Reel state and replay](docs/realtime-reel.md).

### Calcit 0.28 迁移进度

CLI 与 procs 固定正式 0.28.0，UI 跟进已发布 alpha.3；其余模块当前正式发布
仍与项目版本一致，不为严格解析冲突盲降 API 或使用 commit hash。
CI 移除迁移用 fix workflow 和重复统计，客户端与服务端分别保留严格入口检查，
动态方法诊断并入入口；原质量预算、五条 Calcit 测试、服务端运行测试保留。
COS Action 1.2 的 public-base-url 是唯一上传校验，保持原 CDN/main/共享 PR
前缀，只上传前端 dist，不上传或部署服务端。共享 PR 上传串行排队。

四处 watcher 明确为实际 JsNullish<ClientStore> 或 Map<Tag,Dynamic> 参数，
返回 Unit，保留渲染行为。原五条测试、18 项核心/数据公开定义、原质量预算、
不可变安装和工具链核对通过；严格 Caps 仍有三组已发布模块版本冲突。
仍有 11 个开放 schema 槽、42 个 unresolved、31 处 nil、4 处 unsafe，预算未放宽。
该阶段的完整客户端被已发布 ws-edn 的 WsClient 类型断言阻止。twig-container 已改为
实际构造 ClientStore，服务端严格入口与包含 diff/patch 的 JS 生成通过；没有扩大
schema 或用 coercion 掩盖原 Map/Struct 不一致。

这仍是不可部署的迁移候选：外层投影从 Map 变成 Struct，不能声称兼容旧协议。
内存中执行 diff → EDN 序列化 → 普通解析 → patch 后，Struct 定义身份未恢复，
回放结果不等于原名义值。普通 EDN 的无类型行为符合编译器设计，不应修改相等
语义绕过它；现有类型化解码又不支持本协议的 JsNullish 字段，Router 也有开放数据。
下一步需确定一次性的协议解码边界，再完成客户端与端到端验收，不能只增加
assert-type。未完成 Vite、真实 WebSocket/持久化运行测试或实际上传；COS 仍仅
针对前端资源，本候选不部署服务端。

### 后续：Node callback 与本地依赖覆盖

当前忽略链接中的 ws-edn 改用
`/Users/chenyong/repo/mvc-works/ws-edn-client-traits-194` 本地提交 `5ce8958`，
含客户端 handle 修复及 Node callback 的源码 `Fn` 合同。manifest 的 0.0.32
仍指已发布旧源码，不能据本地覆盖认定正式依赖解析成功。缓存和原 checkout 未修改。

接入 ws-edn 时，候选服务端严格检查的告警从 7 条降到 2 条，剩余为 Recollect memo-twig-by1/by2
从开放 memo 实现返回 Dynamic 却声明 R。正式服务端严格检查、两种编译器下
7 个附带回归均通过。客户端现在越过旧 WsClient 断言，正式检查暴露 10 条
Respo ToString/add-event 及 watcher callback 合同告警，仍未通过完整验收。
ws-edn 自身客户端 JS 生成还暴露 Option<Fn> reset! 诊断；不使用旧产物证明迁移成功。

日志位于 `/private/tmp/cumulo-reel-194-callback-{client,server}-{formal,candidate}.log`、
`/private/tmp/cumulo-reel-194-callback-{tests,candidate-tests}.log`。下一步继续修正
memo 的返回证据、客户端及依赖合同，再进行真实协议、浏览器和发布验收。

### 后续：泛型 memo 容器

当前 Recollect 忽略链接指向
`/Users/chenyong/repo/calcit-lang/recollect-memo-types-194` 本地提交 `3007237`，
不是 manifest 中已发布的 0.0.53。旧异构缓存不能从 Dynamic 返回值证明 R，
旧 memo-twig-by0/1/2 现在如实返回 Dynamic，新的 TwigMemo1/2 将参数与结果保留
在泛型容器中。没有对命中值强转或重新解码，也没有删除 memo 改为每次重算。

用户和成员投影分别使用独立容器，保留 nil bypass、参数变化重算、命中复用和
frame pruning。重载时 reset-twig-memos! 先 release 旧容器，再创建新容器，
避免保留旧 builder 与生命周期注册项。空 seed 的类型说明只用于全新空 Map。

正式与候选编译器的完整服务端 main!/reload! 严格检查均通过，8/8 附带测试通过。
新增下游测试验证具名 ClientUser/成员投影、缓存数量及重载释放旧上下文。
Recollect 两者 23/23 附带测试、原 yarn test 和重新生成 JS 的对象身份、参数变化、
独立容器、nil bypass、frame/reset/release 回归通过；Number 参数传入 String
在两者的严格检查中被拒绝。此处没有声称整个 demo 的 JS 构建或网络运行完成。

日志：`/private/tmp/cumulo-reel-194-typed-memo-{formal,candidate}.log`、
`/private/tmp/cumulo-reel-194-typed-memo-{tests,candidate-tests}.log`。
Recollect 严格 Caps 仍被两组发布依赖版本分歧阻断，默认 demo 构建仍有八条
Respo 告警；本项目客户端与协议解码的既有问题也未完成。milestone 保持进行中。

#### 客户端 nullable watcher 回归

当前 Respo 忽略链接指向
`/Users/chenyong/repo/respo/respo-render-node-boundaries-194` 本地提交 `7644b19`，
不是 manifest 中的发布版本。这次覆盖消除了前述客户端 Respo 告警，正式 0.28
剩下两条 `add-watch!` callback 告警：已经绑定为 `JsNullish<ClientStore>` 的泛型
在参数比较时被提前剥掉 nullable wrapper。

候选编译器本地提交 `54a62eeb` 保留整个已绑定的泛型后，完整客户端 main!/reload! 严格检查与重新生成
JS 通过；服务端严格检查和 8/8 附带测试也通过。编译器自身的同一份附带 watcher
测试在 native 与 JS 回放中通过，另有拒绝非空参数、错误 payload 和错误返回值的
负例。正式 0.28 的客户端检查仍失败，这些本地源码覆盖尚未发布。

日志：`/private/tmp/cumulo-reel-194-watch-fixed-client.log`、
`/private/tmp/cumulo-reel-194-client-watch-js.log`、
`/private/tmp/cumulo-reel-194-watch-server-current.log`、
`/private/tmp/cumulo-reel-194-watch-tests-current.log`。
此处的客户端证据覆盖类型检查与 JS 生成；协议解码、浏览器和端到端运行仍需完成。

协议探针再次确认，`try-decode-map-as` 不能为包含 JsNullish 字段的 ClientStore
推导完整 decoder。EDN 边界的单字段探针改为先用 `nil?` 保留 nil，再对非空值
调用基础 String decoder；正式 0.28 与候选版本均接受 String/nil 并拒绝 Number。
这验证了保留现有数据语义的实现路径，尚未实施或验证完整 ClientStore 解码。
探针日志：`/private/tmp/cumulo-reel-194-wire-decode-probe.log`、
`/private/tmp/cumulo-reel-194-nullable-adapter-{formal-,}probe.log`。

### License

MIT
