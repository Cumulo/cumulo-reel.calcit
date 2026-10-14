# alpha.2 配对回归与剩余工具链门槛

从 registry 安装 Calcit/procs 0.30.0-alpha.2。npm 发布超过原 60 分钟隔离期后
正常 Yarn 安装成功，再执行 immutable、strict Caps 和工具链验证；未使用年龄
例外、开发模块覆盖、local runtime 链接或未发布 binary 冒充正式配对。

正式模块图：Util 0.0.28、Message 0.0.34、UI 0.7.39、Respo 0.16.120、
JS-FFI 0.2.3、Recollect 0.0.60、WS-EDN 0.0.39，传递 Router 0.8.34 与
Value 0.5.19。strict graph 验证九个正式模块。

原双入口和公开定义检查 browser 103/103、node 124/124 通过；native 附带测试
61/61、原 Node harness 6/6、前后端 JS 与 Vite 构建通过。原 harness 复用
成员定义七项测试 AST，在 native 与新生成 JS 中验证访客/用户名、Number key、
非法 key/name 拒绝；没有新维护 checker 或删除原测试。

真实 IAB 与隔离空存储服务器验证了实际 DOM mount、登录初始状态、Unit dispatch、
真实 WebSocket 访客与已注册成员 profile 显示、退出。成功轮次 error 日志为空，
临时页面、Vite 和服务器均已关闭。第一次测试把 JS undefined 当作 Option 参数
而失败，这是 fixture 错误；改成真正 Option :none 后重放通过，未据此修改应用。

候选编译器越过 JS-backed path-join 诊断后，暴露服务端 dispatch 默认分支返回
reset! 的新 ReelState，而合同为 Unit。仅该分支显式收尾 Unit，无尾 recur、
求值顺序或底层 reset! 返回变更。原 Node 持久化回归新增状态/持久化两分支
返回 Unit 断言，全部通过。再使用已发布 CLI 的旧 preset，预览八个机械 Struct
构造器迁移并带精确 revision 应用；全部原回归重复通过。

Calcit #2066 的未发布候选完整 strict status=passed、diagnostics=[]，包括两入口
验证。正式 alpha.2 仍保留 #2056 的 shadow-body 工具链问题，不能把候选结果
冒充发布版完整 strict。后续须 review、最新 CI、精确 main 及新配对发布后重跑，
消费者 PR/模块发布与父任务退场门槛尚未完成。
