# 成员显示的类型边界

维护者确认：保留未登录 session，缺失用户名显示“访客”；session key
仍为 Number，服务端 wire 投影继续传输原来的 nil/String，不改协议。

客户端使用 `map-entries` 保留 `MapEntry<Number,JsNullish<String>>` 的字段证据，
不再用旧式异构 pair 列表拆值。`member-display-name` 只将缺失用户名转换为
显示文本，已有字符串（包括空字符串）原样保留；不扩大 Dynamic 或增加 unsafe。

使用已发布的 Calcit `0.30.0-alpha.2`，CLI 事务先 dry-run，再使用返回的
scoped revision 应用。profile 三个公开定义严格检查通过；四项附带 native
测试覆盖缺失用户名、已有用户名、空字符串和 Number key 保留。

Unit 是独立语言值，不应当作可缺失 String 的 native 测试输入。JS 宿主
undefined 的显示边界须在实际配对 runtime 安装后验证，不能用 Unit 代替。
当前 npm 60 分钟安装隔离期尚未结束，未宣称生成 JS、浏览器或完整消费者
验收通过；其余登录状态和服务端合同仍需继续修复。
