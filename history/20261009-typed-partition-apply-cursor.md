# Partition patch 链的累积类型

Calcium alpha.19 完整 strict 接入 Recollect #75 后，暴露 apply-partition-deltas 将 revision / view 合装 List<Dynamic> 再 assert-type revision Number 的问题。

内部 PartitionApplyCursor 使用闭合 enum：ready(Number, Dynamic) / failed(String)。fold 保留数字 revision 的来源，失败分支立即保留错误，最终成功分支才运行业务 decoder。移除 Result 初值和 revision 的两处 assert-type；外部 PartitionSlot、patch协议和错误文本保持原有合同。

新增 attached 回归：第一条 delta 成功、第二条 base不匹配时不解码、不修改原slot；完整成功链仅解码最终view一次；空链保留 revision/view 并解码一次。Node 回归从 Snapshot 读取原始测试 AST，在独立副本生成全新JS并执行，避免另写一份实现。

本地验证：50项原生测试，browser96 / node113公开定义，client/server JS、Vite构建，6项Node服务运行回归（含新partition回放）通过。原生全量套件仍有已有动态方法告警；未声称整个依赖图无告警或完整strict通过。

Calcium源组合使用Respo22b5edd + #229、Recollect644c739及此源码；完整strict9项诊断降为8项（移除partition累积问题，仍有Std/core）。client44 / server71、全新JS patch和Respo边界通过；隔离存储的真实native WS服务与两个JS客户端验证共享board patch、cold detail/history、私有历史及logout drop，服务测试后已停止。

依赖源码组合尚未发布；正式receipt、完整浏览器UI及milestones最终验收仍未完成。生成JS/JSON和临时Snapshot均不入库。
