
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |cumulo-reel) (:version |0.0.22)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'cumulo-reel.app.client/main!) (:mode :native) (:reload-fn 'cumulo-reel.app.client/reload!)
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/
      :type-slots $ {} (:dispatch-op |cumulo-reel.schema/Op)
    :server $ {} (:description |) (:init-fn 'cumulo-reel.app.server/main!) (:mode :native) (:reload-fn 'cumulo-reel.app.server/reload!)
      :modules $ [] |recollect/ |ws-edn.calcit/ |cumulo-util.calcit/ |calcit.std/ |calcit-wss/
      :type-slots $ {} (:dispatch-op |cumulo-reel.schema/Op)
  :files $ {}
    |cumulo-reel.app.client $ %{} 'FileEntry
      :defs $ {}
        |*states $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |*store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *store $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ ws-connect!
              str |ws:// js/location.hostname |: $ &struct:get config/site :port
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                :on-data $ fn (data)
                  case (&map:get data :kind)
                    :patch $ let
                        changes $ &map:get data :data
                      js/console.log |Changes changes
                      reset! *store $ patch-twig @*store changes
                    (&map:get data :kind) (println "|unknown kind:" data)
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op ? op-data) (println |Dispatch op op-data)
              if (list? op)
                recur $ :: :states op op-data
                if (tag? op)
                  recur $ :: op op-data
                  match op
                    (:states cursor s)
                      reset! *states $ update-states @*states cursor s
                    (:effect/connect) (connect!)
                    _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              if ssr? $ render-app! realize-ssr!
              render-app! render!
              connect!
              add-watch *store :changes $ fn (store prev) (render-app! render!)
              add-watch *states :changes $ fn (states prev) (render-app! render!)
              js/window.addEventListener |visibilitychange $ fn (event)
                when
                  and (nil? @*store) (= |visible js/document.visibilityState)
                  connect!
              println "|App started!"
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .!querySelector (unsafe-coerce js/document JsObject) |.app
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!)
              add-watch *store :changes $ fn (store prev) (render-app! render!)
              add-watch *states :changes $ fn (states prev) (render-app! render!)
              render-app! render!
              println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        |render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! (renderer)
              renderer mount-target (comp-container @*states @*store) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        |simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (&struct:get config/site :storage-key)
              if (js-present? raw)
                let
                    pair $ parse-cirru-edn (unsafe-coerce raw String)
                  do (println "|Found storage.")
                    dispatch! $ :: :user/log-in (nth pair 0) (nth pair 1)
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
        |ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def ssr? $ js-present?
              .!querySelector (unsafe-coerce js/document JsObject) |meta.respo-ssr
          :examples $ []
          :schema $ :: 'Bool
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.client $ :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] respo.cursor :refer $ [] update-states
            [] cumulo-reel.app.comp.container :refer $ [] comp-container
            [] cljs.reader :refer $ [] read-string
            [] cumulo-reel.schema :as schema
            [] cumulo-reel.app.config :as config
            [] ws-edn.client :refer $ [] ws-connect! ws-send!
            [] recollect.patch :refer $ [] patch-twig
    |cumulo-reel.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        |comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              if (nil? store) (comp-offline)
                let
                    store-typed $ unsafe-coerce store 'cumulo-reel.schema/ClientStore
                    state $ &map:get
                      either states $ {}
                      , :data
                    session $ &struct:get store-typed :session
                    router $ &struct:get store-typed :router
                    router-data $ &struct:get router :data
                  div
                    {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                    comp-navigation (&struct:get store-typed :logged-in?) (&struct:get store-typed :count)
                    if (&struct:get store-typed :logged-in?)
                      case-default (&struct:get router :name)
                        <> $ turn-string (&struct:get router :name)
                        :home $ <> |Home
                        :profile $ comp-profile (&struct:get store-typed :user) (&struct:get router :data)
                      comp-login $ >>
                        either states $ {}
                        , :login
                    comp-status-color $ &struct:get store-typed :color
                    comp-messages (&struct:get session :messages) ({})
                      fn (info d!)
                        d! $ :: :session/remove-message info
                    when config/dev? $ comp-inspect |Store store
                      {} (:bottom 0) (:left 0) (:max-width |100%)
                    when config/dev? $ comp-reel (&struct:get store-typed :reel-length) ({})
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic
        |comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style
                merge ui/global ui/fullscreen ui/column-dispersive $ {}
                  :background-color $ :theme config/site
              div $ {}
                :style $ {} (:height 0)
              div $ {}
                :style $ {}
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
          :schema $ :: 'Dynamic
        |comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {} (:class-name css-status-color)
                :style $ let
                    size 24
                  {} (:width size) (:height size) (:background-color color)
          :examples $ []
          :schema $ :: 'Dynamic
        |css-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-status-color $ {}
              |$0 $ {} (:position :absolute) (:bottom 60) (:left 8) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Dynamic
        |style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.comp.container $ :require
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
    |cumulo-reel.app.comp.login $ %{} 'FileEntry
      :defs $ {}
        |LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ &map:get states :cursor
                  state $ unsafe-coerce
                    either (&map:get states :data) initial-state
                    , 'cumulo-reel.app.comp.login/LoginState
                div
                  {} $ :style (merge ui/flex ui/center)
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $ &struct:get state :username
                          :style ui/input
                          :on-input $ fn (e d!)
                            let
                                value $ &map:get e :value
                              d! cursor $ assoc state :username
                                if (option:unwrap-or value |) value |
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $ &struct:get state :password
                          :style ui/input
                          :on-input $ fn (e d!)
                            let
                                value $ &map:get e :value
                              d! cursor $ assoc state :password
                                if (option:unwrap-or value |) value |
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge style/link
                        :on-click $ on-submit (&struct:get state :username) (&struct:get state :password) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge style/link
                        :on-click $ on-submit (&struct:get state :username) (&struct:get state :password) false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
        |initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ %{} LoginState (:username |) (:password |)
          :examples $ []
          :schema $ :: 'cumulo-reel.app.comp.login/LoginState
        |on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! $ if signup? (:: :user/sign-up username password) (:: :user/log-in username password)
                js/localStorage.setItem (&struct:get config/site :storage-key)
                  format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.comp.login $ :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] cumulo-reel.schema :as schema
            [] cumulo-reel.style :as style
            [] cumulo-reel.app.config :as config
    |cumulo-reel.app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        |comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-navigation (logged-in? count-members)
              div
                {} $ :class-name (str-spaced css/row-center css-nav)
                div
                  {}
                    :on-click $ fn (e d!)
                      d! $ :: :router/change
                        {} $ :name :home
                    :style $ {} (:cursor :pointer)
                  <> (&struct:get config/site :title) nil
                div
                  {}
                    :style $ {} (:cursor |pointer)
                    :on-click $ fn (e d!)
                      d! $ :: :router/change
                        {} $ :name :profile
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
        |css-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-nav $ {}
              |$0 $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.comp.navigation $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> span div
            respo.css :refer $ defstyle
            cumulo-reel.app.config :as config
    |cumulo-reel.app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        |comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} (:class-name css/flex)
                  :style $ {} (:padding 16)
                div
                  {} (:class-name css/font-fancy)
                    :style $ {} (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (&struct:get user :name)
                =< nil 16
                div
                  {} $ :class-name css/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :class-name css/row
                    -> members (.to-list)
                      map $ fn (pair)
                        let[] (k username) pair $ [] k
                          div
                            {} $ :class-name css-member-label
                            <> username
                =< nil 48
                div ({})
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        js/location.replace $ str js/location.origin |?time= (.now js/Date)
                    <> |Refresh
                  =< 8 nil
                  button
                    {} (:class-name css/button)
                      :style $ {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch!)
                        dispatch! $ :: :user/log-out
                        js/localStorage.removeItem $ &struct:get config/site :storage-key
                    <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
        |css-member-label $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-member-label $ {}
              |$0 $ {} (:padding "|0 8px")
                :border $ str "|1px solid " (hsl 0 0 80)
                :border-radius |16px
                :margin "|0 4px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.comp.profile $ :require
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            cumulo-reel.schema :as schema
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            cumulo-reel.app.config :as config
    |cumulo-reel.app.config $ %{} 'FileEntry
      :defs $ {}
        |dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        |site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ %{} cumulo-reel.schema/SiteConfig (:port 5021) (:title |Cumulo) (:icon |http://cdn.tiye.me/logo/cumulo.png) (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/cumulo-reel/) (:theme |#eeeeff) (:storage-key |reel-storage) (:storage-file |storage.cirru)
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.config $ :require
            cumulo-reel.schema :refer $ SiteConfig
            [] cumulo-util.core :refer $ [] get-env!
    |cumulo-reel.app.server $ %{} 'FileEntry
      :defs $ {}
        |*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        |*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
          :schema $ :: 'Dynamic
        |*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ merge reel-schema
              {} (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ generate-id!
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println |Dispatch! (str op) sid
                match op
                  (:effect/persist) (persist-db!)
                  _ $ reset! *reel (reel-reducer @*reel updater op sid op-id op-time config/dev?)
          :examples $ []
          :schema $ :: 'Dynamic
        |get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-backup-path! () $ let
                now $ .extract (get-time!)
              join-path calcit-dirname |backups
                str $ &map:get now :month
                str (&map:get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  p? $ get-env |port
                  port $ if (option:some? p?)
                    parse-float $ option:unwrap-or p? |
                    :port config/site
                run-server! port
                println $ str "|Server started on port:" port
              do (; "|init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        |persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc (&struct:get @*reel :db) :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "|Code updated.") (clear-twig-caches!)
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        |render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        |run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data) (println |Data data)
                  match data
                    (:connect sid)
                      do
                        dispatch! (:: :session/connect) sid
                        println "|New client."
                    (:message sid msg)
                      let
                          action $ parse-cirru-edn msg
                        dispatch! action sid
                    (:disconnect sid)
                      do (println "|Client closed!")
                        dispatch! (:: :session/disconnect) sid
                    _ $ eprintln "|unknown data:" data
          :examples $ []
          :schema $ :: 'Dynamic
        |storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        |sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel) (begin-twig-frame!)
              wss-each! $ fn (sid)
                let
                    db $ &struct:get reel :db
                    records $ &struct:get reel :records
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn
                        {} (:kind :patch) (:data changes)
                      swap! *client-caches assoc sid new-store
              finish-twig-frame!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.server $ :require (cumulo-reel.schema :as schema)
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
            calcit.std.date :refer $ get-time!
            calcit.std.path :refer $ join-path
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
    |cumulo-reel.app.twig.container $ %{} 'FileEntry
      :defs $ {}
        |twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let
                  logged-in? $ some? (&struct:get session :user-id)
                  router $ &struct:get session :router
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                merge base-data $ if logged-in?
                  {}
                    :user $ memo-twig-by1 (&struct:get session :user-id) twig-user
                      &map:get
                        get-in db $ [] :users
                        &struct:get session :user-id
                    :router $ assoc router :data
                      case (&struct:get router :name)
                        :home $ &struct:get db :pages
                        :profile $ memo-twig-by2 :members twig-members (&struct:get db :sessions) (&struct:get db :users)
                        (&struct:get router :name) ({})
                    :count $ count (&struct:get db :sessions)
                    :color $ rand-hex-color!
                  , nil
          :examples $ []
          :schema $ :: 'Dynamic
        |twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions (to-pairs)
                map $ fn (pair)
                  let[] (k session) pair $ [] k
                    get-in users $ [] (&struct:get session :user-id) :name
                pairs-map
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.twig.container $ :require
            cumulo-reel.app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
            recollect.memo :refer $ memo-twig-by1 memo-twig-by2
    |cumulo-reel.app.twig.user $ %{} 'FileEntry
      :defs $ {}
        |twig-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.twig.user $ :require
    |cumulo-reel.app.updater $ %{} 'FileEntry
      :defs $ {}
        |updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
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
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.updater $ :require ([] cumulo-reel.app.updater.session :as session) ([] cumulo-reel.app.updater.user :as user) ([] cumulo-reel.app.updater.router :as router) ([] cumulo-reel.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
    |cumulo-reel.app.updater.router $ %{} 'FileEntry
      :defs $ {}
        |change $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns cumulo-reel.app.updater.router)
    |cumulo-reel.app.updater.session $ %{} 'FileEntry
      :defs $ {}
        |connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (db sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
          :examples $ []
          :schema $ :: 'Dynamic
        |disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        |remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc
                    option:unwrap-or messages $ {}
                    &map:get op-data :id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.updater.session $ :require ([] cumulo-reel.schema :as schema)
    |cumulo-reel.app.updater.user $ %{} 'FileEntry
      :defs $ {}
        |log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-in (db username password sid op-id op-time)
              let
                  maybe-user $ -> (&struct:get db :users) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username (&struct:get user :name)
                  user $ option:unwrap-or maybe-user nil
                update-in db ([] :sessions sid)
                  fn (session-opt)
                    let
                        session $ unsafe-coerce
                          option:unwrap-or session-opt $ {}
                          , 'cumulo-reel.schema/Session
                      if (some? user)
                        if
                          = (md5 password) (&struct:get user :password)
                          assoc session :user-id $ &struct:get user :id
                          update session :messages $ fn (messages)
                            assoc messages op-id $ {} (:id op-id)
                              :text $ str "|Wrong password for " username
                        update session :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        |log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-out (db sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        |sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db username password sid op-id op-time)
              let
                  maybe-user $ find
                    vals $ &struct:get db :users
                    fn (user)
                      = username $ &struct:get user :name
                if (option:some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc
                        option:unwrap-or messages $ {}
                        , op-id $ {} (:id op-id)
                          :text $ str "|Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.app.updater.user $ :require
            calcit.std.hash :refer $ md5
            cumulo-reel.schema :as schema
    |cumulo-reel.comp.reel $ %{} 'FileEntry
      :defs $ {}
        |comp-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-reel (size addional-styles)
              div
                {} (:class-name css-reel) (:style addional-styles)
                <> (str |Length: size) nil
                =< 8 nil
                span $ {} (:inner-text |Reset) (:class-name css-click)
                  :on-click $ fn (e d!)
                    d! $ :: :reel/reset nil
                =< 8 nil
                span $ {} (:inner-text |Merge) (:class-name css-click)
                  :on-click $ fn (e d!)
                    d! $ :: :reel/merge nil
                =< 8 nil
                span $ {} (:inner-text |Persist) (:class-name css-click)
                  :on-click $ fn (e d!)
                    d! $ :: :effect/persist nil
          :examples $ []
          :schema $ :: 'Dynamic
        |css-click $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-click $ {}
              |$0 $ {} (:cursor :pointer)
                :color $ hsl 200 80 80
                :font-size :12
                :text-decoration :underline
          :examples $ []
          :schema $ :: 'Dynamic
        |css-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-reel $ {}
              |$0 $ {} (:padding 8) (:position :absolute) (:bottom 8) (:right 8) (:font-size 12)
                :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.comp.reel $ :require
            respo.util.format :refer $ hsl
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> span button div
            respo.css :refer $ defstyle
            respo.comp.space :refer $ =<
    |cumulo-reel.core $ %{} 'FileEntry
      :defs $ {}
        |ReelState $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct ReelState (:base 'Dynamic) (:db 'Dynamic) (:records 'Dynamic) (:merged? 'Dynamic)
          :examples $ []
          :schema $ :: 'Dynamic
        |play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn play-records (db records updater)
              if (&list:empty? records) db $ let-sugar
                    [] op sid op-id op-time
                    first records
                  next-db $ updater db op sid op-id op-time
                recur next-db (rest records) updater
          :examples $ []
          :schema $ :: 'Dynamic
        |reel-reducer $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reel-reducer (reel updater op sid op-id op-time ? dev?)
              let
                  tag-name $ option:unwrap (nth op 0)
                if
                  starts-with? (str tag-name) |:reel/
                  merge reel $ match op
                    (:reel/reset)
                      {}
                        :records $ []
                        :db $ :base reel
                    (:reel/merge)
                      {}
                        :records $ []
                        :base $ :db reel
                        :merged? true
                    _ $ do (println "|Unknown op:" op) reel
                  let
                      msg-pack $ [] op sid op-id op-time
                    -> reel
                      update :records $ fn (records)
                        if dev? (conj records msg-pack) records
                      assoc :db $ updater (:db reel) op sid op-id op-time
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'cumulo-reel.core/ReelState)
              :args $ [] 'cumulo-reel.core/ReelState 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |resets-from-base)
              :code $ quote
                let
                    reel $ %{} ReelState (:base 1) (:db 2)
                      :records $ []
                      :merged? false
                    updater $ fn (db op sid op-id op-time) db
                    result $ reel-reducer reel updater (:: :reel/reset) |s |o 0
                  assert=
                    merge reel $ {}
                      :records $ []
                      :db 1
                    , result
        |reel-schema $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def reel-schema $ %{} ReelState (:base nil) (:db nil)
              :records $ []
              :merged? false
          :examples $ []
          :schema $ :: 'Dynamic
        |refresh-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn refresh-reel (reel base updater)
              let
                  next-base $ if (:merged? reel) (:base reel) base
                -> reel (assoc :base next-base)
                  assoc :db $ play-records next-base (:records reel) updater
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'cumulo-reel.core/ReelState)
              :args $ [] 'cumulo-reel.core/ReelState 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns cumulo-reel.core)
    |cumulo-reel.schema $ %{} 'FileEntry
      :defs $ {}
        |ClientStore $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct ClientStore (:session 'Session) (:router 'Router) (:logged-in? 'Bool) (:color 'String) (:count 'Number) (:reel-length 'Number) (:name 'String) (:user 'User)
          :examples $ []
          :schema $ :: 'Dynamic
        |Database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct Database (:sessions 'Map) (:users 'Map) (:pages 'Dynamic)
          :examples $ []
          :schema $ :: 'Dynamic
        |Op $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defenum Op (:session/connect) (:session/disconnect) (:session/remove-message 'Dynamic) (:user/log-in 'String 'String) (:user/sign-up 'String 'String) (:user/log-out) (:router/change 'Dynamic) (:effect/persist) (:effect/ping) (:effect/pong) (:effect/connect) (:reel/reset) (:reel/merge)
          :examples $ []
          :schema $ :: 'Dynamic
        |Router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct Router (:name 'Dynamic) (:title 'Dynamic) (:data 'Dynamic) (:router 'Dynamic)
          :examples $ []
          :schema $ :: 'Dynamic
        |Session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct Session (:user-id 'Dynamic) (:id 'Dynamic) (:nickname 'Dynamic) (:router 'Router) (:messages 'Map)
          :examples $ []
          :schema $ :: 'Dynamic
        |SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct SiteConfig (:port 'Number) (:title 'String) (:icon 'String) (:dev-ui 'String) (:release-ui 'String) (:cdn-url 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'Dynamic
        |User $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstruct User (:name 'Dynamic) (:id 'Dynamic) (:nickname 'Dynamic) (:avatar 'Dynamic) (:password 'Dynamic)
          :examples $ []
          :schema $ :: 'Dynamic
        |database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def database $ %{} Database
              :sessions $ {}
              :users $ {}
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Database
        |router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def router $ %{} Router (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Router
        |session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def session $ %{} Session (:user-id nil) (:id nil) (:nickname nil)
              :router $ %{} Router (:name :home) (:title nil) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Session
        |user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def user $ %{} User (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/User
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns cumulo-reel.schema)
    |cumulo-reel.style $ %{} 'FileEntry
      :defs $ {}
        |link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns cumulo-reel.style $ :require
            [] respo.util.format :refer $ [] hsl
            [] respo-ui.core :as ui
