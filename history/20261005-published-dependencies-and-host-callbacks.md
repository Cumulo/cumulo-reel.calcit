# 发布依赖与真实宿主回调回归

## 发布依赖

使用已发布的 cumulo-util `0.0.24`、ws-edn `0.0.33`、Respo
`0.16.114-alpha.6` 和 JS-FFI `0.2.1-alpha.11`。正式 Calcit / procs
保持 `0.28.0`。通过实际 Caps 下载与 toolchain 校验的九个发布模块
执行本轮回归，不再使用本地开发模块覆盖。

模块/package 版本准备为 `0.0.48`，尚未创建标签。

## Watcher 与 memo

具名 `on-store-change!` 不读取两个参数，声明独立的 Current/Previous 泛型，
保留两个参数、一次 render 和 Unit 返回。两处 add-watch! 复用该回调，
正式 0.28 的 nullable watcher 类型诊断消失。

发布 Recollect `0.0.53` 没有此前调用的 memo handle API。改用其已发布的
`memo-twig-by1` / `memo-twig-by2`，显式传递原 builder 和逻辑 key，
保留 begin/finish frame 生命周期。应用 reload 用 `reset-twig-memo!`
清空应用使用的共享 twig cache。原附属测试名称、tags、身份复用、typed
projection 和 1→2→0→1 缓存计数断言保持不变。

## 服务端真实启动与退出

实际启动 main! 发现环境变量 port 的 `parse-float` 返回 Result，却被直接
传给 WebSocket server。新增 `resolve-server-port`，取出成功的 Number，
拒绝无效文本、负数、越界值、小数、NaN 与 Infinity；允许 0 用于临时端口。
九个附属测试覆盖默认值、正常端口、临时端口及上述拒绝场景。

实际 SIGINT 停机发现 Node listener 传入两个参数，零参数业务退出回调
因此触发 arity 错误。仅用于 SIGINT 的 NodeProcessHost listener 合同改为
String/Number 两参数，宿主适配器忽略它们并以零参数调用业务回调。
业务 on-exit! 保持零参数和原 persist/quit 顺序。

新增 Node 集成测试启动真实服务端 entry，使用 port=0 和隔离数据库，
发送真实 SIGINT，验证退出码 0、无 arity 错误，并检查数据库已持久化。

## 实测

- 正式 0.28 两入口严格检查通过，全部原生测试 33/33。
- 真实生成 JS 的协议回放、WebSocket、端口占用失败、持久化和完整
  entry/SIGINT 回归 5/5。
- 客户端与服务端输出目录独立；Node 24 Vite 生产构建通过。
- 真实浏览器连接、注册、profile/members 投影与退出同步通过，
  无应用脚本错误。后端数据位于独立临时目录，测试服务和页面均已关闭。
- Snapshot 由 CLI guarded transaction 修改，格式与 diff 检查通过。
  没有提交生成 JS、截图或 JSON 输出。

## 剩余门禁

质量门禁仍有 77 项逐定义回归，预算未提高。Caps 仍报告 UI、Respo 和
JS-FFI 的传递版本差异；本仓库继续使用原有非 strict 下载流程并显示这些
警告，不据本轮结果声称其他消费者的严格依赖解析已通过。
发布和完整质量验收仍未完成。

## 开放数据的类型保留

`decode-open` 只把输入原样放入 `Result :ok`，改为
`Fn<Value>(Value) -> Result<Value, String>`，保留实际输入与输出的关系。
Router.data 仍是开放数据，其他外部解码入口的 Dynamic 保持原有合同。
新增两条附属回归验证 Number 返回类型以及包含 nil 和异构 List 的开放
Map 原样保留，并纳入同一 AST 的 native/新生成 JS 协议回放。

原生测试 35/35，两入口严格检查通过，Node 运行回归 5/5。
质量回归从 77 降至 74：schemaDynamic 49→47、unresolved 80→78、
typeNotFull 36→35。预算、unsafeCoerce 及真实外部数据校验未改变。
README 更新为当前发布依赖和验证状态，历史迁移细节保留在 history 中。

## 字段读取器与定义映射

`decode-field` 的 source 使用 `Map<Tag,Value>`，decoder 接收相同的 Value，
返回的 Result 保留独立的 T。实际 Map 存取与 decoder 调用直接证明这一关系，
开放的协议 source 仍绑定为 Dynamic，外部字段的受检 decoder 保持不变。
新增四条附属回归覆盖 Number、nil、字段缺失与 decoder 错误的字段上下文，
并纳入同一 AST 的 native/重新生成 JS 回放。

严格检查负例先接受 String Map 与 String decoder，再把同一调用的 Map 值
改为 Number，确认检查拒绝该调用。此 probe 只由 Calcit CLI 创建于临时
Snapshot，检查后清理，不将错误代码或生成 JSON 入库。

class mapper 的实际值是 change-op 的 Enum 定义，声明改为
`Map<Tag,EnumDef>`。它仍不验证 change-op 的 payload；普通 Enum 实例类型
与定义值不同，不能用 `Map<Tag,Enum>` 代替。

