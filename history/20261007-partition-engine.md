# 2026-10-07 新增 `cumulo-reel.partition`

把 calcium-workflow 中的分区同步引擎（原 `app.sync.partition`）移入本模块，避免模板项目复制
同一份纯函数代码，也不额外新建模块：本模块已经依赖 recollect 并锁定同一工具链，加一个命名空间
只需要发一个版本。

- key 与视图类型改为泛型（`PartitionState K V`、`PartitionAction K V`、`PartitionSlot V`），
  视图校验改为由调用方传入 `decode-view`；`struct-tree-input` 一并移入。
- 引擎测试改用 String key 和 `Map String String` 视图，10 项，覆盖原有全部场景，另加 decoder 拒绝和
  struct 转换。
- `yarn check-types` 两个入口都加入 `cumulo-reel.partition`。
- 版本 0.0.49。依赖不变，没有新的 `caps --strict` 冲突。
