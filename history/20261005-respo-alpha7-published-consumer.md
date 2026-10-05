# Respo alpha.7 发布依赖的真实下游回归

## 依赖与工具链

Respo #222 已合并，`0.16.114-alpha.7` 发布标签指向 main `0072610`，
包括 #221 的渲染节点、cursor 和 callback 类型边界。
Reel 清单升级为 Respo alpha.7、JS-FFI alpha.13，以及精确匹配的
Calcit/procs `0.29.0-alpha.6`。其余模块保留已有发布标签；0.0.48 仍为
发布准备版本，未创建标签。

CLI 使用从 crates.io 安装的 alpha.6，runtime 使用 npm alpha.6，
模块使用真实 Caps 下载的九个发布模块。没有本地迁移源码覆盖。
`yarn install --immutable` 与 `caps verify --toolchain` 通过。
Caps 仍报告 UI、Respo、JS-FFI 的传递版本差异，严格 graph 未完成。

## 源码迁移

本地 deprecated 报告定位两处 `case-default`：客户端路由显示和操作解码。
实际 AST 的全部 pattern 都是 Tag 字面量，原 macro 就会将它们展开为
`match`。用 CLI guarded transaction 改为该展开形式，保留输入、原分支和
末尾默认值。未修改这两个定义的 schema、tests、examples 或其他 metadata。
预算、外部数据校验、线协议、状态树及 unsafeCoerce 均保持不变。

## 当前验证

- client/server 的默认严格检查和 `--warn-dyn-method` 通过。
- 原生附属测试 39/39；原有断言不变。
- 两入口重新生成 JS，使用精确 alpha.6 procs。Node 回归 5/5，包括同一
  协议附属 AST、decoder 正负类型控制、真实 WebSocket 及 SIGINT 持久化。
- Node 24 Vite 生产构建通过。
- 真实浏览器连接、输入状态、注册、资料路由、成员投影及退出同步通过，
  error console 为空。后端使用隔离临时数据库；本轮页面和测试服务已关闭，
  实际服务端 SIGINT 退出码为 0。截图与生成输出留在临时目录，不入库。
- 原质量门禁仍有 68 项逐定义回归，deprecatedCalls 为 0，unsafeCoerce 为 4。

本轮证明 Reel 在新发布的 Respo 类型边界上通过入口检查和真实运行回归。
完整质量门禁、Calcium 的第二个新版本下游回归、dispatch #195 与 milestone
整体验收仍待完成；不能用本地验证代替最新 head 的完整 Actions。
