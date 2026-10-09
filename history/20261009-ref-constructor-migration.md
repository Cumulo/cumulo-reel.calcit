# Ref 构造改用 ref 与 defref

- 运行 `calcit calcit.cirru fix --rule core-ref-constructor-v1 --include-attached`，14 处机器可应用改写（`defatom` → `defref`、`atom` → `ref`），无需人工复核项；复查结果 `:changed false`。
- README 与 `docs/realtime-reel.md` 的 `defatom *reel` 示例改为 `defref *reel`。
- 基于 main 开出；#55（typed partition apply cursor）同样修改 `calcit.cirru`，若其先合并，重新运行同一修复规则即可。
- 本地按 alpha.19 跑通 CI：format、check-only（client 与 server）、`yarn check-types`、`calcit test`（49/49）、client JS 与 Vite 构建、server JS 编译与导入、`scripts/server-runtime.test.mjs`（5/5）。
