
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |cumulo-reel
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'cumulo-reel.app.client/main!) (:mode :native) (:reload-fn 'cumulo-reel.app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |cumulo-reel.schema/Op
    :server $ {} (:description |) (:init-fn 'cumulo-reel.app.server/main!) (:mode :js) (:reload-fn 'cumulo-reel.app.server/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |recollect/ |ws-edn.calcit/ |cumulo-util.calcit/ |js-ffi/
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
                  match (protocol/receive-server-patch! *store data)
                    (:ok _) (shared/console-log! |Applied-server-patch)
                    (:err detail)
                      shared/console-error! $ str |Rejected-server-patch: detail
                :class-mapper protocol/patch-class-mapper
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
                recur (:: :states op data) (Option :none)
                if (tag? op)
                  recur (:: op data) (Option :none)
                  match op
                    (:states cursor s)
                      reset! *states $ assert-type
                        &map:get
                          update-states
                            {} $ :states @*states
                            , cursor s
                          , :states
                        :: 'Map 'Tag 'Dynamic
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
            add-watch! *store :changes on-store-change!
            add-watch! *states :changes $ fn (states prev)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
                :return 'Unit
              render-app! render!
              , &unit
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
        'on-store-change! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-store-change! (current previous) (render-app! render!) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Current 'Previous
            :features $ #{} :js-ffi
            :generics $ [] 'Current 'Previous
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (add-watch! *store :changes on-store-change!)
            add-watch! *states :changes $ fn (states prev)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
                :return 'Unit
              render-app! render!
              , &unit
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
                dispatch! op $ Option :none
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
                          Option :none
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
            cumulo-util.activity :refer $ page-visible?
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            cumulo-reel.app.protocol :as protocol
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
                    match router.:name
                      :home $ <> |Home
                      :profile $ comp-profile (assert-type store-typed.:user 'cumulo-reel.schema/ClientUser) router.:data
                      _ $ <> $ to-string router.:name
                    comp-login $ >>
                      either states $ {}
                      , :login
                  comp-status-color store-typed.:color
                  comp-messages
                    filter-map-kv (session.:messages)
                      fn (id message)
                        MapEntryDecision :keep id $ &struct:to-map message
                    {}
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
          :code $ quote $ def initial-state (LoginState :username | :password |)
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
            cumulo-reel.schema/SiteConfig :port 5021 :title |Cumulo :icon |http://cdn.tiye.me/logo/cumulo.png :dev-ui |http://localhost:8100/main.css :release-ui |http://cdn.tiye.me/favored-fonts/main.css :cdn-url |http://cdn.tiye.me/cumulo-reel/ :theme |#eeeeff :storage-key |reel-storage :storage-file |storage.cirru
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.config
          :require
            cumulo-reel.schema :refer $ SiteConfig
            [] cumulo-util.core :refer $ [] get-env!
    'cumulo-reel.app.protocol $ %{} 'FileEntry
      :defs $ {}
        'apply-server-patch $ %{} 'CodeEntry (:doc "|验证消息与 change-op，应用 patch 后验证完整结果；失败不发布状态。")
          :code $ quote $ defn apply-server-patch (store data)
            match (decode-source data)
              (:err detail) (Result :err detail)
              (:ok source)
                match (decode-field source :kind decode-tag)
                  (:err detail) (Result :err detail)
                  (:ok kind)
                    if (= kind :patch)
                      match (get source :data)
                        (:none) (Result :err |Missing-patch-data)
                        (:some raw-changes)
                          match
                            try-decode-map-as raw-changes $ :: 'List 'recollect.schema/change-op
                            (:err detail)
                              Result :err $ str |Invalid-changes: detail
                            (:ok changes)
                              match
                                .apply-to (patch-batch changes) store
                                (:err error)
                                  Result :err $ str |Invalid-patch: error
                                (:ok next-store) (decode-nullable-store next-store)
                      Result :err $ str |Unknown-message-kind: kind
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'JsNullish 'cumulo-reel.schema/ClientStore) 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'JsNullish 'cumulo-reel.schema/ClientStore) 'String
          :tests $ []
            %{} 'TestEntry (:name |restores-initial-edn-snapshot)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ diff-twig nil expected $ {}
                    , patch-class-mapper
                  outcome $ apply-server-patch nil wire
                match outcome
                  (:err detail) (raise detail)
                  (:ok actual)
                    if (js-present? actual) (assert= expected actual) (assert |Expected-present-store false)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |restores-incremental-edn-patch)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  old $ struct-with expected (:count 0) (:user nil)
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ diff-twig old expected $ {}
                    , patch-class-mapper
                  outcome $ apply-server-patch old wire
                match outcome
                  (:err detail) (raise detail)
                  (:ok actual)
                    if (js-present? actual) (assert= expected actual) (assert |Expected-present-store false)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |accepts-legacy-map-snapshot)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  legacy $ &struct:to-map expected
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ diff-twig nil legacy $ {}
                    , patch-class-mapper
                  outcome $ apply-server-patch nil wire
                match outcome
                  (:err detail) (raise detail)
                  (:ok actual)
                    if (js-present? actual) (assert= expected actual) (assert |Expected-present-store false)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |preserves-nil-reset)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ diff-twig expected nil $ {}
                    , patch-class-mapper
                match (apply-server-patch expected wire)
                  (:err detail) (raise detail)
                  (:ok actual)
                    assert= true $ js-nullish? actual
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-invalid-envelope-and-changes)
              :code $ quote $ do
                each
                  [] |bad ({})
                    {} (:kind 42)
                      :data $ []
                    {} (:kind :wrong)
                      :data $ []
                    {} (:kind :patch) (:data 42)
                  fn (data)
                    match (apply-server-patch nil data)
                      (:err detail)
                        assert= true $ string? detail
                      (:ok state) (assert |Invalid-message-was-accepted false)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-invalid-nested-fields)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  valid-ops $ diff-twig nil expected $ {}
                each
                  []
                    patch-schema/change-op :update-in ([] :session) (patch-schema/change-op :assoc :id |bad-id)
                    patch-schema/change-op :update-in ([] :router) (patch-schema/change-op :assoc :name 42)
                    patch-schema/change-op :update-in ([] :user) (patch-schema/change-op :assoc :avatar 42)
                    patch-schema/change-op :update-in ([] :session :messages |m1) (patch-schema/change-op :assoc :text 42)
                  fn (bad-op)
                    let
                        wire $ parse-cirru-edn
                          format-cirru-edn $ {} (:kind :patch)
                            :data $ append valid-ops bad-op
                          , patch-class-mapper
                      match (apply-server-patch nil wire)
                        (:err detail)
                          assert= true $ string? detail
                        (:ok actual) (assert |Corrupt-nested-field-was-accepted false)
              :tags $ #{} :protocol :unit
        'decode-bool $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-bool (value) (try-decode-map-as value 'Bool)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'Bool 'String
        'decode-client-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-client-action (value)
            if (enum? value)
              match (&enum:nth value 0)
                :session/connect $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :session/connect
                  Result :err "|Operation payload arity mismatch"
                :session/disconnect $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :session/disconnect
                  Result :err "|Operation payload arity mismatch"
                :session/remove-message $ if
                  = 2 $ &enum:count value
                  match
                    try-decode-map-as (&enum:params value) (:: 'List 'String)
                    (:ok params)
                      Result :ok $ schema/Op :session/remove-message $ &list:nth params 0
                    (:err detail) (Result :err detail)
                  Result :err "|Operation payload arity mismatch"
                :user/log-in $ if
                  = 3 $ &enum:count value
                  match
                    try-decode-map-as (&enum:params value) (:: 'List 'String)
                    (:ok params)
                      Result :ok $ schema/Op :user/log-in (&list:nth params 0) (&list:nth params 1)
                    (:err detail) (Result :err detail)
                  Result :err "|Operation payload arity mismatch"
                :user/sign-up $ if
                  = 3 $ &enum:count value
                  match
                    try-decode-map-as (&enum:params value) (:: 'List 'String)
                    (:ok params)
                      Result :ok $ schema/Op :user/sign-up (&list:nth params 0) (&list:nth params 1)
                    (:err detail) (Result :err detail)
                  Result :err "|Operation payload arity mismatch"
                :user/log-out $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :user/log-out
                  Result :err "|Operation payload arity mismatch"
                :router/change $ if
                  = 2 $ &enum:count value
                  match
                    try-decode-map-as (&enum:params value) (:: 'List 'Tag)
                    (:ok params)
                      Result :ok $ schema/Op :router/change $ &list:nth params 0
                    (:err detail) (Result :err detail)
                  Result :err "|Operation payload arity mismatch"
                :effect/persist $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :effect/persist
                  Result :err "|Operation payload arity mismatch"
                :effect/ping $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :effect/ping
                  Result :err "|Operation payload arity mismatch"
                :effect/pong $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :effect/pong
                  Result :err "|Operation payload arity mismatch"
                :effect/connect $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :effect/connect
                  Result :err "|Operation payload arity mismatch"
                :reel/reset $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :reel/reset
                  Result :err "|Operation payload arity mismatch"
                :reel/merge $ if
                  = 1 $ &enum:count value
                  Result :ok $ schema/Op :reel/merge
                  Result :err "|Operation payload arity mismatch"
                _ $ Result :err "|Unknown client operation"
              Result :err "|Expected an operation enum"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'cumulo-reel.schema/Op 'String
        'decode-client-store $ %{} 'CodeEntry (:doc "|在传输边界验证全部具名字段并重建 ClientStore；Router.data 保留开放值。")
          :code $ quote $ defn decode-client-store (value)
            match (decode-source value)
              (:err detail) (Result :err detail)
              (:ok source)
                match (decode-field source :session decode-session)
                  (:err detail) (Result :err detail)
                  (:ok session)
                    match (decode-field source :router decode-router)
                      (:err detail) (Result :err detail)
                      (:ok router)
                        match (decode-field source :logged-in? decode-bool)
                          (:err detail) (Result :err detail)
                          (:ok logged-in?)
                            match (decode-field source :color decode-string)
                              (:err detail) (Result :err detail)
                              (:ok color)
                                match (decode-field source :count decode-number)
                                  (:err detail) (Result :err detail)
                                  (:ok count)
                                    match (decode-field source :reel-length decode-number)
                                      (:err detail) (Result :err detail)
                                      (:ok reel-length)
                                        match (decode-field source :name decode-nullable-string)
                                          (:err detail) (Result :err detail)
                                          (:ok name)
                                            match (decode-field source :user decode-nullable-user)
                                              (:err detail) (Result :err detail)
                                              (:ok user)
                                                Result :ok $ schema/ClientStore :session session :router router :logged-in? logged-in? :color color :count count :reel-length reel-length :name name :user user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'cumulo-reel.schema/ClientStore 'String
        'decode-client-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-client-user (value)
            match (decode-source value)
              (:err detail) (Result :err detail)
              (:ok source)
                match (decode-field source :name decode-string)
                  (:err detail) (Result :err detail)
                  (:ok name)
                    match (decode-field source :id decode-string)
                      (:err detail) (Result :err detail)
                      (:ok id)
                        match (decode-field source :nickname decode-string)
                          (:err detail) (Result :err detail)
                          (:ok nickname)
                            match (decode-field source :avatar decode-nullable-string)
                              (:err detail) (Result :err detail)
                              (:ok avatar)
                                Result :ok $ schema/ClientUser :name name :id id :nickname nickname :avatar avatar
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'cumulo-reel.schema/ClientUser 'String
        'decode-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-field (source key decoder)
            match (get source key)
              (:none)
                Result :err $ str |Missing-field: key
              (:some value)
                match (decoder value)
                  (:err detail)
                    Result :err $ str key |: detail
                  (:ok decoded) (Result :ok decoded)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Value) 'Tag $ :: 'Fn
              {}
                :args $ [] 'Value
                :return $ :: 'Result 'T 'String
            :generics $ [] 'Value 'T
            :return $ :: 'Result 'T 'String
          :tests $ []
            %{} 'TestEntry (:name |preserves-typed-map-value)
              :code $ quote $ match
                decode-field
                  {} $ :count 41
                  , :count decode-open
                (:ok value)
                  assert= 42 $ + value 1
                (:err detail) (raise detail)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |preserves-nullable-map-value)
              :code $ quote $ assert= (Result :ok nil)
                decode-field
                  {} $ :data nil
                  , :data decode-open
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-missing-field)
              :code $ quote $ assert= (Result :err |Missing-field::name)
                decode-field ({}) :name decode-string
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |keeps-decoder-error-context)
              :code $ quote $ match
                decode-field
                  {} $ :name 41
                  , :name decode-string
                (:ok value) (raise |Unexpected-decoder-success)
                (:err detail)
                  assert= true $ starts-with? detail |:name:
              :tags $ #{} :protocol :unit
        'decode-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-message (value)
            match (decode-source value)
              (:err detail) (Result :err detail)
              (:ok source)
                match (decode-field source :id decode-string)
                  (:err detail) (Result :err detail)
                  (:ok id)
                    match (decode-field source :text decode-string)
                      (:err detail) (Result :err detail)
                      (:ok text)
                        Result :ok $ schema/Message :id id :text text
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'cumulo-reel.schema/Message 'String
        'decode-messages $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-messages (value)
            match
              try-decode-map-as value $ :: 'Map 'String 'Dynamic
              (:err detail) (Result :err detail)
              (:ok entries)
                foldl
                  &set:to-list $ &map:keys entries
                  assert-type
                    Result :ok $ {}
                    :: 'Result (:: 'Map 'String 'cumulo-reel.schema/Message) 'String
                  fn (acc key)
                    match acc
                      (:err detail) (Result :err detail)
                      (:ok decoded)
                        match
                          decode-message $ &map:get entries key
                          (:err detail)
                            Result :err $ str key |: detail
                          (:ok message)
                            Result :ok $ assoc decoded key message
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'Map 'String 'cumulo-reel.schema/Message) 'String
        'decode-nullable-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-nullable-number (value)
            if (nil? value) (Result :ok value) (decode-number value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'JsNullish 'Number) 'String
        'decode-nullable-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-nullable-router (value)
            if (nil? value) (Result :ok value) (decode-router value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'JsNullish 'cumulo-reel.schema/Router) 'String
        'decode-nullable-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-nullable-store (value)
            if (nil? value) (Result :ok value) (decode-client-store value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'JsNullish 'cumulo-reel.schema/ClientStore) 'String
        'decode-nullable-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-nullable-string (value)
            if (nil? value) (Result :ok value) (decode-string value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'JsNullish 'String) 'String
        'decode-nullable-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-nullable-user (value)
            if (nil? value) (Result :ok value) (decode-client-user value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'JsNullish 'cumulo-reel.schema/ClientUser) 'String
        'decode-number $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-number (value) (try-decode-map-as value 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'Number 'String
        'decode-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-open (value) (Result :ok value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Value
            :generics $ [] 'Value
            :return $ :: 'Result 'Value 'String
          :tests $ []
            %{} 'TestEntry (:name |preserves-opaque-router-data)
              :code $ quote $ let
                  value $ {}
                    :nested $ [] 1 |two nil
                    :enabled? true
                match (decode-open value)
                  (:ok actual) (assert= value actual)
                  (:err detail) (raise detail)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |preserves-number-result-type)
              :code $ quote $ match (decode-open 41)
                (:ok value)
                  assert= 42 $ + value 1
                (:err detail) (raise detail)
              :tags $ #{} :protocol :unit
        'decode-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-router (value)
            match (decode-source value)
              (:err detail) (Result :err detail)
              (:ok source)
                match (decode-field source :name decode-tag)
                  (:err detail) (Result :err detail)
                  (:ok name)
                    match (decode-field source :title decode-string)
                      (:err detail) (Result :err detail)
                      (:ok title)
                        match (decode-field source :data decode-open)
                          (:err detail) (Result :err detail)
                          (:ok data)
                            match (decode-field source :router decode-nullable-router)
                              (:err detail) (Result :err detail)
                              (:ok router)
                                Result :ok $ schema/Router :name name :title title :data data :router router
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'cumulo-reel.schema/Router 'String
        'decode-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-session (value)
            match (decode-source value)
              (:err detail) (Result :err detail)
              (:ok source)
                match (decode-field source :user-id decode-nullable-string)
                  (:err detail) (Result :err detail)
                  (:ok user-id)
                    match (decode-field source :id decode-nullable-number)
                      (:err detail) (Result :err detail)
                      (:ok id)
                        match (decode-field source :nickname decode-nullable-string)
                          (:err detail) (Result :err detail)
                          (:ok nickname)
                            match (decode-field source :router decode-router)
                              (:err detail) (Result :err detail)
                              (:ok router)
                                match (decode-field source :messages decode-messages)
                                  (:err detail) (Result :err detail)
                                  (:ok messages)
                                    Result :ok $ schema/Session :user-id user-id :id id :nickname nickname :router router :messages messages
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'cumulo-reel.schema/Session 'String
        'decode-source $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-source (value)
            try-decode-map-as
              if (struct? value) (&struct:to-map value) value
              :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result (:: 'Map 'Tag 'Dynamic) 'String
        'decode-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-string (value) (try-decode-map-as value 'String)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'String 'String
        'decode-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-tag (value) (try-decode-map-as value 'Tag)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'Tag 'String
        'parse-client-action $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-client-action (raw)
            match (.parse-cirru-edn raw)
              (:ok value) (decode-client-action value)
              (:err detail) (Result :err detail)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :return $ :: 'Result 'cumulo-reel.schema/Op 'String
          :tests $ []
            %{} 'TestEntry (:name |accepts-anonymous-sign-up)
              :code $ quote $ assert=
                Result :ok $ schema/Op :user/sign-up |Ada |secret
                parse-client-action $ format-cirru-edn $ :: :user/sign-up |Ada |secret
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |accepts-nominal-log-in)
              :code $ quote $ assert=
                Result :ok $ schema/Op :user/log-in |Ada |secret
                parse-client-action $ format-cirru-edn $ schema/Op :user/log-in |Ada |secret
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |accepts-router-and-empty-actions)
              :code $ quote $ do
                assert=
                  Result :ok $ schema/Op :router/change :profile
                  parse-client-action $ format-cirru-edn $ :: :router/change :profile
                assert=
                  Result :ok $ schema/Op :user/log-out
                  parse-client-action $ format-cirru-edn $ :: :user/log-out
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-invalid-action-payload)
              :code $ quote $ assert= true
                result:err? $ parse-client-action $ format-cirru-edn (:: :user/sign-up |Ada 3)
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-extra-and-missing-action-payload)
              :code $ quote $ do
                assert= true $ result:err? $ parse-client-action
                  format-cirru-edn $ :: :user/sign-up |Ada
                assert= true $ result:err? $ parse-client-action
                  format-cirru-edn $ :: :user/log-out |extra
                assert= true $ result:err? $ parse-client-action
                  format-cirru-edn $ :: :router/change |profile
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-unknown-and-malformed-action)
              :code $ quote $ do
                assert= true $ result:err? $ parse-client-action
                  format-cirru-edn $ :: :unknown
                assert= true $ result:err? $ parse-client-action |{}
                assert= true $ result:err? $ parse-client-action |not-cirru-edn
              :tags $ #{} :protocol :unit
        'patch-class-mapper $ %{} 'CodeEntry
          :doc "|恢复传输 change-op 的名义定义；payload 仍由 apply-server-patch 验证，不把 class mapper 当作 decoder。"
          :code $ quote $ def patch-class-mapper
            {} $ :change-op patch-schema/change-op
          :examples $ []
          :schema $ :: 'Map 'Tag 'EnumDef
        'receive-server-patch! $ %{} 'CodeEntry (:doc "|只在 patch 与完整结果解码都成功后更新客户端 Ref。")
          :code $ quote $ defn receive-server-patch! (target data)
            match
              apply-server-patch (deref target) data
              (:err detail) (Result :err detail)
              (:ok next-store)
                do (reset! target next-store) (Result :ok &unit)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Ref $ :: 'JsNullish 'cumulo-reel.schema/ClientStore
              , 'Input
            :generics $ [] 'Input
            :return $ :: 'Result 'Unit 'String
          :tests $ []
            %{} 'TestEntry (:name |rejects-invalid-result-without-publishing)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  target $ atom $ assert-type nil (:: 'JsNullish 'cumulo-reel.schema/ClientStore)
                  before $ do (reset! target expected) (deref target)
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ [] $ patch-schema/change-op :assoc :count |wrong-count
                    , patch-class-mapper
                match (receive-server-patch! target wire)
                  (:err detail)
                    assert= true $ includes? detail |count
                  (:ok value) (assert |Invalid-store-was-published false)
                assert= before $ deref target
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-partially-applied-invalid-patch)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  target $ atom $ assert-type nil (:: 'JsNullish 'cumulo-reel.schema/ClientStore)
                  before $ do (reset! target expected) (deref target)
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ [] (patch-schema/change-op :assoc :count 2)
                        patch-schema/change-op :update-in ([] :session :missing) (patch-schema/change-op :replace 3)
                    , patch-class-mapper
                match (receive-server-patch! target wire)
                  (:err detail)
                    assert= true $ includes? detail |Invalid-patch:
                  (:ok value) (assert |Malformed-patch-was-published false)
                assert= before $ deref target
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |rejects-invalid-operation-payload)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  target $ atom $ assert-type nil (:: 'JsNullish 'cumulo-reel.schema/ClientStore)
                  before $ do (reset! target expected) (deref target)
                  raw-ops $ parse-cirru-edn "|[] $ %:: 'change-op 'vec-drop |bad" patch-class-mapper
                  wire $ {} (:kind :patch) (:data raw-ops)
                match (receive-server-patch! target wire)
                  (:err detail)
                    assert= true $ includes? detail |Invalid-changes:
                  (:ok value) (assert |Bad-operation-payload-was-published false)
                assert= before $ deref target
              :tags $ #{} :protocol :unit
            %{} 'TestEntry (:name |publishes-valid-edn-snapshot)
              :code $ quote $ let
                  router $ schema/Router :name :profile :title |Profile :data
                    {} $ :open $ [] 1 |two
                    , :router $ schema/Router :name :child :title |Child :data nil :router nil
                  session $ struct-with schema/session (:id 1) (:router router)
                    :messages $ {} $ |m1 (schema/Message :id |m1 :text |hello)
                  fixture-user $ schema/ClientUser :name |Ada :id |u1 :nickname |A :avatar nil
                  expected $ schema/ClientStore :session session :router router :logged-in? true :color |blue :count 1 :reel-length 0 :name nil :user fixture-user
                  target $ atom $ assert-type nil (:: 'JsNullish 'cumulo-reel.schema/ClientStore)
                  before $ do (reset! target expected) (deref target)
                  wire $ parse-cirru-edn
                    format-cirru-edn $ {} (:kind :patch)
                      :data $ diff-twig nil expected $ {}
                    , patch-class-mapper
                reset! target nil
                match (receive-server-patch! target wire)
                  (:err detail) (raise detail)
                  (:ok value) (assert= &unit value)
                let
                    actual $ deref target
                  if (js-present? actual) (assert= expected actual) (assert |Valid-store-was-not-published false)
              :tags $ #{} :protocol :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.protocol
          :require (cumulo-reel.schema :as schema)
            recollect.patch :refer $ patch-batch
            recollect.diff :refer $ diff-twig
            recollect.schema :as patch-schema
    'cumulo-reel.app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'cumulo-reel.schema/ClientStore
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if
              file-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                assert-type
                  parse-cirru-edn (read-text! storage-file)
                    {} (:Database database) (:Session session) (:User user) (:Router router)
                  'cumulo-reel.schema/Database
              do (println "|Found no data") database
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.schema/Database
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'cumulo-reel.schema/Database
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            %{} cumulo-reel.core/ReelState (:base @*initial-db) (:db @*initial-db)
              :records $ []
              :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'cumulo-reel.schema/Database
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ generate-id!
                op-time $ now-ms
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
                now $ local-month-day!
                backup-dir $ path-join calcit-dirname |backups
                month-dir $ path-join backup-dir $ str (&map:get now :month)
              path-join month-dir $ str (&map:get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                p? $ get-env |port
                port $ resolve-server-port p? $ :port config/site
              run-server! port
              println $ str "|Server started on port:" port
            ; "|init it before doing multi-threading"
            identity @*reader-reel
            every! 200 $ fn () $ render-loop!
            every! 600000 $ fn () $ persist-db!
            on-interrupt! on-exit!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
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
              check-write-text! storage-path file-content
              check-write-text! backup-path file-content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated.") (clear-twig-caches!) (reset-twig-memos!)
            reset! *reel $ refresh-reel @*reel @*initial-db updater-from-record
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
        'resolve-server-port $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resolve-server-port (configured default-port)
            match configured
              (:none) default-port
              (:some text)
                match (parse-float text)
                  (:ok port)
                    if
                      and (>= port 0) (<= port 65535)
                        = (floor port) port
                      , port $ raise $ str |Invalid-server-port: text
                  (:err _)
                    raise $ str |Invalid-server-port: text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] (:: 'Option 'String) 'Number
          :tests $ []
            %{} 'TestEntry (:name |accepts-configured-integer)
              :code $ quote $ assert= 9000
                resolve-server-port (Option :some |9000) 5021
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |uses-default-for-missing-setting)
              :code $ quote $ assert= 5021
                resolve-server-port (Option :none) 5021
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |supports-ephemeral-port)
              :code $ quote $ assert= 0
                resolve-server-port (Option :some |0) 5021
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |rejects-invalid-text)
              :code $ quote $ assert= true
                try
                  do
                    resolve-server-port (Option :some |oops) 5021
                    , false
                  fn (error) (starts-with? error |Invalid-server-port:)
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |rejects-negative)
              :code $ quote $ assert= true
                try
                  do
                    resolve-server-port (Option :some |-1) 5021
                    , false
                  fn (error) (starts-with? error |Invalid-server-port:)
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |rejects-out-of-range)
              :code $ quote $ assert= true
                try
                  do
                    resolve-server-port (Option :some |65536) 5021
                    , false
                  fn (error) (starts-with? error |Invalid-server-port:)
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |rejects-fractional)
              :code $ quote $ assert= true
                try
                  do
                    resolve-server-port (Option :some |2.5) 5021
                    , false
                  fn (error) (starts-with? error |Invalid-server-port:)
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |rejects-nan)
              :code $ quote $ assert= true
                try
                  do
                    resolve-server-port (Option :some |NaN) 5021
                    , false
                  fn (error) (starts-with? error |Invalid-server-port:)
              :tags $ #{} :server :unit
            %{} 'TestEntry (:name |rejects-infinity)
              :code $ quote $ assert= true
                try
                  do
                    resolve-server-port (Option :some |Infinity) 5021
                    , false
                  fn (error) (starts-with? error |Invalid-server-port:)
              :tags $ #{} :server :unit
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            serve! port $ fn (data)
              match data
                (:connect sid)
                  do
                    dispatch! (:: :session/connect) sid
                    println "|New client."
                (:message sid msg)
                  match (cumulo-reel.app.protocol/parse-client-action msg)
                    (:ok action) (dispatch! action sid)
                    (:err error) (eprintln "|Invalid client action:" error)
                (:disconnect sid)
                  do (println "|Client closed!")
                    dispatch! (:: :session/disconnect) sid
                (:blob sid) (eprintln "|Unexpected binary message from:" sid)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'ws-edn.server/NodeWebSocketServerHost)
            :args $ [] 'Number
            :features $ #{} :js-ffi
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel) (begin-twig-frame!)
            each! $ fn (sid)
              let
                  db $ assert-type reel.:db 'cumulo-reel.schema/Database
                  records reel.:records
                  session $ assert-type
                    match (get db.:sessions sid)
                      (:some found) found
                      (:none) session
                    , 'cumulo-reel.schema/Session
                  old-store $ match (get @*client-caches sid)
                    (:some cached) cached
                    (:none) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                if
                  not $ empty? changes
                  do
                    send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
                    , &unit
                  , &unit
            finish-twig-frame!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'cumulo-reel.schema/Database
        'updater-from-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater-from-record (db op sid op-id op-time)
            let
                normalized $ if (enum? op)
                  assoc op 0 $ turn-tag $ &enum:nth op 0
                  , op
                typed-op $ match normalized
                  (:session/connect) (cumulo-reel.schema/Op :session/connect)
                  (:session/disconnect) (cumulo-reel.schema/Op :session/disconnect)
                  (:session/remove-message id)
                    cumulo-reel.schema/Op :session/remove-message $ decode-map-as id 'String
                  (:user/log-in name password)
                    cumulo-reel.schema/Op :user/log-in (decode-map-as name 'String) (decode-map-as password 'String)
                  (:user/sign-up name password)
                    cumulo-reel.schema/Op :user/sign-up (decode-map-as name 'String) (decode-map-as password 'String)
                  (:user/log-out) (cumulo-reel.schema/Op :user/log-out)
                  (:router/change name)
                    cumulo-reel.schema/Op :router/change $ decode-map-as name 'Tag
                  (:effect/persist) (cumulo-reel.schema/Op :effect/persist)
                  (:effect/ping) (cumulo-reel.schema/Op :effect/ping)
                  (:effect/pong) (cumulo-reel.schema/Op :effect/pong)
                  (:effect/connect) (cumulo-reel.schema/Op :effect/connect)
                  (:reel/reset) (cumulo-reel.schema/Op :reel/reset)
                  (:reel/merge) (cumulo-reel.schema/Op :reel/merge)
                  _ $ raise |Invalid-record-operation
              updater db typed-op (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.schema/Database)
            :args $ [] 'cumulo-reel.schema/Database 'OpInput 'SidInput 'IdInput 'TimeInput
            :generics $ [] 'OpInput 'SidInput 'IdInput 'TimeInput
          :tests $ [] $ %{} 'TestEntry (:name |replays-legacy-connect-operation)
            :code $ quote $ assert=
              updater database (cumulo-reel.schema/Op :session/connect) 1 |op-1 0
              updater-from-record database (:: :session/connect) 1 |op-1 0
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.server
          :require
            cumulo-reel.schema :refer $ database session user router
            cumulo-reel.app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            cumulo-reel.app.config :as config
            cumulo-reel.app.twig.container :refer $ twig-container reset-twig-memos!
            recollect.diff :refer $ diff-twig
            recollect.twig :refer $ clear-twig-caches!
            cumulo-reel.$meta :refer $ calcit-dirname
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
            cumulo-reel.app.server-ws :refer $ serve! send! each!
            js-ffi.node :refer $ file-exists? read-text! path-join
            js-ffi.shared :refer $ now-ms
            cumulo-reel.app.server-host :refer $ check-write-text! local-month-day! every! on-interrupt!
    'cumulo-reel.app.server-host $ %{} 'FileEntry
      :defs $ {}
        'LocalDateHost $ %{} 'CodeEntry (:doc "|仅暴露备份命名所需的宿主本地月、日读取。")
          :code $ quote $ deftrait LocalDateHost
            .get-month $ :: 'Fn $ {}
              :args $ [] 'cumulo-reel.app.server-host/LocalDateHost
              :return 'Number
            .get-date $ :: 'Fn $ {}
              :args $ [] 'cumulo-reel.app.server-host/LocalDateHost
              :return 'Number
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} (:get-date |getDate) (:get-month |getMonth)
          :schema $ :: 'Trait
        'NodeProcessHost $ %{} 'CodeEntry (:doc "|仅用于订阅 Node 的 SIGINT 信号。")
          :code $ quote $ deftrait NodeProcessHost
            .on $ :: 'Fn $ {}
              :args $ [] 'cumulo-reel.app.server-host/NodeProcessHost 'String $ :: 'Fn
                {}
                  :args $ [] 'String 'Number
                  :return 'Unit
              :return 'cumulo-reel.app.server-host/NodeProcessHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :on |on
          :schema $ :: 'Trait
        'check-write-text! $ %{} 'CodeEntry (:doc "|内容未变时跳过写入，按需建立一级备份目录。")
          :code $ quote $ defn check-write-text! (path content)
            let
                parent $ path-dirname path
              ensure-directory! parent
              if (file-exists? path)
                if
                  = (read-text! path) content
                  , &unit $ write-text! path content
                write-text! path content
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'ensure-directory! $ %{} 'CodeEntry (:doc "|递归建立缺少的父目录，避免备份月份目录不存在时写入失败。")
          :code $ quote $ defn ensure-directory! (directory)
            if (file-exists? directory) &unit $ do
              ensure-directory! $ path-dirname directory
              mkdir! directory
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'every! $ %{} 'CodeEntry (:doc "|由 Node 宿主重复调度 Unit 回调。")
          :code $ quote $ defn every! (delay callback) (js/setInterval callback delay) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
        'local-month-day! $ %{} 'CodeEntry (:doc "|读取 Node 宿主本地时区的月份与日期。")
          :code $ quote $ defn local-month-day! ()
            let
                date $ unsafe-coerce (new js/Date) LocalDateHost
              {}
                :month $ inc $ date .get-month
                :day $ date .get-date
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Number
        'on-interrupt! $ %{} 'CodeEntry (:doc "|将 SIGINT 交给业务退出回调，而不依赖 native CLI 注入。")
          :code $ quote $ defn on-interrupt! (callback)
            let
                process $ unsafe-coerce js/process NodeProcessHost
              process .on |SIGINT $ fn (signal-name signal-number)
                hint-fn $ {}
                  :args $ [] 'String 'Number
                  :return 'Unit
                callback
                , &unit
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.server-host
          :require $ js-ffi.node :refer $ file-exists? read-text! write-text! mkdir! path-dirname
    'cumulo-reel.app.server-ws $ %{} 'FileEntry
      :defs $ {}
        '*clients $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *clients ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'ws-edn.server/NodeWebSocketHost
        '*next-sid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *next-sid 0
          :examples $ []
          :schema $ :: 'Ref 'Number
        'SocketEvent $ %{} 'CodeEntry (:doc "|适配器向业务层报告的连接、原始文本消息、断线和二进制通知。")
          :code $ quote $ defenum SocketEvent (:connect 'Number) (:message 'Number 'String) (:disconnect 'Number) (:blob 'Number)
          :examples $ []
          :schema $ :: 'Enum
        'close-session! $ %{} 'CodeEntry (:doc "|连接关闭或错误只通知业务层一次断线。")
          :code $ quote $ defn close-session! (sid on-event)
            match (get @*clients sid)
              (:some _)
                do (swap! *clients dissoc sid)
                  on-event $ SocketEvent :disconnect sid
              (:none) &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'cumulo-reel.app.server-ws/SocketEvent
          :tests $ [] $ %{} 'TestEntry (:name |ignores-unknown-session)
            :code $ quote $ let
                calls $ atom 0
              reset! *clients $ {}
              close-session! 12 $ fn (event) (swap! calls inc) &unit
              assert= 0 @calls
        'each! $ %{} 'CodeEntry (:doc "|只遍历当前仍连接的 Number session ID。")
          :code $ quote $ defn each! (handler)
            each (keys @*clients) handler
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Number
          :tests $ [] $ %{} 'TestEntry (:name |skips-disconnected-sessions)
            :code $ quote $ let
                seen $ atom $ []
              reset! *clients $ {}
              each! $ fn (sid) (swap! seen conj sid) &unit
              assert= ([]) @seen
        'send! $ %{} 'CodeEntry (:doc "|按 Number session ID 发送原始 Cirru EDN 文本。")
          :code $ quote $ defn send! (sid message)
            match
              get
                assert-type @*clients $ :: 'Map 'Number 'ws-edn.server/NodeWebSocketHost
                , sid
              (:some socket)
                let
                    socket $ assert-type socket 'ws-edn.server/NodeWebSocketHost
                  socket .send message
              (:none) (eprintln |WebSocket-client-missing: sid)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number 'String
            :features $ #{} :js-ffi
        'serve! $ %{} 'CodeEntry
          :doc "|启动 Node WebSocket server，并把宿主事件转为保持原有 SID 语义的 SocketEvent。"
          :code $ quote $ defn serve! (port on-event)
            let
                server $ unsafe-coerce
                  new WebSocketServer $ &js-object :port port
                  , 'ws-edn.server/NodeWebSocketServerHost
              server .on |connection $ fn (raw-socket _request)
                let
                    socket $ unsafe-coerce raw-socket 'ws-edn.server/NodeWebSocketHost
                    sid $ inc @*next-sid
                  reset! *next-sid sid
                  swap! *clients assoc sid socket
                  on-event $ SocketEvent :connect sid
                  socket .on |message $ fn (raw-data binary?)
                    let
                        is-binary? $ contract/expect-bool |ws-message-is-binary binary?
                      if is-binary?
                        on-event $ SocketEvent :blob sid
                        on-event $ SocketEvent :message sid $ node-data-string raw-data
                      , &unit
                  socket .on |close $ fn (_code _reason) (close-session! sid on-event) &unit
                  socket .on |error $ fn (error) (eprintln |WebSocket-client-error: error) (close-session! sid on-event) &unit
                  , &unit
                , &unit
              server .on |error $ fn (error) (eprintln |WebSocket-server-error: error) (quit! 1) &unit
              , server
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'ws-edn.server/NodeWebSocketServerHost)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'cumulo-reel.app.server-ws/SocketEvent
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.app.server-ws
          :require
            |ws :refer $ WebSocketServer
            ws-edn.server :refer $ node-data-string
            js-ffi.contract :as contract
    'cumulo-reel.app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'rand-hex-color! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn rand-hex-color! ()
            contract/expect-string |randomcolor $ randomcolor-host
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'reset-twig-memos! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reset-twig-memos! () (reset-twig-memo!) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
          :tests $ [] $ %{} 'TestEntry
            :name |keeps-typed-projections-and-releases-old-contexts
            :code $ quote $ do (recollect.memo/reset-twig-memo!)
              let
                  first-view $ memo-twig-by1 :user twig-user schema/user
                  same-view $ memo-twig-by1 :user twig-user schema/user
                assert= true $ identical? first-view same-view
                assert= (twig-user schema/user) first-view
              assert= 1 $ recollect.memo/twig-memo-size
              let
                  members $ memo-twig-by2 :members twig-members (:sessions schema/database) (:users schema/database)
                assert= ({}) members
              assert= 2 $ recollect.memo/twig-memo-size
              reset-twig-memos!
              assert= 0 $ recollect.memo/twig-memo-size
              let
                  new-view $ memo-twig-by1 :user twig-user schema/user
                assert= (twig-user schema/user) new-view
              assert= 1 $ recollect.memo/twig-memo-size
              recollect.memo/reset-twig-memo!
            :tags $ #{} :server :unit
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
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
                absent nil
              schema/ClientStore :logged-in? logged-in? :session session :reel-length (count records) :router
                if logged-in?
                  struct-with router $ :data $ case router-name (:home pages)
                    :profile $ memo-twig-by2 :members twig-members sessions users
                    router-name $ {}
                  , router
                , :count (count sessions) :color (rand-hex-color!) :name absent :user $ if logged-in? (memo-twig-by1 user-id twig-user user) absent
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
            recollect.memo :refer $ memo-twig-by1 memo-twig-by2 reset-twig-memo!
            cumulo-reel.schema :as schema
            |randomcolor :default randomcolor-host
            js-ffi.contract :as contract
    'cumulo-reel.app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            schema/ClientUser :name (:name user) :id (:id user) :nickname (:nickname user) :avatar $ :avatar user
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
            struct-with db $ :sessions $ assoc (:sessions db) sid
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
                  &set:to-list $ distinct-values db.:users
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
                        schema/Message :id op-id :text $ str "|Wrong password for " username
                  (:none)
                    struct-with session $ :messages $ assoc session.:messages op-id
                      schema/Message :id op-id :text $ str "|No user named: " username
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
        'md5 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn md5 (text)
            contract/expect-string |md5 $ md5-host text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db username password sid op-id op-time)
            let
                maybe-user $ find
                  &set:to-list $ distinct-values db.:users
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
                      assoc session.:messages op-id $ schema/Message :id op-id :text $ str "|Name is taken: " username
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
          :require (cumulo-reel.schema :as schema) (|md5 :default md5-host) (js-ffi.contract :as contract)
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
          :code $ quote $ defstruct ReelState ([] 'Db) (:base 'Db) (:db 'Db)
            :records $ :: 'List $ :: 'List 'Dynamic
            :merged? 'Bool
          :examples $ []
          :schema $ :: 'StructDef
        'play-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn play-records (db records updater)
            if (&list:empty? records) db $ let[] (op sid op-id op-time) (&list:nth records 0)
              recur (updater db op sid op-id op-time) (&list:rest records) updater
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Db)
            :args $ [] 'Db
              :: 'List $ :: 'List 'RecordValue
              :: 'Fn $ {} (:return 'Db)
                :args $ [] 'Db 'RecordValue 'RecordValue 'RecordValue 'RecordValue
            :generics $ [] 'Db 'RecordValue
        'reel-reducer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reel-reducer (reel updater op sid op-id op-time dev?)
            let
                tag-name $ if (enum? op) (&enum:nth op 0) :unknown
              if
                starts-with? (str tag-name) |:reel/
                if (= tag-name :reel/reset)
                  struct-with reel
                    :db $ :base reel
                    :records $ []
                  if (= tag-name :reel/merge)
                    struct-with reel
                      :base $ :db reel
                      :records $ []
                      :merged? true
                    do (println "|Unknown op:" op) reel
                let
                    msg-pack $ [] op sid op-id op-time
                    next-db $ updater (:db reel) op sid op-id op-time
                  struct-with reel
                    :records $ if dev?
                      append (:records reel) msg-pack
                      :records reel
                    :db next-db
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'cumulo-reel.core/ReelState 'Db)
              :: 'Fn $ {} (:return 'Db)
                :args $ [] 'Db 'Op 'Sid 'OpId 'Number
              , 'Op 'Sid 'OpId 'Number 'Bool
            :generics $ [] 'Db 'Op 'Sid 'OpId
            :return $ :: 'cumulo-reel.core/ReelState 'Db
          :tests $ []
            %{} 'TestEntry (:name |resets-from-base)
              :code $ quote $ let
                  reel $ assert-type
                    ReelState :base 1 :db 2 :records ([]) :merged? false
                    :: 'cumulo-reel.core/ReelState 'Number
                  updater $ fn (db op sid op-id op-time)
                    hint-fn $ {} (:return 'Number)
                      :args $ [] 'Number 'cumulo-reel.schema/Op 'String 'String 'Number
                    , db
                  op $ cumulo-reel.schema/Op :reel/reset
                  result $ reel-reducer reel updater op |s |o 0 false
                assert= 1 $ :db result
                assert= ([]) (:records result)
            %{} 'TestEntry (:name |updates-struct-reel)
              :code $ quote $ let
                  reel $ assert-type
                    ReelState :base 1 :db 1 :records ([]) :merged? false
                    :: 'cumulo-reel.core/ReelState 'Number
                  updater $ fn (db op sid op-id op-time)
                    hint-fn $ {} (:return 'Number)
                      :args $ [] 'Number 'cumulo-reel.schema/Op 'String 'String 'Number
                    inc db
                  op $ cumulo-reel.schema/Op :session/connect
                  result $ reel-reducer reel updater op |s |o 0 true
                assert= 2 $ :db result
                assert= 1 $ count $ :records result
        'reel-schema $ %{} 'CodeEntry
          :doc "|兼容空 Reel 模板：base/db 为 nil，records 为空，merged? 为 false，精确类型为 ReelState<Nil>。业务数据库应直接构造带具体 base/db 的 ReelState；不能把本空模板当成 ReelState<Db>。"
          :code $ quote $ def reel-schema
            ReelState :base nil :db nil :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'cumulo-reel.core/ReelState 'Nil
        'refresh-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh-reel (reel base updater)
            let
                next-base $ if (:merged? reel) (:base reel) base
                next-db $ play-records next-base (:records reel) updater
              struct-with reel (:base next-base) (:db next-db)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'cumulo-reel.core/ReelState 'Db) 'Db $ :: 'Fn
              {} (:return 'Db)
                :args $ [] 'Db 'Dynamic 'Dynamic 'Dynamic 'Dynamic
            :generics $ [] 'Db
            :return $ :: 'cumulo-reel.core/ReelState 'Db
          :tests $ [] $ %{} 'TestEntry (:name |preserves-database-type-and-merged-base)
            :code $ quote $ let
                reel $ assert-type
                  ReelState :base 1 :db 99 :records
                    [] $ [] 2 :opaque |legacy-id 3
                    , :merged? true
                  :: 'cumulo-reel.core/ReelState 'Number
                replay $ fn (db op sid op-id op-time)
                  hint-fn $ {}
                    :args $ [] 'Number 'Dynamic 'Dynamic 'Dynamic 'Dynamic
                    :return 'Number
                  + db $ decode-map-as op 'Number
                refreshed $ refresh-reel reel 1000 replay
              assert= 1 $ :base refreshed
              assert= 3 $ :db refreshed
              assert= (:records reel) (:records refreshed)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns cumulo-reel.core
    'cumulo-reel.partition $ %{} 'FileEntry
      :defs $ {}
        'PartitionAction $ %{} 'CodeEntry
          :doc "|One transport action for a connection: drop a revoked partition, or send its snapshot or delta chain."
          :code $ quote $ defenum PartitionAction ([] 'K 'V) (:drop 'K)
            :snapshot $ :: 'cumulo-reel.partition/PartitionState 'K 'V
            :deltas (:: 'cumulo-reel.partition/PartitionState 'K 'V) (:: 'List 'cumulo-reel.partition/PartitionDelta)
          :examples $ []
          :schema $ :: 'EnumDef
        'PartitionAdvance $ %{} 'CodeEntry
          :doc "|Outcome of projecting a new partition view: no change, one retained delta, or a reset that forces snapshots."
          :code $ quote $ defenum PartitionAdvance (:unchanged) (:delta 'cumulo-reel.partition/PartitionDelta 'recollect.diff/DiffStats) (:reset 'recollect.diff/DiffStats)
          :examples $ []
          :schema $ :: 'EnumDef
        'PartitionApplyCursor $ %{} 'CodeEntry
          :doc "|内部 patch 链累积状态：revision 保持 Number，view 在整条链完成后才交给业务 decoder 校验。"
          :code $ quote $ defenum PartitionApplyCursor (:ready 'Number 'Dynamic) (:failed 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'PartitionDelta $ %{} 'CodeEntry
          :doc "|One retained diff step of a partition, computed once and reused for every subscriber at its base revision."
          :code $ quote $ defstruct PartitionDelta (:base 'Number) (:revision 'Number)
            :changes $ :: 'List 'recollect.schema/change-op
          :examples $ []
          :schema $ :: 'StructDef
        'PartitionProgress $ %{} 'CodeEntry
          :doc "|Per-connection progress for one subscribed partition: acknowledged revision plus at most one unacknowledged send."
          :code $ quote $ defstruct PartitionProgress (:epoch 'Number) (:acked 'Number)
            :in-flight $ :: 'Option 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'PartitionSendPlan $ %{} 'CodeEntry
          :doc "|What one subscriber needs next: nothing, a full snapshot, or the retained contiguous delta chain from its acknowledged revision."
          :code $ quote $ defenum PartitionSendPlan (:idle) (:snapshot)
            :deltas $ :: 'List 'cumulo-reel.partition/PartitionDelta
          :examples $ []
          :schema $ :: 'EnumDef
        'PartitionSlot $ %{} 'CodeEntry
          :doc "|Client cache of one subscribed partition: lineage epoch, applied revision and validated view."
          :code $ quote $ defstruct PartitionSlot ([] 'V) (:epoch 'Number) (:revision 'Number) (:view 'V)
          :examples $ []
          :schema $ :: 'StructDef
        'PartitionState $ %{} 'CodeEntry
          :doc "|Server-owned hot state of one partition. epoch changes whenever revisions restart, so old acknowledgements never match a new lineage."
          :code $ quote $ defstruct PartitionState ([] 'K 'V) (:key 'K) (:epoch 'Number) (:revision 'Number) (:view 'V)
            :history $ :: 'List 'cumulo-reel.partition/PartitionDelta
          :examples $ []
          :schema $ :: 'StructDef
        'PartitionStep $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct PartitionStep ([] 'K 'V)
            :state $ :: 'cumulo-reel.partition/PartitionState 'K 'V
            :advance 'cumulo-reel.partition/PartitionAdvance
          :examples $ []
          :schema $ :: 'StructDef
        'ack-partition-progress $ %{} 'CodeEntry
          :doc "|Advance the baseline only for the matching epoch and pending revision; stale, duplicate, and reordered ACKs are ignored."
          :code $ quote $ defn ack-partition-progress (progress epoch revision)
            match (:in-flight progress)
              (:some pending)
                if
                  and
                    = epoch $ :epoch progress
                    = revision pending
                  struct-with progress (:acked revision)
                    :in-flight $ Option :none
                  , progress
              (:none) progress
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.partition/PartitionProgress)
            :args $ [] 'cumulo-reel.partition/PartitionProgress 'Number 'Number
          :tests $ [] $ %{} 'TestEntry (:name |single-pending-send-and-stale-acks)
            :code $ quote $ let
                s1 $ new-partition |lobby 7 $ test-view ([] |a)
                sent $ mark-partition-sent s1 $ Option :none
                s2 $ :state $ advance-partition s1
                  test-view $ [] |b
                  , test-budget 8 64
                wrong-epoch $ ack-partition-progress sent 6 1
                wrong-revision $ ack-partition-progress sent 7 2
                acked $ ack-partition-progress sent 7 1
              assert= (Option :some 1) (:in-flight sent)
              assert= (PartitionSendPlan :idle)
                plan-partition-send s2 $ Option :some sent
              assert= sent wrong-epoch
              assert= sent wrong-revision
              assert= 1 $ :acked acked
              assert= (Option :none) (:in-flight acked)
              assert= acked $ ack-partition-progress acked 7 1
              assert=
                PartitionSendPlan :deltas $ :history s2
                plan-partition-send s2 $ Option :some acked
              assert= 0 $ :acked $ release-partition-send sent
              assert= (Option :none)
                :in-flight $ release-partition-send sent
            :tags $ #{} :partition
        'advance-partition $ %{} 'CodeEntry
          :doc "|Diff the retained view against a new projection exactly once. Budget or operation overflow resets history instead of emitting a partial patch."
          :code $ quote $ defn advance-partition (state view budget history-limit operation-limit)
            match
              diff-twig-budgeted (:view state) view
                {} $ :key :id
                , budget
              (:budget-exceeded _reason stats) (reset-step state view stats)
              (:complete changes stats)
                cond
                    empty? changes
                    %{} PartitionStep (:state state)
                      :advance $ PartitionAdvance :unchanged
                  (> (count changes) operation-limit)
                    reset-step state view stats
                  true $ let
                      next-revision $ inc $ :revision state
                      delta $ %{} PartitionDelta
                        :base $ :revision state
                        :revision next-revision
                        :changes changes
                    %{} PartitionStep
                      :state $ struct-with state (:revision next-revision) (:view view)
                        :history $ trim-history
                          conj (:history state) delta
                          , history-limit
                      :advance $ PartitionAdvance :delta delta stats
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'cumulo-reel.partition/PartitionState 'K 'V) 'V 'recollect.diff/DiffBudget 'Number 'Number
            :generics $ [] 'K 'V
            :return $ :: 'cumulo-reel.partition/PartitionStep 'K 'V
          :tests $ []
            %{} 'TestEntry (:name |unchanged-view-keeps-revision)
              :code $ quote $ let
                  state $ new-partition |lobby 7 $ test-view ([] |a |b)
                  step $ advance-partition state
                    test-view $ [] |a |b
                    , test-budget 8 64
                assert= (PartitionAdvance :unchanged) (:advance step)
                assert= 1 $ :revision $ :state step
                assert= 0 $ count $ :history (:state step)
              :tags $ #{} :partition
            %{} 'TestEntry (:name |one-delta-serves-every-subscriber)
              :code $ quote $ let
                  state $ new-partition |lobby 7 $ test-view ([] |a |b)
                  step $ advance-partition state
                    test-view $ [] |a |c
                    , test-budget 8 64
                  next-state $ :state step
                  progress $ %{} PartitionProgress (:epoch 7) (:acked 1)
                    :in-flight $ Option :none
                  plans $ map (range 5)
                    fn (_idx)
                      hint-fn $ {}
                        :args $ [] 'Number
                        :return 'cumulo-reel.partition/PartitionSendPlan
                      plan-partition-send next-state $ Option :some progress
                match (:advance step)
                  (:delta delta _stats)
                    do
                      assert= 1 $ :base delta
                      assert= 2 $ :revision delta
                      assert= 1 $ count $ :history next-state
                      assert= 1 $ count $ distinct plans
                      assert=
                        Option :some $ PartitionSendPlan :deltas $ [] delta
                        first plans
                  _ $ raise |Expected-one-delta
              :tags $ #{} :partition
            %{} 'TestEntry (:name |operation-overflow-resets-history)
              :code $ quote $ let
                  s1 $ new-partition |lobby 7 $ test-view ([] |a)
                  s2 $ :state $ advance-partition s1
                    test-view $ [] |b
                    , test-budget 8 64
                  step $ advance-partition s2
                    test-view $ [] |x |y |z
                    , test-budget 8 0
                  s3 $ :state step
                match (:advance step)
                  (:reset _stats)
                    do
                      assert= 3 $ :revision s3
                      assert= 0 $ count $ :history s3
                      assert= (PartitionSendPlan :snapshot)
                        plan-partition-send s3 $ Option :some $ %{} PartitionProgress (:epoch 7) (:acked 2)
                          :in-flight $ Option :none
                  _ $ raise |Expected-reset
              :tags $ #{} :partition
        'apply-partition-deltas $ %{} 'CodeEntry
          :doc "|Apply a delta chain atomically: epoch and every base revision must match and decode-view must accept the final view, otherwise the cached slot is left untouched."
          :code $ quote $ defn apply-partition-deltas (slot epoch deltas decode-view)
            if
              not= epoch $ :epoch slot
              Result :err $ str "|Partition epoch mismatch: " epoch "| vs " $ :epoch slot
              let
                  applied $ foldl deltas
                    PartitionApplyCursor :ready (:revision slot) (:view slot)
                    fn (acc delta)
                      hint-fn $ {}
                        :args $ [] 'PartitionApplyCursor 'cumulo-reel.partition/PartitionDelta
                        :return 'PartitionApplyCursor
                      match acc
                        (:failed _) acc
                        (:ready revision view)
                          if
                            not= revision $ :base delta
                            PartitionApplyCursor :failed $ str "|Partition base mismatch: " (:base delta) "| vs " revision
                            match
                              .apply-to
                                patch-batch $ :changes delta
                                , view
                              (:ok next-view)
                                PartitionApplyCursor :ready (:revision delta) next-view
                              (:err error)
                                PartitionApplyCursor :failed $ patch-error-message error
                match applied
                  (:failed detail) (Result :err detail)
                  (:ready revision view)
                    match (decode-view view)
                      (:ok typed)
                        Result :ok $ %{} PartitionSlot (:epoch epoch) (:revision revision) (:view typed)
                      (:err detail) (Result :err detail)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'cumulo-reel.partition/PartitionSlot 'V) 'Number (:: 'List 'cumulo-reel.partition/PartitionDelta)
              :: 'Fn $ {}
                :args $ [] 'Dynamic
                :return $ :: 'Result 'V 'String
            :generics $ [] 'V
            :return $ :: 'Result (:: 'cumulo-reel.partition/PartitionSlot 'V) 'String
          :tests $ []
            %{} 'TestEntry (:name |atomic-chain-application)
              :code $ quote $ let
                  v1 $ test-view $ [] |a |b
                  s1 $ new-partition |lobby 7 v1
                  s2 $ :state $ advance-partition s1
                    test-view $ [] |a |c
                    , test-budget 8 64
                  s3 $ :state $ advance-partition s2
                    test-view $ [] |d |c |e
                    , test-budget 8 64
                  slot $ %{} PartitionSlot (:epoch 7) (:revision 1) (:view v1)
                assert=
                  Result :ok $ %{} PartitionSlot (:epoch 7) (:revision 3)
                    :view $ :view s3
                  apply-partition-deltas slot 7 (:history s3) decode-test-view
                assert= true $ match
                  apply-partition-deltas slot 8 (:history s3) decode-test-view
                  (:err detail) (includes? detail |epoch)
                  _ false
                assert= true $ match
                  apply-partition-deltas slot 7
                    slice (:history s3) 1 2
                    , decode-test-view
                  (:err detail) (includes? detail |base)
                  _ false
                assert= true $ match
                  apply-partition-deltas slot 7 (:history s3)
                    fn (_value)
                      hint-fn $ {}
                        :args $ [] 'Dynamic
                        :return $ :: 'Result (:: 'Map 'String 'String) 'String
                      Result :err |rejected-by-decoder
                  (:err detail) (includes? detail |rejected-by-decoder)
                  _ false
              :tags $ #{} :partition
            %{} 'TestEntry (:name |late-failure-and-final-only-decode)
              :code $ quote $ let
                  v1 $ test-view $ [] |a |b
                  s1 $ new-partition |lobby 7 v1
                  s2 $ :state $ advance-partition s1
                    test-view $ [] |a |c
                    , test-budget 8 64
                  s3 $ :state $ advance-partition s2
                    test-view $ [] |d |c |e
                    , test-budget 8 64
                  slot $ %{} PartitionSlot (:epoch 7) (:revision 1) (:view v1)
                  *decodes $ atom 0
                  decode $ fn (value)
                    hint-fn $ {}
                      :args $ [] 'Dynamic
                      :return $ :: 'Result (:: 'Map 'String 'String) 'String
                    reset! *decodes $ inc @*decodes
                    decode-test-view value
                  bad-chain $ []
                    option:unwrap $ nth (:history s3) 0
                    struct-with
                      option:unwrap $ nth (:history s3) 1
                      :base 99
                assert= true $ match (apply-partition-deltas slot 7 bad-chain decode)
                  (:err detail) (includes? detail |base)
                  _ false
                assert= 0 @*decodes
                assert= 1 $ :revision slot
                assert= v1 $ :view slot
                assert=
                  Result :ok $ %{} PartitionSlot (:epoch 7) (:revision 3)
                    :view $ :view s3
                  apply-partition-deltas slot 7 (:history s3) decode
                assert= 1 @*decodes
                assert= (Result :ok slot)
                  apply-partition-deltas slot 7
                    slice (:history s3) 0 0
                    , decode
                assert= 2 @*decodes
              :tags $ #{} :partition
        'connection-actions $ %{} 'CodeEntry
          :doc "|Plan one connection's transport work: drops for partitions it may no longer see, then snapshots or retained delta chains for authorized partitions."
          :code $ quote $ defn connection-actions (partitions progress desired)
            let
                drops $ -> (.to-list progress)
                  filter $ fn (pair)
                    hint-fn $ {}
                      :args $ [] 'Dynamic
                      :return 'Bool
                    let[] (key _progress) pair $ not $ includes? desired key
                  map $ fn (pair)
                    hint-fn $ {}
                      :args $ [] 'Dynamic
                      :return $ :: 'cumulo-reel.partition/PartitionAction 'K 'V
                    let[] (key _progress) pair $ PartitionAction :drop $ assert-type key 'K
                sends $ assert-type
                  foldl (.to-list desired)
                    assert-type ([])
                      :: 'List $ :: 'cumulo-reel.partition/PartitionAction 'K 'V
                    fn (acc key)
                      hint-fn $ {}
                        :args $ []
                          :: 'List $ :: 'cumulo-reel.partition/PartitionAction 'K 'V
                          , 'K
                        :return $ :: 'List $ :: 'cumulo-reel.partition/PartitionAction 'K 'V
                      match (get partitions key)
                        (:none) acc
                        (:some state)
                          let
                              progress-option $ get progress key
                            match (plan-partition-send state progress-option)
                              (:idle) acc
                              (:snapshot)
                                conj acc $ PartitionAction :snapshot state
                              (:deltas deltas)
                                conj acc $ PartitionAction :deltas state deltas
                  :: 'List $ :: 'cumulo-reel.partition/PartitionAction 'K 'V
              concat drops sends
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Map 'K $ :: 'cumulo-reel.partition/PartitionState 'K 'V
              :: 'Map 'K 'cumulo-reel.partition/PartitionProgress
              :: 'Set 'K
            :generics $ [] 'K 'V
            :return $ :: 'List $ :: 'cumulo-reel.partition/PartitionAction 'K 'V
          :tests $ [] $ %{} 'TestEntry (:name |drops-revoked-and-plans-authorized)
            :code $ quote $ let
                lobby $ new-partition |lobby 7 $ test-view ([] |a)
                lobby2 $ :state $ advance-partition lobby
                  test-view $ [] |b
                  , test-budget 8 64
                partitions $ assert-type
                  {} $ |lobby lobby2
                  :: 'Map 'String $ :: 'cumulo-reel.partition/PartitionState 'String $ :: 'Map 'String 'String
                acked $ %{} PartitionProgress (:epoch 7) (:acked 1)
                  :in-flight $ Option :none
                progress $ assert-type
                  {} (|lobby acked) (|board/gone acked)
                  :: 'Map 'String 'cumulo-reel.partition/PartitionProgress
                no-progress $ assert-type ({}) (:: 'Map 'String 'cumulo-reel.partition/PartitionProgress)
                actions $ connection-actions partitions progress $ #{} |lobby |user/u1
              assert= 2 $ count actions
              assert= true $ includes? actions $ PartitionAction :drop |board/gone
              assert= true $ includes? actions $ PartitionAction :deltas lobby2 (:history lobby2)
              assert=
                [] $ PartitionAction :snapshot lobby2
                connection-actions partitions no-progress $ #{} |lobby
            :tags $ #{} :partition
        'decode-test-view $ %{} 'CodeEntry
          :doc "|View decoder used by partition engine tests; applications pass their own nominal decoder to apply-partition-deltas."
          :code $ quote $ defn decode-test-view (value)
            try-decode-map-as value $ :: 'Map 'String 'String
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Result (:: 'Map 'String 'String) 'String
        'delta-chain $ %{} 'CodeEntry
          :doc "|Return the complete retained chain from an acknowledged revision to the current revision, or none when any link was trimmed or reset."
          :code $ quote $ defn delta-chain (history from to)
            match
              find-index history $ fn (delta)
                hint-fn $ {}
                  :args $ [] 'cumulo-reel.partition/PartitionDelta
                  :return 'Bool
                = from $ :base delta
              (:none) (Option :none)
              (:some index)
                let
                    chain $ &list:slice history index
                  match (last chain)
                    (:some tail)
                      if
                        = to $ :revision tail
                        Option :some chain
                        Option :none
                    (:none) (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'cumulo-reel.partition/PartitionDelta) 'Number 'Number
            :return $ :: 'Option $ :: 'List 'cumulo-reel.partition/PartitionDelta
          :tests $ [] $ %{} 'TestEntry (:name |replayed-chain-converges)
            :code $ quote $ let
                v1 $ test-view $ [] |a |b
                s1 $ new-partition |lobby 7 v1
                s2 $ :state $ advance-partition s1
                  test-view $ [] |a |c
                  , test-budget 8 64
                s3 $ :state $ advance-partition s2
                  test-view $ [] |d |c |e
                  , test-budget 8 64
              match
                delta-chain (:history s3) 1 3
                (:some chain)
                  let
                      replayed $ foldl chain v1 $ fn (acc delta)
                        hint-fn $ {}
                          :args $ [] 'Dynamic 'cumulo-reel.partition/PartitionDelta
                          :return 'Dynamic
                        match
                          .apply-to
                            patch-batch $ :changes delta
                            , acc
                          (:ok next) next
                          (:err error)
                            raise $ str |Patch-failed: error
                    assert= (:view s3) replayed
                    assert= (Option :none)
                      delta-chain (:history s3) 5 3
                (:none) (raise |Expected-complete-chain)
            :tags $ #{} :partition
        'mark-partition-sent $ %{} 'CodeEntry
          :doc "|Record one accepted send of the current revision. The acknowledged baseline only moves when the matching ACK arrives."
          :code $ quote $ defn mark-partition-sent (state progress-option)
            let
                acked $ match progress-option
                  (:some progress)
                    if
                      = (:epoch progress) (:epoch state)
                      :acked progress
                      , 0
                  (:none) 0
              %{} PartitionProgress
                :epoch $ :epoch state
                :acked acked
                :in-flight $ Option :some $ :revision state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.partition/PartitionProgress)
            :args $ [] (:: 'cumulo-reel.partition/PartitionState 'K 'V) (:: 'Option 'cumulo-reel.partition/PartitionProgress)
            :generics $ [] 'K 'V
        'new-partition $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-partition (key epoch view)
            %{} PartitionState (:key key) (:epoch epoch) (:revision 1) (:view view)
              :history $ []
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'K 'Number 'V
            :generics $ [] 'K 'V
            :return $ :: 'cumulo-reel.partition/PartitionState 'K 'V
        'plan-partition-send $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn plan-partition-send (state progress-option)
            match progress-option
              (:none) (PartitionSendPlan :snapshot)
              (:some progress)
                cond
                    option:some? $ :in-flight progress
                    PartitionSendPlan :idle
                  (not= (:epoch progress) (:epoch state))
                    PartitionSendPlan :snapshot
                  (= (:acked progress) (:revision state))
                    PartitionSendPlan :idle
                  true $ match
                    delta-chain (:history state) (:acked progress) (:revision state)
                    (:some deltas) (PartitionSendPlan :deltas deltas)
                    (:none) (PartitionSendPlan :snapshot)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.partition/PartitionSendPlan)
            :args $ [] (:: 'cumulo-reel.partition/PartitionState 'K 'V) (:: 'Option 'cumulo-reel.partition/PartitionProgress)
            :generics $ [] 'K 'V
          :tests $ []
            %{} 'TestEntry (:name |trimmed-history-falls-back-to-snapshot)
              :code $ quote $ let
                  s1 $ new-partition |lobby 7 $ test-view ([] |a)
                  s2 $ :state $ advance-partition s1
                    test-view $ [] |b
                    , test-budget 2 64
                  s3 $ :state $ advance-partition s2
                    test-view $ [] |c
                    , test-budget 2 64
                  s4 $ :state $ advance-partition s3
                    test-view $ [] |d
                    , test-budget 2 64
                  at $ fn (acked)
                    hint-fn $ {}
                      :args $ [] 'Number
                      :return 'cumulo-reel.partition/PartitionSendPlan
                    plan-partition-send s4 $ Option :some $ %{} PartitionProgress (:epoch 7) (:acked acked)
                      :in-flight $ Option :none
                assert= 4 $ :revision s4
                assert= 2 $ count $ :history s4
                assert= (PartitionSendPlan :snapshot) (at 1)
                assert=
                  PartitionSendPlan :deltas $ :history s4
                  at 2
                assert= (PartitionSendPlan :idle) (at 4)
                assert= (PartitionSendPlan :snapshot) (at 9)
                assert= (PartitionSendPlan :snapshot)
                  plan-partition-send s4 $ Option :none
              :tags $ #{} :partition
            %{} 'TestEntry (:name |epoch-change-forces-snapshot)
              :code $ quote $ let
                  state $ new-partition |lobby 8 $ test-view ([] |a)
                  stale $ %{} PartitionProgress (:epoch 7) (:acked 1)
                    :in-flight $ Option :none
                assert= (PartitionSendPlan :snapshot)
                  plan-partition-send state $ Option :some stale
                assert= 0 $ :acked $ mark-partition-sent state (Option :some stale)
              :tags $ #{} :partition
        'release-partition-send $ %{} 'CodeEntry
          :doc "|Forget a send that the transport did not accept or whose ACK may be lost, keeping the acknowledged baseline."
          :code $ quote $ defn release-partition-send (progress)
            struct-with progress $ :in-flight $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'cumulo-reel.partition/PartitionProgress)
            :args $ [] 'cumulo-reel.partition/PartitionProgress
        'reset-step $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reset-step (state view stats)
            %{} PartitionStep
              :state $ struct-with state
                :revision $ inc $ :revision state
                :view view
                :history $ []
              :advance $ PartitionAdvance :reset stats
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'cumulo-reel.partition/PartitionState 'K 'V) 'V 'recollect.diff/DiffStats
            :generics $ [] 'K 'V
            :return $ :: 'cumulo-reel.partition/PartitionStep 'K 'V
        'struct-tree-input $ %{} 'CodeEntry
          :doc "|Recursively turn untrusted struct trees, including struct payloads inside nominal enums, into maps so try-decode-map-as can validate them against a nominal schema."
          :code $ quote $ defn struct-tree-input (value)
            cond
                struct? value
                struct-tree-input $ &struct:to-map value
              (map? value)
                filter-map-kv
                  decode-map-as value $ :: 'Map 'Dynamic 'Dynamic
                  fn (key item)
                    hint-fn $ {}
                      :args $ [] 'Dynamic 'Dynamic
                      :return $ :: 'MapEntryDecision 'Dynamic 'Dynamic
                    MapEntryDecision :keep key $ struct-tree-input item
              (list? value)
                map
                  decode-map-as value $ :: 'List 'Dynamic
                  , struct-tree-input
              (enum? value)
                foldl
                  range 1 $ count value
                  , value $ fn (acc idx)
                    hint-fn $ {}
                      :args $ [] 'Dynamic 'Number
                      :return 'Dynamic
                    assoc acc idx $ struct-tree-input $ option:unwrap (nth value idx)
              true value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |structs-become-maps)
            :code $ quote $ let
                progress $ %{} PartitionProgress (:epoch 7) (:acked 1)
                  :in-flight $ Option :some 2
                input $ struct-tree-input progress
              assert= true $ map? input
              assert= (Result :ok progress) (try-decode-map-as input 'cumulo-reel.partition/PartitionProgress)
            :tags $ #{} :partition
        'test-budget $ %{} 'CodeEntry
          :doc "|Generous deterministic budget used by partition engine tests."
          :code $ quote $ def test-budget
            %{} DiffBudget
              :max-visited $ Option :some 10000
              :max-emitted $ Option :some 10000
          :examples $ []
          :schema $ :: 'recollect.diff/DiffBudget
        'test-view $ %{} 'CodeEntry
          :doc "|Deterministic keyed view used by partition engine tests: different labels give different views."
          :code $ quote $ defn test-view (labels)
            foldl labels
              assert-type ({}) (:: 'Map 'String 'String)
              fn (acc label)
                hint-fn $ {}
                  :args $ [] (:: 'Map 'String 'String) 'String
                  :return $ :: 'Map 'String 'String
                assoc acc label $ str |item- label
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'String
            :return $ :: 'Map 'String 'String
        'trim-history $ %{} 'CodeEntry
          :doc "|Keep only the newest deltas; subscribers older than the retained chain receive a snapshot."
          :code $ quote $ defn trim-history (history limit)
            let
                size $ count history
              if (> size limit)
                slice history (- size limit) size
                , history
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'cumulo-reel.partition/PartitionDelta) 'Number
            :return $ :: 'List 'cumulo-reel.partition/PartitionDelta
      :ns $ %{} 'NsEntry
        :doc "|Pure partition synchronization: one bounded diff per partition revision shared by every subscriber, epoch-scoped ACK progress, per-connection send planning, and atomic client-side delta application. Key and view types are generic."
        :code $ quote $ ns cumulo-reel.partition
          :require
            recollect.diff :refer $ diff-twig-budgeted DiffBudget DiffStats
            recollect.patch :refer $ patch-batch patch-error-message
    'cumulo-reel.schema $ %{} 'FileEntry
      :defs $ {}
        'ClientStore $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientStore (:session 'cumulo-reel.schema/Session) (:router 'cumulo-reel.schema/Router) (:logged-in? 'Bool) (:color 'String) (:count 'Number) (:reel-length 'Number)
            :name $ :: 'JsNullish 'String
            :user $ :: 'JsNullish 'cumulo-reel.schema/ClientUser
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
            :router $ :: 'JsNullish 'cumulo-reel.schema/Router
          :examples $ []
          :schema $ :: 'StructDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session
            :user-id $ :: 'JsNullish 'String
            :id $ :: 'JsNullish 'Number
            :nickname $ :: 'JsNullish 'String
            :router 'cumulo-reel.schema/Router
            :messages $ :: 'Map 'String 'cumulo-reel.schema/Message
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
            Database :sessions ({}) :users ({}) :pages $ {}
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Database
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            Router :name :home :title | :data ({}) :router nil
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Router
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            Session :user-id nil :id nil :nickname nil :router
              Router :name :home :title | :data nil :router nil
              , :messages $ {}
          :examples $ []
          :schema $ :: 'cumulo-reel.schema/Session
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            User :name | :id | :nickname | :avatar nil :password |
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
