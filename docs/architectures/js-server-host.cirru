{}
  :schema-version 1
  :feature 'js-server-host
  :doc "|把 Cumulo Reel 的 server 宿主边界迁到 Node JS，保持 Number session ID、原始 Cirru EDN 消息、断线语义和本地日期备份命名。"
  :roots $ #{} 'cumulo-reel.app.server/run-server!
  :definitions $ {}
    'cumulo-reel.app.server/run-server! $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {}
        :args $ [] 'Number
        :return 'ws-edn.server/NodeWebSocketServerHost
        :features $ #{} :js-ffi
    'cumulo-reel.app.server/get-backup-path! $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {}
        :args $ []
        :return 'String
    'cumulo-reel.app.server/persist-db! $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {}
        :args $ []
        :return 'Unit
    'cumulo-reel.app.server/main! $ {} (:mode :external) (:kind :fn)
      :schema $ :: 'Fn $ {}
        :args $ []
        :return 'Unit
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-ws/SocketEvent $ {}
      :mode :ensure
      :kind :data
      :doc "|适配器向业务层报告的连接、原始文本消息、断线和二进制通知。"
      :schema $ :: 'Enum
      :code $ quote $ defenum SocketEvent (:connect 'Number) (:message 'Number 'String) (:disconnect 'Number) (:blob 'Number)
    'cumulo-reel.app.server-ws/serve! $ {}
      :mode :ensure
      :kind :fn
      :doc "|启动 Node WebSocket server，并把宿主事件转为保持原有 SID 语义的 SocketEvent。"
      :params $ [] 'port 'on-event
      :schema $ :: 'Fn $ {}
        :args $ [] 'Number $ :: 'Fn $ {}
          :args $ [] 'cumulo-reel.app.server-ws/SocketEvent
          :return 'Unit
        :return 'ws-edn.server/NodeWebSocketServerHost
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-ws/send! $ {}
      :mode :ensure
      :kind :fn
      :doc "|按 Number session ID 发送原始 Cirru EDN 文本。"
      :params $ [] 'sid 'message
      :schema $ :: 'Fn $ {}
        :args $ [] 'Number 'String
        :return 'Unit
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-ws/close-session! $ {}
      :mode :ensure
      :kind :fn
      :doc "|连接关闭或错误只通知业务层一次断线。"
      :params $ [] 'sid 'on-event
      :schema $ :: 'Fn $ {}
        :args $ [] 'Number $ :: 'Fn $ {}
          :args $ [] 'cumulo-reel.app.server-ws/SocketEvent
          :return 'Unit
        :return 'Unit
    'cumulo-reel.app.server-ws/each! $ {}
      :mode :ensure
      :kind :fn
      :doc "|只遍历当前仍连接的 Number session ID。"
      :params $ [] 'handler
      :schema $ :: 'Fn $ {}
        :args $ [] $ :: 'Fn $ {}
          :args $ [] 'Number
          :return 'Unit
        :return 'Unit
    'cumulo-reel.app.server-host/LocalDateHost $ {}
      :mode :ensure
      :kind :data
      :doc "|仅暴露备份命名所需的宿主本地月、日读取。"
      :schema $ :: 'Trait
      :code $ quote $ deftrait LocalDateHost
        .get-month $ :: 'Fn $ {}
          :args $ [] 'cumulo-reel.app.server-host/LocalDateHost
          :return 'Number
        .get-date $ :: 'Fn $ {}
          :args $ [] 'cumulo-reel.app.server-host/LocalDateHost
          :return 'Number
    'cumulo-reel.app.server-host/NodeProcessHost $ {}
      :mode :ensure
      :kind :data
      :doc "|仅用于订阅 Node 的 SIGINT 信号。"
      :schema $ :: 'Trait
      :code $ quote $ deftrait NodeProcessHost
        .on $ :: 'Fn $ {}
          :args $ [] 'cumulo-reel.app.server-host/NodeProcessHost 'String $ :: 'Fn $ {}
            :args $ []
            :return 'Unit
          :return 'cumulo-reel.app.server-host/NodeProcessHost
    'cumulo-reel.app.server-host/local-month-day! $ {}
      :mode :ensure
      :kind :fn
      :doc "|读取 Node 宿主本地时区的月份与日期。"
      :params $ []
      :schema $ :: 'Fn $ {}
        :args $ []
        :return $ :: 'Map 'Tag 'Number
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-host/check-write-text! $ {}
      :mode :ensure
      :kind :fn
      :doc "|内容未变时跳过写入，按需建立一级备份目录。"
      :params $ [] 'path 'content
      :schema $ :: 'Fn $ {}
        :args $ [] 'String 'String
        :return 'Unit
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-host/ensure-directory! $ {}
      :mode :ensure
      :kind :fn
      :doc "|递归建立缺少的父目录，避免备份月份目录不存在时写入失败。"
      :params $ [] 'directory
      :schema $ :: 'Fn $ {}
        :args $ [] 'String
        :return 'Unit
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-host/every! $ {}
      :mode :ensure
      :kind :fn
      :doc "|由 Node 宿主重复调度 Unit 回调。"
      :params $ [] 'delay 'callback
      :schema $ :: 'Fn $ {}
        :args $ [] 'Number $ :: 'Fn $ {}
          :args $ []
          :return 'Unit
        :return 'Unit
        :features $ #{} :js-ffi
    'cumulo-reel.app.server-host/on-interrupt! $ {}
      :mode :ensure
      :kind :fn
      :doc "|将 SIGINT 交给业务退出回调，而不依赖 native CLI 注入。"
      :params $ [] 'callback
      :schema $ :: 'Fn $ {}
        :args $ [] $ :: 'Fn $ {}
          :args $ []
          :return 'Unit
        :return 'Unit
        :features $ #{} :js-ffi
  :edges $ #{}
    :: :call 'cumulo-reel.app.server/run-server! 'cumulo-reel.app.server-ws/serve!
    :: :type 'cumulo-reel.app.server-ws/serve! 'cumulo-reel.app.server-ws/SocketEvent
    :: :call 'cumulo-reel.app.server-ws/serve! 'cumulo-reel.app.server-ws/close-session!
    :: :call 'cumulo-reel.app.server/get-backup-path! 'cumulo-reel.app.server-host/local-month-day!
    :: :call 'cumulo-reel.app.server/persist-db! 'cumulo-reel.app.server-host/check-write-text!
    :: :call 'cumulo-reel.app.server-host/check-write-text! 'cumulo-reel.app.server-host/ensure-directory!
    :: :call 'cumulo-reel.app.server/main! 'cumulo-reel.app.server-host/on-interrupt!
    :: :type 'cumulo-reel.app.server-host/on-interrupt! 'cumulo-reel.app.server-host/NodeProcessHost
