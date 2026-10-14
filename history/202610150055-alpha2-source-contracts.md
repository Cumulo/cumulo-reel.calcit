# alpha.2 的实际源码合同收敛

使用 crates.io 发布的 Calcit 0.30.0-alpha.2，对本项目执行受保护的 CLI 事务。
旧编译器上的局部通过不替代新版本完整 strict 验收。

- 登录状态保留原 nil 初始默认值；实际使用前将 Struct 转为字段 Map，并解码
  LoginState 的 String 字段。输入事件值用真正的 String decoder，不再依赖断言。
- 登录提交、输入和消息删除 callback 按实际生产者补齐 Map/dispatch/Unit 合同。
  消息模块实际传入 Tag key 的信息 Map；使用消息 id 前解码 String。
- 持久化直接读取已声明 Ref<ReelState<Database>>，不通过裸 ReelState 断言抹去泛型。
- session 缺失分支明确引用既有 schema/session，保留原默认行为，避免与局部
  同名绑定混淆；不为其它数据选择业务默认值。
- 分区 drop 规划以 MapEntry 和具类型 accumulator 遍历，保留 K/V 与输出顺序，
  不再把 pair 声明为 Dynamic 再断言 key。
- renderer 参数使用 Respo 的 DomElement 合同；mount 查询复用 Respo 已有的
 类型化查询入口，保留宿主对象身份与未命中的 unwrap 错误，不做应用侧 unsafe。

原 native 附带测试 61/61 通过。新完整 strict 已越过本项目这些边界，目前只剩
已登记的 Calcit #2056：JS-backed path-join 的 proof 检查了未被选中的 Cirru body。
没有修改依赖缓存或给被忽略的 body 加假校验，完整 strict 仍记录为失败。

配对 npm runtime 尚受既有 60 分钟安装隔离期限制。生成 JS、真实浏览器、
Node 业务、完整消费者 PR 和模块发版仍待实际配对验收，不以 native 通过收尾。
