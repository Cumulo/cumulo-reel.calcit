# 对齐 Calcium provider 依赖 / Align Calcium provider dependencies

## 中文

- 将正式依赖图中的 `Cumulo/cumulo-util.calcit` 从 0.0.17 升级到已发布的 0.0.18。
- 将正式依赖图中的 `mvc-works/ws-edn.calcit` 从 0.0.25 升级到已发布的 0.0.26。
- 不使用根级 shadow pin、源码或分支 override，也不降低严格 Caps、toolchain、client/server、lifecycle 或 build 门禁。
- 保持实现阶段模块版本为 0.0.36；合并并验证精确 main Actions 后，再从 main 创建独立的 metadata-only release。

## English

- Upgrade the formal dependency graph from `Cumulo/cumulo-util.calcit` 0.0.17 to the published 0.0.18 release.
- Upgrade the formal dependency graph from `mvc-works/ws-edn.calcit` 0.0.25 to the published 0.0.26 release.
- Use no root shadow pins, source or branch overrides, or weakened strict Caps, toolchain, client/server, lifecycle, or build gates.
- Keep the implementation-stage module version at 0.0.36; create a separate metadata-only release from main only after merge and exact-main Actions verification.
