# 对齐 Calcit 0.13.77 与已发布 provider / Align Calcit 0.13.77 and released providers

## 中文

- 将 `deps.cirru :calcit-version` 与 `@calcit/procs` 精确升级到 0.13.77，保持实现阶段模块版本为 0.0.34。
- 消费已发布的 Recollect 0.0.42、ws-edn 0.0.25、respo-message 0.0.19、cumulo-util 0.0.17、respo-ui 0.7.16 与 respo 0.16.91，不使用分支或 commit hash；后三者消除严格解析发现的根依赖旧 pin。
- 重新执行严格 Caps、不可变 Yarn、client/server 类型与质量检查、测试、native/JS/Vite smoke，确认 reel/reload/replay 公共行为不回退。
- 在 `twig-members` 将映射后的 pair set 显式转为 list，再交给 `pairs-map`，适配已发布 provider 的精确集合类型并保持成员 map 结果不变。

## English

- Upgrade `deps.cirru :calcit-version` and `@calcit/procs` exactly to 0.13.77 while preserving module version 0.0.34 during implementation.
- Consume the published Recollect 0.0.42, ws-edn 0.0.25, respo-message 0.0.19, cumulo-util 0.0.17, respo-ui 0.7.16, and respo 0.16.91 releases without branch or commit-hash pins; the latter three remove stale root pins reported by strict resolution.
- Re-run strict Caps, immutable Yarn, client/server type and quality checks, tests, and native/JS/Vite smokes to guard reel, reload, and replay behavior.
- Convert the mapped pair set to a list before `pairs-map` in `twig-members`, matching the released provider's precise collection type while preserving the member-map result.
