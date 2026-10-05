# 空 Reel 模板的真实类型与静态检查限制

## 合同修正

保留远端 UI alpha.4 升级及 decoder/记录 callback 收敛。公开常量 `reel-schema`
仍是原来的空 Reel：base/db 为 nil、records 为空、merged? 为 false。
声明由 `ReelState<Dynamic>` 改为与实际值一致的 `ReelState<Nil>`。
没有删除导出、改变字段、运行时值、测试或预算，没有把开放记录内容声明为固定业务类型。

业务数据库应构造 `%{} ReelState` 并提供具体 base/db，而不是把空模板声明为
`ReelState<Db>`。已有下游 Calcium 按具体 Db 构造 ReelState；本仓库代码没有使用
空模板初始化业务状态。外部旧调用方仍需核对这项声明变化。

## 验证

两个默认严格入口通过，39/39 原生测试和 5/5 Node runtime 回归通过。
Node 回归包含受检 decoder、真实 WebSocket、绑定失败、存储备份和 SIGINT。
原质量门禁从 9 项降到 6 项逐定义回归，unsafeCoerce 保持 4，预算没有提高。
剩余项位于 decode-source 和 refresh-reel 的真实开放输入/历史记录边界。

## 未证明的静态隔离

临时 Snapshot 通过 CLI 增加探针，代码没有入库。声明返回 `ReelState<Nil>` 的
正向调用通过。但固定 CLI `0.29.0-alpha.6` 同样接受以下错误调用：

```cirru.no-check
defn probe-number-reel-consumer (reel)
  + 1 $ :db reel

; schema: Fn(ReelState<Number>) -> Number
defn probe-empty-reel-contract ()
  probe-number-reel-consumer reel-schema
```

真实探针的 Number 参数与返回 schema 由 CLI 显式设置。默认严格 check-only
退出 0；原生运行退出 1，报错 `&+ requires 2 numbers`，收到 Number 与 Nil。
仅把空模板函数声明返回 `ReelState<Number>` 也未被静态检查拒绝。

因此本次声明更准确，并不证明编译器已建立这些泛型实例之间的静态隔离。
质量预算下降也不能代替该负向验收。编译器问题的探针和日志保留在临时目录，
没有声称上游修复或完整类型边界 milestone 已完成。
