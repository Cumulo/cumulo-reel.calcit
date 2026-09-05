# 对齐 Calcit 0.13.77 与已发布 provider / Align Calcit 0.13.77 and released providers

## 中文

- 将 `deps.cirru :calcit-version` 与 `@calcit/procs` 精确升级到 0.13.77，保持实现阶段模块版本为 0.0.34。
- 消费已发布的 Recollect 0.0.42、ws-edn 0.0.25、respo-message 0.0.19、cumulo-util 0.0.17、respo-ui 0.7.16、respo 0.16.91、calcit-wss 0.2.27 与 calcit.std 0.2.31，不使用分支或 commit hash；根依赖全部对齐正式 0.13.77 provider set。
- 重新执行严格 Caps、不可变 Yarn、client/server 类型与质量检查、测试、native/JS/Vite smoke，确认 reel/reload/replay 公共行为不回退。
- 在 `twig-members` 以明确的 `(.to-list)` threading step 将映射后的 pair set 转为 list，再交给 `pairs-map`，适配已发布 provider 的精确集合类型并保持成员 map 结果不变。

## English

- Upgrade `deps.cirru :calcit-version` and `@calcit/procs` exactly to 0.13.77 while preserving module version 0.0.34 during implementation.
- Consume the published Recollect 0.0.42, ws-edn 0.0.25, respo-message 0.0.19, cumulo-util 0.0.17, respo-ui 0.7.16, respo 0.16.91, calcit-wss 0.2.27, and calcit.std 0.2.31 releases without branch or commit-hash pins; all root dependencies now match the formal 0.13.77 provider set.
- Re-run strict Caps, immutable Yarn, client/server type and quality checks, tests, and native/JS/Vite smokes to guard reel, reload, and replay behavior.
- Convert the mapped pair set through an explicit `(.to-list)` threading step before `pairs-map` in `twig-members`, matching the released provider's precise collection type while preserving the member-map result.
