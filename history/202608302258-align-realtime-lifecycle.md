# Align real-time lifecycle dependencies / 对齐实时连接生命周期依赖

## 中文

- 将 `Cumulo/cumulo-util.calcit` 升级到稳定 tag `0.0.14`，复用当前 browser lifecycle、backoff 与 heartbeat primitives。
- 将 `mvc-works/ws-edn.calcit` 升级到稳定 tag `0.0.22`，向 Calcium 下游提供 generation-safe lifecycle、bounded reconnect 与 heartbeat timeout。
- 其余稳定依赖保持不变，避免模板 strict graph 同时出现旧、新生命周期实现。

## English

- Upgrade `Cumulo/cumulo-util.calcit` to stable tag `0.0.14` for the current browser lifecycle, backoff, and heartbeat primitives.
- Upgrade `mvc-works/ws-edn.calcit` to stable tag `0.0.22`, exposing generation-safe lifecycle, bounded reconnect, and heartbeat timeout to Calcium consumers.
- Keep the remaining stable dependencies unchanged so downstream strict graphs do not mix old and new lifecycle implementations.
