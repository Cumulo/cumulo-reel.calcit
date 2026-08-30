# Align the latest Calcit ecosystem dependencies

## 中文

- 将 respo-message、respo-ui、calcit-wss、calcit.std 与 recollect 更新到当前
  已发布稳定版本。
- 维持 Calcit / `@calcit/procs` 0.13.66 与 ws-edn 0.0.19 不变。
- 此次对齐消除下游 Calcium/Timegrass 升级到最新模块时的 strict dependency
  divergence；不改变 cumulo-reel 的公共 API 或运行语义。

## English

- Update respo-message, respo-ui, calcit-wss, calcit.std, and recollect to their
  current stable releases.
- Keep Calcit / `@calcit/procs` 0.13.66 and ws-edn 0.0.19 unchanged.
- This alignment removes strict dependency divergence when downstream
  Calcium/Timegrass applications adopt the latest modules; it does not change
  cumulo-reel public APIs or runtime semantics.