正式两入口严格检查、39/39 原生与 5/5 Node 运行回归通过。
质量回归进一步从 74 降至 68，原预算与 unsafeCoerce 保持不变。

## 标量 decoder 与隔离 CDN 路径

Number/String/Bool/Tag 四个 decoder 只将输入交给 `try-decode-map-as`，
输入合同改为独立 `Input` 泛型，具体 `Result` 返回及受检解码实现不变。
泛型只声明可接收任意输入类型，不表示输入合法；外部协议、nullable 与
历史记录的开放边界保持。没有新增 helper、脚本、测试或放宽 baseline。

最初在正式 0.28 的 e9d2f2b 独立工作树验证。推送前发现远端已更新为
02913ed 的 Respo alpha.7 / Calcit alpha.6，未覆盖它，改在最新 head 用
匹配 CLI 的 guarded transaction 重做相同四项 schema 和 COS 修改。
最新验证使用实际 Caps 发布模块、Calcit/procs `0.29.0-alpha.6`：两入口
严格检查、原 native 39/39、原 Node 回归 5/5、独立 client/server JS、Node24
Vite 隔离 CDN base 构建通过。Node 回归包含同一附属 AST 的 native/JS、
字段 decoder 静态拒绝错配、真实 WebSocket、端口占用、持久化与 SIGINT。
canonical 无修改；本轮没有重复浏览器 UI 验证，不把前一 head 的 UI 结果
冒充当前 head 全量验收。

最新本地质量回归 68→56；schemaDynamic 44→40、typeNotFull 33→29、
unresolved 75→71，unsafeCoerce 仍为 4。整体质量门禁尚未通过。
Caps 的三组版本警告保留，不宣称严格依赖图通过。

COS 预览使用 `pr/<number>/<run-id>/<attempt>/` 并按 PR 分组排队。
生产前缀、dist 范围、draft/fork 不上传策略与内置 verify 保持；本地
CDN 构建不是实际上传验收，PR 继续 draft，未发版或部署服务端。

## 保留原门禁继续收敛源码合同

退役旧计数器的方案尚未获批准，本轮使用另一个以 c075e7b 为基线的工作树。
原 baseline 文件、预算、workflow、package 与生成属性全部保留，未将被拒绝
的 gate 退役变更混入此提交。

逐个查询并审阅实际 AST 后，五个 nullable decoder、八个嵌套/数据源 decoder、
两个 patch 入口的输入改为 Input 泛型。返回的具体 Result、nil 分支、原字段与
payload 检查、完整 patch 验证和失败不发布逻辑均不变，metadata/tests 不变。
数据源的异构 `Map<Tag,Dynamic>` 输出保留，不伪造已验证业务数据。

`play-records` 的 records 改为 `List<List<RecordValue>>`，回调四个参数使用
相同元素类型；Db 输入/输出关系不变。真实异构 List 仍绑定其开放元素类型，
没有改变四项 List wire 格式。应用 `updater-from-record` 的四个输入使用
独立 OpInput/SidInput/IdInput/TimeInput；所有原运行时解码保留。

第一次将这四个输入共用 RecordValue 被原 legacy-connect 回归否定，native
38/39 与明确的 Enum/Number/String 参数诊断记录为失败；随后改为独立泛型，
原断言不改，native 39/39 重新通过。不能为了降低计数忽略这个反例。

精确 Calcit/procs alpha.6 与真实九个发布模块：两入口严格检查、原 native39、
同一协议 AST 的 native/新 JS 与原 Node5、双 JS 目录、Node24 CDN base/Vite
构建通过，browser 公共55/55、node71/71通过，canonical 无变化。
本轮没有重复完整浏览器 UI，没新增脚本、helper、测试或修改 compiler。

原质量门禁仍失败，但逐定义回归由56降为9：schemaDynamic40→16、
typeNotFull29→13、unresolved71→47；unsafeCoerce仍4、codeNil31。
剩余仅 decode-source 的异构 Map 输出、reel-schema 开放兼容模板和
refresh-reel 未验证历史记录回调。三处保持真实开放语义，未用虚假类型
覆盖它们。PR仍draft，完整CI、上游发版和Calcium严格graph仍未完成。

## 接入已发布 UI alpha.4 / Router alpha.5

依赖清单只把 UI alpha.3 更新到已发布 alpha.4，传递 Router 使用 alpha.5。
两份实际发布清单均对齐当前 Calcit/procs alpha.6、Respo alpha.7 与
JS-FFI alpha.13；没有用 main、hash 或未发布源码覆盖。旧 Message、Value、
Recollect、Util/WS 的发布请求冲突仍保留，不声称严格图已通过。

九模块安装/toolchain、两入口严格检查、原native39/39、双JS生成、原Node5/5、
Node24/Vite8.2.2隔离CDNbase构建及canonical/diff检查通过。原Node第一次
因sandbox监听EPERM失败，同一测试获得本机监听权限后全部通过。
源码Snapshot精确保持8c07ac4b071d6ccd6d68d23a46120cf0；原质量门禁仍FAIL9，
预算/CI/脚本完全不变。未运行完整浏览器UI、COS上传、合并或发版。
