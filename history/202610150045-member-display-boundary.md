# 成员显示的类型边界

维护者确认：保留未登录 session，缺失用户名显示“访客”；session key
仍为 Number，服务端 wire 投影继续传输原来的 nil/String，不改协议。

客户端先验证 wire Map 的 Number key，再复用协议的 nil/String 解码器逐项取得
`Option<String>`。`map-entries` 保留 `MapEntry<Number,Option<String>>` 的字段证据，
不再用旧式异构 pair 列表拆值。`member-display-name` 只将 None 转换为
显示文本，已有字符串（包括空字符串）原样保留；不扩大 Dynamic 或增加 unsafe。

使用已发布的 Calcit `0.30.0-alpha.2`，CLI 事务先 dry-run，再使用返回的
scoped revision 应用。profile 附带测试覆盖缺失用户名、已有用户名、空字符串、
Number key 保留、访客与登录成员共存，以及非法 key/用户名拒绝。新的 decoder
拒绝非法值，不删掉访客条目。原生附带测试累计 61/61 通过。

Unit 是独立语言值，不应当作可缺失 String 的 native 测试输入。服务端原 EDN
wire 使用 nil/String，不宣称支持未验证的 JS 宿主 undefined 成员输入。
当前 npm 60 分钟安装隔离期尚未结束，未宣称生成 JS、浏览器或完整消费者
验收通过；其余登录状态和服务端合同仍需继续修复。
