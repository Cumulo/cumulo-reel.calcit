
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
本项目 demo 的正式服务端检查通过，候选服务端仍有 Node callback/memo 合同警告，
demo 客户端仍被已发布 ws-edn 的旧 WsClient 断言阻断。不能作为完整发布验收结果。

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
完整客户端仍被已发布 ws-edn 的 WsClient 类型断言阻止。twig-container 已改为
实际构造 ClientStore，服务端严格入口与包含 diff/patch 的 JS 生成通过；没有扩大
schema 或用 coercion 掩盖原 Map/Struct 不一致。

这仍是不可部署的迁移候选：外层投影从 Map 变成 Struct，不能声称兼容旧协议。
内存中执行 diff → EDN 序列化 → 普通解析 → patch 后，Struct 定义身份未恢复，
回放结果不等于原名义值。普通 EDN 的无类型行为符合编译器设计，不应修改相等
语义绕过它；现有类型化解码又不支持本协议的 JsNullish 字段，Router 也有开放数据。
下一步需确定一次性的协议解码边界，再完成客户端与端到端验收，不能只增加
assert-type。未完成 Vite、真实 WebSocket/持久化运行测试或实际上传；COS 仍仅
针对前端资源，本候选不部署服务端。

### License

MIT
