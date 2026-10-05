# Cumulo Reel in Calcit

Cumulo 的 Reel 状态、操作记录与重放库。

## 使用

服务端新建 `ReelState`，在定义 schema 中声明 `Ref<ReelState<Db>>`：

```cirru
defatom *reel $ %{} cumulo-reel.core/ReelState
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
`reel-schema` 保留为开放的 `ReelState<Dynamic>` 模板。需要具名数据库
合同时使用新的构造器与明确的 schema，不能把开放模板断言成已验证状态。

重放与重载细节见 [实时 Reel 状态与重放](docs/realtime-reel.md)。
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
calcit calcit.cirru analyze quality --baseline config/calcit-quality.cirru
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

Calcit/procs 固定为已发布的 `0.29.0-alpha.6`，使用已发布的 cumulo-util `0.0.24`、
ws-edn `0.0.33`、Respo `0.16.114-alpha.7`、JS-FFI `0.2.1-alpha.13` 和
Recollect `0.0.53`。当前验证不使用本地开发模块覆盖。
模块/package 准备版本为 `0.0.48`，尚未发布。

- 客户端和服务端严格检查通过；原生附属测试 39/39。
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
- Actions 两入口严格检查通过，完整流程仍在质量门禁失败。当前本地有 9 项
  逐定义指标回归，预算未提高；unsafeCoerce 保持 4。
- Caps 仍报告 UI、Respo、JS-FFI 的传递版本差异。严格依赖解析、完整质量
  门禁与发布验收尚未完成。

迁移经过与验证范围见：

- [类型边界与协议交付记录](history/20261004-type-boundary-delivery.md)
- [发布依赖与宿主回调回归](history/20261005-published-dependencies-and-host-callbacks.md)
- [Respo alpha.7 正式依赖下游回归](history/20261005-respo-alpha7-published-consumer.md)

COS Actions 只上传前端 `dist`，不部署服务端。生产前缀仍为
`Cumulo/cumulo-reel.calcit/`；PR 使用 `pr/<number>/<run-id>/<attempt>/`，
避免不同 PR 或重跑覆盖资源。draft 与 fork PR 不上传；同一 PR 的运行排队，
不同 PR 使用独立前缀。上传校验仅使用 Action 内置 `public-base-url`，无额外脚本。

## License

MIT
