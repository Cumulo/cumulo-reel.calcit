
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |cumulo-reel
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'cumulo-reel.app.client/main!) (:mode :native) (:reload-fn 'cumulo-reel.app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |cumulo-reel.schema/Op
    :server $ {} (:description |) (:init-fn 'cumulo-reel.app.server/main!) (:mode :native) (:reload-fn 'cumulo-reel.app.server/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |recollect/ |ws-edn.calcit/ |cumulo-util.calcit/ |calcit.std/ |calcit-wss/
      :type-slots $ {} $ :dispatch-op |cumulo-reel.schema/Op
  :files $ {}
    'cumulo-reel.app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *states ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store nil
          :examples $ []
          :schema $ :: 'Ref $ :: 'JsNullish 'cumulo-reel.schema/ClientStore
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            ws-connect!
              str |ws://
                :hostname $ browser/location-snapshot
                , |: $ :port config/site
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *store nil) (shared/console-error! "|Lost connection!")
                :on-data $ fn (data)
                  case (&map:get data :kind)
                    :patch $ let
                        changes $ assert-type (&map:get data :data) (:: 'List 'recollect.schema/change-op)
                      shared/console-log! $ str |Changes changes
                      reset! *store $ assert-type (patch-twig @*store changes) (:: 'JsNullish 'cumulo-reel.schema/ClientStore)
                    (&map:get data :kind) (println "|unknown kind:" data)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'ws-edn.client/WsClient)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data)
            let
                data $ option:unwrap-or op-data nil
              println |Dispatch op data
              if (list? op)
                recur (:: :states op data) (%none)
                if (tag? op)
                  recur (:: op data) (%none)
                  match op
                    (:states cursor s)
                      reset! *states $ assert-type (update-states @*states cursor s) (:: 'Map 'Tag 'Dynamic)
                    (:effect/connect) (connect!)
                    _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic $ :: 'Option 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app! render!)
            add-watch *states :changes $ fn (states prev) (render-app! render!)
            browser/add-event-listener! |visibilitychange $ fn (event)
              when
                and (js-nullish? @*store) (page-visible?)
                connect!
              , &unit
            println "|App started!"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!)
            add-watch *store :changes $ fn (store prev) (render-app! render!)
            add-watch *states :changes $ fn (states prev) (render-app! render!)
            render-app! render!
            println "|Code updated."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (renderer)
            renderer mount-target (comp-container @*states @*store)
              fn (op)
                dispatch! op $ %none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic 'respo.schema/Component $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            match
              browser/storage-get $ :storage-key config/site
              (:some raw)
                match
                  try-parse-cirru-edn-as raw $ :: 'List 'String
                  (:ok pair)
                    if
                      = 2 $ count pair
                      do (println "|Found storage.")
                        dispatch!
                          :: :user/log-in (&list:nth pair 0) (&list:nth pair 1)
                          %none
                      eprintln "|Invalid stored login pair"
                  (:err error) (eprintln "|Invalid stored login:" error)
              (:none) (println "|Found no storage.")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def ssr?
            option:some? $ browser/query-selector |meta.respo-ssr
          :examples $ []
          :schema $ :: 'Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.client
          :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] respo.cursor :refer $ [] update-states
            [] cumulo-reel.app.comp.container :refer $ [] comp-container
            [] cljs.reader :refer $ [] read-string
            [] cumulo-reel.schema :as schema
            [] cumulo-reel.app.config :as config
            [] ws-edn.client :refer $ [] ws-connect! ws-send!
            [] recollect.patch :refer $ [] patch-twig
            cumulo-util.activity :refer $ page-visible?
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'cumulo-reel.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            if (js-nullish? store) (comp-offline)
              let
                  store-typed $ assert-type store 'cumulo-reel.schema/ClientStore
                  state $ &map:get
                    either states $ {}
                    , :data
                  session store-typed.:session
                  router store-typed.:router
                  router-data router.:data
                div
                  {} $ :class-name $ str-spaced css/global css/fullscreen css/column
                  comp-navigation store-typed.:logged-in? store-typed.:count
                  if store-typed.:logged-in?
                    case-default router.:name
                      <> $ turn-string router.:name
                      :home $ <> |Home
                      :profile $ comp-profile (assert-type store-typed.:user 'cumulo-reel.schema/ClientUser) router.:data
                    comp-login $ >>
                      either states $ {}
                      , :login
                  comp-status-color store-typed.:color
                  comp-messages (session.:messages) ({})
                    fn (info d!)
                      d! $ :: :session/remove-message $ assert-type (&map:get info :id) 'String
                  when config/dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  when config/dev? $ comp-reel store-typed.:reel-length $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'JsNullish 'cumulo-reel.schema/ClientStore)
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge-styles ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ :theme config/site
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    d! $ :: :effect/connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} (:class-name css-status-color)
              :style $ let
                  size 24
                {} (:width size) (:height size) (:background-color color)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'css-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-status-color
            {} $ |$0 $ {} (:position :absolute) (:bottom 60) (:left 8) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'String
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> div span >> button
            respo.css :refer $ defstyle
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            cumulo-reel.app.comp.navigation :refer $ comp-navigation
            cumulo-reel.app.comp.profile :refer $ comp-profile
            cumulo-reel.app.comp.login :refer $ comp-login
            cumulo-reel.comp.reel :refer $ comp-reel
            cumulo-reel.schema :as schema
            cumulo-reel.app.config :as config
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.style :refer $ merge-styles
    'cumulo-reel.app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ &map:get states :cursor
                state $ assert-type
                  either (&map:get states :data) initial-state
                  , 'cumulo-reel.app.comp.login/LoginState
              div
                {} $ :style $ style/merge-styles ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username $ assert-type (&map:get e :value) 'String
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password $ assert-type (&map:get e :value) 'String
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ style/merge-styles style/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ style/merge-styles style/link
                      :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            %{} LoginState (:username |) (:password |)
          :examples $ []
          :schema $ :: 'cumulo-reel.app.comp.login/LoginState
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! $ if signup? (:: :user/sign-up username password) (:: :user/log-in username password)
              browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String 'String 'Bool
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.comp.login
          :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] cumulo-reel.schema :as schema
            [] cumulo-reel.style :as style
            [] cumulo-reel.app.config :as config
            js-ffi.browser :as browser
    'cumulo-reel.app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :class-name $ str-spaced css/row-center css-nav
              div
                {}
                  :on-click $ fn (e d!)
                    d! $ :: :router/change :home
                  :style $ {} $ :cursor :pointer
                <> (:title config/site) nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! $ :: :router/change :profile
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ str count-members
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool 'Number
        'css-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav
            {} $ |$0 $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
              :border-bottom $ str "|1px solid " $ hsl 0 0 0 0.1
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.comp.navigation
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> span div
            respo.css :refer $ defstyle
            cumulo-reel.app.config :as config
    'cumulo-reel.app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} (:class-name css/flex)
                :style $ {} $ :padding 16
              div
                {} (:class-name css/font-fancy)
                  :style $ {} (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ :name user
              =< nil 16
              div
                {} $ :class-name css/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :class-name css/row
                  map (&map:to-list members)
                    fn (pair)
                      let[] (k username) pair $ [] k $ div
                        {} $ :class-name css-member-label
                        <> username
              =< nil 48
              div ({})
                button
                  {} (:class-name css/button)
                    :on-click $ fn (e d!)
                      browser/location-replace! $ str
                        :origin $ browser/location-snapshot
                        , |?time= $ shared/now-ms
                      , &unit
                  <> |Refresh
                =< 8 nil
                button
                  {} (:class-name css/button)
                    :style $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      dispatch! $ :: :user/log-out
                      browser/storage-remove! $ :storage-key config/site
                      , &unit
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'cumulo-reel.schema/ClientUser $ :: 'Map 'Number (:: 'JsNullish 'String)
        'css-member-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-member-label
            {} $ |$0 $ {} (:padding "|0 8px")
              :border $ str "|1px solid " $ hsl 0 0 80
              :border-radius |16px
              :margin "|0 4px"
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.comp.profile
          :require
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            cumulo-reel.schema :as schema
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            cumulo-reel.app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'cumulo-reel.app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            %{} cumulo-reel.schema/SiteConfig (:port 5021) (:title |Cumulo) (:icon |http://cdn.tiye.me/logo/cumulo.png) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/cumulo-reel/) (:theme |#eeeeff) (:storage-key |reel-storage) (:storage-file |storage.cirru)
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.config
          :require
            cumulo-reel.schema :refer $ SiteConfig
            [] cumulo-util.core :refer $ [] get-env!
    'cumulo-reel.app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'cumulo-reel.schema/ClientStore
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                assert-type
                  parse-cirru-edn (read-file storage-file)
                    {} (:Database schema/database) (:Session schema/session) (:User schema/user) (:Router schema/router)
                  'cumulo-reel.schema/Database
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.schema/Database
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ generate-id!
                op-time $ -> (get-time!) get-timestamp
              if config/dev? $ println |Dispatch! (str op) sid
              match op
                (:effect/persist) (persist-db!)
                _ $ reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'cumulo-reel.schema/Op 'Number
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ &map:get now :month
                str (&map:get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                p? $ get-env |port
                port $ if (option:some? p?)
                  parse-float $ option:unwrap-or p? |
                  :port config/site
              run-server! port
              println $ str "|Server started on port:" port
            do (; "|init it before doing multi-threading") (identity @*reader-reel)
            set-interval 200 $ fn () $ render-loop!
            set-interval 600000 $ fn () $ persist-db!
            on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ []
            :features $ #{} :js-ffi
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                reel $ assert-type @*reel 'cumulo-reel.core/ReelState
                file-content $ format-cirru-edn $ assoc (assert-type reel.:db 'cumulo-reel.schema/Database) :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated.") (clear-twig-caches!)
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data) (println |Data data)
                match data
                  (:connect sid)
                    do
                      dispatch! (:: :session/connect) sid
                      println "|New client."
                  (:message sid msg)
                    match (try-parse-cirru-edn-as msg 'cumulo-reel.schema/Op)
                      (:ok action) (dispatch! action sid)
                      (:err error) (eprintln "|Invalid client action:" error)
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! (:: :session/disconnect) sid
                  (:blob sid _) (eprintln "|Unexpected binary message from:" sid)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ [] 'Number
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel) (begin-twig-frame!)
            wss-each! $ fn (sid)
              let
                  db $ assert-type reel.:db 'cumulo-reel.schema/Database
                  records reel.:records
                  session $ assert-type
                    match (get db.:sessions sid)
                      (:some found) found
                      (:none) schema/session
                    , 'cumulo-reel.schema/Session
                  old-store $ match (get @*client-caches sid)
                    (:some cached) cached
                    (:none) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                if
                  not $ empty? changes
                  do
                    wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            finish-twig-frame!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'cumulo-reel.core/ReelState
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.server
          :require (cumulo-reel.schema :as schema)
            cumulo-reel.app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            cumulo-reel.app.config :as config
            cumulo-reel.app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            cumulo-reel.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ get-time! get-timestamp extract-time
            calcit.std.path :refer $ join-path
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
    'cumulo-reel.app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            assert-type
              let
                  logged-in? $ js-present? session.:user-id
                  router session.:router
                  router-name router.:name
                  pages db.:pages
                  sessions db.:sessions
                  users db.:users
                  user-id $ if logged-in? (assert-type session.:user-id 'String) |guest
                  user $ assert-type
                    match (get users user-id)
                      (:some found) found
                      (:none) schema/user
                    , 'cumulo-reel.schema/User
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                    :router $ if logged-in?
                      struct-with router $ :data $ case router-name (:home pages)
                        :profile $ memo-twig-by2 :members twig-members sessions users
                        router-name $ {}
                      , router
                    :count $ count sessions
                    :color $ rand-hex-color!
                merge-dynamic base-data $ if logged-in?
                  {} $ :user $ memo-twig-by1 user-id twig-user user
                  , nil
              , 'cumulo-reel.schema/ClientStore
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/ClientStore)
            :args $ [] 'cumulo-reel.schema/Database 'cumulo-reel.schema/Session $ :: 'List (:: 'List 'Dynamic)
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            -> sessions to-pairs
              map $ fn (pair)
                let[] (sid session) pair $ [] sid $ if (js-present? session.:user-id)
                  match
                    get users $ assert-type session.:user-id 'String
                    (:some user) user.:name
                    (:none) nil
                  , nil
              &set:to-list
              pairs-map
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Number 'cumulo-reel.schema/Session) (:: 'Map 'String 'cumulo-reel.schema/User)
            :return $ :: 'Map 'Number $ :: 'JsNullish 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.twig.container
          :require
            cumulo-reel.app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
            recollect.memo :refer $ memo-twig-by1 memo-twig-by2
            cumulo-reel.schema :as schema
    'cumulo-reel.app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            %{} schema/ClientUser
              :name $ :name user
              :id $ :id user
              :nickname $ :nickname user
              :avatar $ :avatar user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/ClientUser)
            :args $ [] 'cumulo-reel.schema/User
          :tests $ [] $ %{} 'TestEntry (:name |omits-password)
            :code $ quote $ let
                user $ struct-with schema/user (:name |Ada) (:id |u1) (:nickname |Ada) (:password |secret)
                client-user $ twig-user user
              assert=
                %{} schema/ClientUser (:name |Ada) (:id |u1) (:nickname |Ada) (:avatar nil)
                , client-user
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.twig.user
          :require $ cumulo-reel.schema :as schema
    'cumulo-reel.app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db sid op-id op-time)
              (:session/disconnect) (session/disconnect db sid op-id op-time)
              (:session/remove-message op-data) (session/remove-message db op-data sid op-id op-time)
              (:user/log-in username password) (user/log-in db username password sid op-id op-time)
              (:user/sign-up username password) (user/sign-up db username password sid op-id op-time)
              (:user/log-out) (user/log-out db sid op-id op-time)
              (:router/change data) (router/change db data sid op-id op-time)
              _ $ do (eprintln "|Unknown op" op) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'cumulo-reel.schema/Op 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.updater
          :require ([] cumulo-reel.app.updater.session :as session) ([] cumulo-reel.app.updater.user :as user) ([] cumulo-reel.app.updater.router :as router) ([] cumulo-reel.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
    'cumulo-reel.app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db route-name sid op-id op-time)
            let
                session $ assert-type
                  match (get db.:sessions sid)
                    (:some found) found
                    (:none) schema/session
                  , 'cumulo-reel.schema/Session
                next-session $ struct-with session $ :router
                  struct-with schema/router $ :name route-name
              struct-with db $ :sessions $ assoc db.:sessions sid next-session
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'Tag 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.updater.router
          :require $ cumulo-reel.schema :as schema
    'cumulo-reel.app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            struct-with db $ :sessions $ assoc db.:sessions sid
              struct-with schema/session $ :id sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'Number 'String 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            struct-with db $ :sessions $ dissoc db.:sessions sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'Number 'String 'Number
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db message-id sid op-id op-time)
            let
                session $ assert-type
                  match (get db.:sessions sid)
                    (:some found) found
                    (:none) schema/session
                  , 'cumulo-reel.schema/Session
                next-session $ struct-with session $ :messages (dissoc session.:messages message-id)
              struct-with db $ :sessions $ assoc db.:sessions sid next-session
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'String 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.updater.session
          :require $ [] cumulo-reel.schema :as schema
    'cumulo-reel.app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db username password sid op-id op-time)
            let
                maybe-user $ find
                  &set:to-list $ vals db.:users
                  fn (user)
                    hint-fn $ {}
                      :args $ [] 'cumulo-reel.schema/User
                      :return 'Bool
                    = username user.:name
                session $ assert-type
                  match (get db.:sessions sid)
                    (:some found) found
                    (:none) schema/session
                  , 'cumulo-reel.schema/Session
                next-session $ match maybe-user
                  (:some user)
                    if
                      = (md5 password) user.:password
                      struct-with session $ :user-id user.:id
                      struct-with session $ :messages $ assoc session.:messages op-id
                        %{} schema/Message (:id op-id)
                          :text $ str "|Wrong password for " username
                  (:none)
                    struct-with session $ :messages $ assoc session.:messages op-id
                      %{} schema/Message (:id op-id)
                        :text $ str "|No user named: " username
              struct-with db $ :sessions $ assoc db.:sessions sid next-session
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'String 'String 'Number 'String 'Number
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid op-id op-time)
            let
                session $ assert-type
                  match (get db.:sessions sid)
                    (:some found) found
                    (:none) schema/session
                  , 'cumulo-reel.schema/Session
                next-session $ struct-with session $ :user-id nil
              struct-with db $ :sessions $ assoc db.:sessions sid next-session
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'Number 'String 'Number
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db username password sid op-id op-time)
            let
                maybe-user $ find
                  &set:to-list $ vals db.:users
                  fn (user)
                    hint-fn $ {}
                      :args $ [] 'cumulo-reel.schema/User
                      :return 'Bool
                    = username user.:name
                session $ assert-type
                  match (get db.:sessions sid)
                    (:some found) found
                    (:none) schema/session
                  , 'cumulo-reel.schema/Session
              if (option:some? maybe-user)
                let
                    next-session $ struct-with session $ :messages
                      assoc session.:messages op-id $ %{} schema/Message (:id op-id)
                        :text $ str "|Name is taken: " username
                  struct-with db $ :sessions $ assoc db.:sessions sid next-session
                let
                    next-session $ struct-with session $ :user-id op-id
                    next-user $ struct-with schema/user (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
                  struct-with db
                    :sessions $ assoc db.:sessions sid next-session
                    :users $ assoc db.:users op-id next-user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'String 'String 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.updater.user
          :require
            calcit.std.hash :refer $ md5
            cumulo-reel.schema :as schema
    'cumulo-reel.comp.reel $ %{} 'FileEntry
      :defs $ {}
        'comp-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-reel (size addional-styles)
            div
              {} (:class-name css-reel) (:style addional-styles)
              <> (str |Length: size) nil
              =< 8 nil
              span $ {} (:inner-text |Reset) (:class-name css-click)
                :on-click $ fn (e d!)
                  d! $ :: :reel/reset
              =< 8 nil
              span $ {} (:inner-text |Merge) (:class-name css-click)
                :on-click $ fn (e d!)
                  d! $ :: :reel/merge
              =< 8 nil
              span $ {} (:inner-text |Persist) (:class-name css-click)
                :on-click $ fn (e d!)
                  d! $ :: :effect/persist
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Number $ :: 'Map 'Tag 'Dynamic
        'css-click $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-click
            {} $ |$0 $ {} (:cursor :pointer)
              :color $ hsl 200 80 80
              :font-size :12
              :text-decoration :underline
          :examples $ []
          :schema $ :: 'String
        'css-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-reel
            {} $ |$0 $ {} (:padding 8) (:position :absolute) (:bottom 8) (:right 8) (:font-size 12)
              :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.comp.reel
          :require
            respo.util.format :refer $ hsl
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> span button div
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
    'cumulo-reel.core $ %{} 'FileEntry
      :defs $ {}
        'ReelState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ReelState (:base 'Dynamic) (:db 'Dynamic)
            :records $ :: 'List $ :: 'List 'Dynamic
            :merged? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn play-records (db records updater)
            if (&list:empty? records) db $ let-sugar
                  [] op sid op-id op-time
                  &list:nth records 0
                typed-op $ assert-type op 'Op
                typed-sid $ assert-type sid 'Sid
                typed-op-id $ assert-type op-id 'OpId
                typed-op-time $ assert-type op-time 'Number
                next-db $ updater db typed-op typed-sid typed-op-id typed-op-time
              recur next-db (rest records) updater
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Db)
            :args $ [] 'Db
              :: 'List $ :: 'List 'Dynamic
              :: 'Fn $ {} (:return 'Db)
                :args $ [] 'Db 'Op 'Sid 'OpId 'Number
            :generics $ [] 'Db 'Op 'Sid 'OpId
        'reel-reducer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reel-reducer (reel updater op sid op-id op-time dev?)
            let
                tag-name $ assert-type
                  if (enum? op) (&enum:nth op 0) :unknown
                  , 'Tag
              if
                starts-with? (str tag-name) |:reel/
                if (= tag-name :reel/reset)
                  ReelState :base (:base reel) :db (:base reel) :records ([]) :merged? $ :merged? reel
                  if (= tag-name :reel/merge)
                    ReelState :base (:db reel) :db (:db reel) :records ([]) :merged? true
                    do (println "|Unknown op:" op) reel
                let
                    msg-pack $ [] op sid op-id op-time
                  -> reel
                    assoc :records $ if dev?
                      conj (:records reel) msg-pack
                      :records reel
                    assoc :db $ updater
                      assert-type (:db reel) 'Db
                      , op sid op-id op-time
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.core/ReelState)
            :args $ [] 'cumulo-reel.core/ReelState
              :: 'Fn $ {} (:return 'Db)
                :args $ [] 'Db 'Op 'Sid 'OpId 'Number
              , 'Op 'Sid 'OpId 'Number 'Bool
            :generics $ [] 'Db 'Op 'Sid 'OpId
          :tests $ [] $ %{} 'TestEntry (:name |resets-from-base)
            :code $ quote $ let
                reel $ ReelState :base 1 :db 2 :records ([]) :merged? false
                updater $ fn (db op sid op-id op-time)
                  hint-fn $ {} (:return 'Number)
                    :args $ [] 'Number 'cumulo-reel.schema/Op 'String 'String 'Number
                  , db
                result $ reel-reducer reel updater
                  assert-type (:: :reel/reset) 'cumulo-reel.schema/Op
                  , |s |o 0 false
              assert=
                ReelState :base 1 :db 1 :records ([]) :merged? false
                , result
        'reel-schema $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def reel-schema
            %{} ReelState (:base nil) (:db nil)
              :records $ []
              :merged? false
          :examples $ []
          :schema $ :: 'cumulo-reel.core/ReelState
        'refresh-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh-reel (reel base updater)
            let
                next-base $ if reel.:merged? (assert-type reel.:base 'Db) base
                next-db $ play-records next-base reel.:records updater
              struct-with reel (:base next-base) (:db next-db)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.core/ReelState)
            :args $ [] 'cumulo-reel.core/ReelState 'Db $ :: 'Fn
              {} (:return 'Db)
                :args $ [] 'Db 'Op 'Sid 'OpId 'Number
            :generics $ [] 'Db 'Op 'Sid 'OpId
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.core
    'cumulo-reel.schema $ %{} 'FileEntry
      :defs $ {}
        'ClientStore $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientStore (:session 'Session) (:router 'Router) (:logged-in? 'Bool) (:color 'String) (:count 'Number) (:reel-length 'Number)
            :name $ :: 'JsNullish 'String
            :user $ :: 'JsNullish 'ClientUser
          :examples $ []
          :schema $ :: 'StructDef
        'ClientUser $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientUser (:name 'String) (:id 'String) (:nickname 'String)
            :avatar $ :: 'JsNullish 'String
          :examples $ []
          :schema $ :: 'StructDef
        'Database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Database
            :sessions $ :: 'Map 'Number 'Session
            :users $ :: 'Map 'String 'User
            :pages $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:id 'String) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:session/connect) (:session/disconnect) (:session/remove-message 'String) (:user/log-in 'String 'String) (:user/sign-up 'String 'String) (:user/log-out) (:router/change 'Tag) (:effect/persist) (:effect/ping) (:effect/pong) (:effect/connect) (:reel/reset) (:reel/merge)
          :examples $ []
          :schema $ :: 'Enum
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name 'Tag) (:title 'String) (:data 'Dynamic)
            :router $ :: 'JsNullish 'Router
          :examples $ []
          :schema $ :: 'StructDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session
            :user-id $ :: 'JsNullish 'String
            :id $ :: 'JsNullish 'Number
            :nickname $ :: 'JsNullish 'String
            :router 'Router
            :messages $ :: 'Map 'String 'Message
          :examples $ []
          :schema $ :: 'StructDef
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:port 'Number) (:title 'String) (:icon 'String) (:dev-ui 'String) (:release-ui 'String) (:cdn-url 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:name 'String) (:id 'String) (:nickname 'String)
            :avatar $ :: 'JsNullish 'String
            :password 'String
          :examples $ []
          :schema $ :: 'StructDef
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            %{} Database
              :sessions $ {}
              :users $ {}
              :pages $ {}
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Database
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            %{} Router (:name :home) (:title |)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Router
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            %{} Session (:user-id nil) (:id nil) (:nickname nil)
              :router $ %{} Router (:name :home) (:title |) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Session
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            %{} User (:name |) (:id |) (:nickname |) (:avatar nil) (:password |)
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/User
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.schema
    'cumulo-reel.style $ %{} 'FileEntry
      :defs $ {}
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'merge-styles $ %{} 'CodeEntry
          :doc "|Combines heterogeneous Respo style maps at the rendering boundary."
          :code $ quote $ defn merge-styles (x0 & xs) (reduce xs x0 &merge)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :rest $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.style
          :require
            [] respo.util.format :refer $ [] hsl
            [] respo-ui.core :as ui
