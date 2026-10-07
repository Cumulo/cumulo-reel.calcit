# 分区同步引擎 `cumulo-reel.partition`

`cumulo-reel.partition` 是纯函数的分区同步引擎，适合“公共热数据 diff/patch、私有数据局部同步、
冷数据走查询回调”的冷热分离架构（参考实现见
[calcium-workflow](https://github.com/Cumulo/calcium-workflow) 的 `docs/hot-cold-sync-plan.md`）。
它不依赖传输、不持有可变状态；服务端 registry、WebSocket 发送和 ACK 消息解析由应用负责。

分区 key 和视图类型都是泛型：`PartitionState K V`、`PartitionAction K V`、`PartitionSlot V`。
应用用自己的 nominal 类型实例化，例如 `:: 'cumulo-reel.partition/PartitionState 'app.schema/PartitionKey 'app.schema/PartitionView`。

## 服务端

| 函数 | 作用 |
|------|------|
| `new-partition key epoch view` | 新建分区，revision 从 1 开始。epoch 由应用分配，分区重建时必须换新值 |
| `advance-partition state view budget max-history max-ops` | 和保留视图做一次有预算的 diff。结果是 `:unchanged`（revision 不变）、`:delta`（追加到保留历史）或 `:reset`（超出预算/操作数，清空历史，订阅者回退 snapshot） |
| `plan-partition-send state progress-option` | 单个订阅者下一步：`:idle`、`:snapshot` 或从已确认 revision 开始的连续 `:deltas` |
| `connection-actions partitions progress desired` | 单个连接的全部动作：撤权的分区 `:drop`，授权的分区 snapshot / delta 链 |
| `mark-partition-sent` / `release-partition-send` | 只有传输层接受的发送才记录为 pending；被拒绝（背压）的发送释放后从同一基线重试 |
| `ack-partition-progress progress epoch revision` | 只有 epoch 和 revision 都匹配 pending 发送的 ACK 才推进基线；重复、乱序、过期 ACK 忽略 |
| `delta-chain history from to` | 取保留历史中完整的连续链，链断了返回 `:none` |
| `trim-history` | 只保留最新的若干 delta |

同一 revision 的 delta 对所有订阅者相同：diff 次数只随脏分区数增长，与连接数无关，
编码后的 payload 也可以在应用层按 revision 复用。

## 客户端

`apply-partition-deltas slot epoch deltas decode-view` 原子地应用 delta 链：epoch 与每个 base
都必须匹配，最终视图要通过应用传入的 `decode-view : Dynamic → Result V String` 校验，
任何一步失败返回 `:err`，缓存保持不变（应用此时应请求该分区 resync）。

`struct-tree-input` 把 struct（包括 enum payload 中的 struct）转成 map，供
`try-decode-map-as` 按 nominal 类型校验 patch 后的视图：

```cirru
defn decode-partition-view (value)
  try-decode-map-as (cumulo-reel.partition/struct-tree-input value) 'app.schema/PartitionView
```

## 测试

`calcit calcit.cirru test cumulo-reel.partition`（标签 `partition`）覆盖：未变化不升 revision、
多个订阅者复用同一个 delta、操作数溢出 reset、历史裁剪回退 snapshot、epoch 变化、
单 pending 与过期 ACK、delta 链重放收敛、连接动作规划、客户端原子应用与 decoder 拒绝、struct 转换。
