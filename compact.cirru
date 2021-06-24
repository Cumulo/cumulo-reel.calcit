
{} (:package |cumulo-reel)
  :configs $ {} (:init-fn |cumulo-reel.app.client/main!) (:reload-fn |cumulo-reel.app.client/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/
    :version |0.0.6
  :files $ {}
    |cumulo-reel.app.updater.user $ {}
      :ns $ quote
        ns cumulo-reel.app.updater.user $ :require
          [] cumulo-util.core :refer $ [] find-first
          [] "\"md5" :default md5
      :defs $ {}
        |log-in $ quote
          defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ ->
                  vals $ :users db
                  .to-list
                  find $ fn (user)
                    and $ = username (:name user)
              update-in db ([] :sessions sid)
                fn (session)
                  if (some? maybe-user)
                    if
                      = (md5 password) (:password maybe-user)
                      assoc session :user-id $ :id maybe-user
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "|Wrong password for " username
                    update session :messages $ fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "|No user named: " username
        |log-out $ quote
          defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
        |sign-up $ quote
          defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  vals $ :users db
                  fn (user)
                    = username $ :name user
              if (some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    assoc messages op-id $ {} (:id op-id)
                      :text $ str "|Name is token: " username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
      :proc $ quote ()
    |cumulo-reel.core $ {}
      :ns $ quote (ns cumulo-reel.core)
      :defs $ {}
        |play-records $ quote
          defn play-records (db records updater)
            if (&list:empty? records) db $ let-sugar
                  [] op op-data sid op-id op-time
                  first records
                next-db $ updater db op op-data sid op-id op-time
              recur next-db (rest records) updater
        |reel-reducer $ quote
          defn reel-reducer (reel updater op op-data sid op-id op-time ? dev?)
            if
              starts-with? (str op) |:reel/
              merge reel $ case-default op
                do (println "|Unknown op:" op) reel
                :reel/reset $ {}
                  :records $ []
                  :db $ :base reel
                :reel/merge $ {}
                  :records $ []
                  :base $ :db reel
                  :merged? true
              let
                  msg-pack $ [] op op-data sid op-id op-time
                -> reel
                  update :records $ fn (records)
                    if dev? (conj records msg-pack) records
                  assoc :db $ updater (&record:get reel :db) op op-data sid op-id op-time
        |reel-schema $ quote
          def reel-schema $ %{} ReelState (:base nil) (:db nil)
            :records $ []
            :merged? false
        |refresh-reel $ quote
          defn refresh-reel (reel base updater)
            let
                next-base $ if (&record:get reel :merged?) (:base reel) base
              -> reel (assoc :base next-base)
                assoc :db $ play-records next-base (:records reel) updater
        |ReelState $ quote (defrecord ReelState :base :db :records :merged?)
      :proc $ quote ()
    |cumulo-reel.app.client $ {}
      :ns $ quote
        ns cumulo-reel.app.client $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] respo.cursor :refer $ [] update-states
          [] cumulo-reel.app.comp.container :refer $ [] comp-container
          [] cljs.reader :refer $ [] read-string
          [] cumulo-reel.schema :as schema
          [] cumulo-reel.app.config :as config
          [] ws-edn.client :refer $ [] ws-connect! ws-send!
          [] recollect.patch :refer $ [] patch-twig
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (.querySelector js/document |meta.respo-ssr)
        |dispatch! $ quote
          defn dispatch! (op op-data) (println |Dispatch op op-data)
            case op
              :states $ reset! *states (update-states @*states op-data)
              :effect/connect $ connect!
              op $ ws-send!
                {} (:kind :op) (:op op) (:data op-data)
        |*store $ quote
          defatom *store $ {}
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app! render!)
            add-watch *states :changes $ fn (states prev) (render-app! render!)
            .!addEventListener js/window "\"visibilitychange" $ fn (event)
              when
                and (nil? @*store) (= "\"visible" js/document.visibilityState)
                connect!
            println "|App started!"
        |*states $ quote
          defatom *states $ {}
        |connect! $ quote
          defn connect! () $ ws-connect!
            str "\"ws://" js/location.hostname "\":" $ :port config/site
            {}
              :on-open $ fn (event) (simulate-login!)
              :on-close $ fn (event) (reset! *store nil) (js/console.error "\"Lost connection!")
              :on-data $ fn (data)
                case (:kind data)
                  :patch $ let
                      changes $ :data data
                    js/console.log "\"Changes" $ to-js-data changes
                    reset! *store $ patch-twig @*store changes
                  (:kind data) (println "\"unknown kind:" data)
        |simulate-login! $ quote
          defn simulate-login! () $ let
              raw $ .getItem js/localStorage (:storage-key config/site)
            if (some? raw)
              do (println "|Found storage.")
                dispatch! :user/log-in $ parse-cirru-edn raw
              do $ println "|Found no storage."
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target
              comp-container (:states @*states) @*store
              , dispatch!
        |reload! $ quote
          defn reload! () (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!)
            add-watch *store :changes $ fn (store prev) (render-app! render!)
            add-watch *states :changes $ fn (states prev) (render-app! render!)
            render-app! render!
            println "|Code updated."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
      :proc $ quote ()
    |cumulo-reel.app.comp.navigation $ {}
      :ns $ quote
        ns cumulo-reel.app.comp.navigation $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> span div
          [] cumulo-reel.app.config :as config
      :defs $ {}
        |comp-navigation $ quote
          defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style
                merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name :home)
                  :style $ {} (:cursor :pointer)
                <> (:title config/site) nil
              div
                {}
                  :style $ {} (:cursor |pointer)
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name :profile)
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> count-members
      :proc $ quote ()
    |cumulo-reel.app.comp.container $ {}
      :ns $ quote
        ns cumulo-reel.app.comp.container $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> div span >> button
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo.comp.space :refer $ [] =<
          [] cumulo-reel.app.comp.navigation :refer $ [] comp-navigation
          [] cumulo-reel.app.comp.profile :refer $ [] comp-profile
          [] cumulo-reel.app.comp.login :refer $ [] comp-login
          [] cumulo-reel.comp.reel :refer $ [] comp-reel
          [] cumulo-reel.schema :as schema
          [] cumulo-reel.app.config :as config
          [] respo-message.comp.messages :refer $ [] comp-messages
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (states store)
            if (nil? store) (comp-offline)
              let
                  state $ :data
                    either states $ {}
                  session $ either (:session store) ({})
                  router $ either (:router store) ({})
                  router-data $ either (:data router) ({})
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/column)
                  comp-navigation (:logged-in? store) (:count store)
                  if (:logged-in? store)
                    case (:name router)
                      :home $ <> "\"Home"
                      :profile $ comp-profile (:user store) (:data router)
                      <> router
                    comp-login $ >>
                      either states $ {}
                      , :login
                  comp-status-color $ :color store
                  comp-messages
                    get-in store $ [] :session :messages
                    {}
                    fn (info d!) (d! :session/remove-message info)
                  when config/dev? $ comp-inspect |Store store
                    {} (:bottom 0) (:left 0) (:max-width |100%)
                  when config/dev? $ comp-reel (:reel-length store) ({})
        |comp-offline $ quote
          defcomp comp-offline () $ div
            {} $ :style
              merge ui/global ui/fullscreen ui/column-dispersive $ {}
                :background-color $ :theme config/site
            div $ {}
              :style $ {} (:height 0)
            div $ {}
              :style $ {}
                :background-image $ str "\"url(" (:icon config/site) "\")"
                :width 128
                :height 128
                :background-size :contain
            div
              {}
                :style $ {} (:cursor :pointer) (:line-height "\"32px")
                :on-click $ fn (e d!) (d! :effect/connect nil)
              <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
        |comp-status-color $ quote
          defcomp comp-status-color (color)
            div $ {}
              :style $ let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius "\"50%") (:opacity 0.6) (:pointer-events :none)
        |style-body $ quote
          def style-body $ {} (:padding "|8px 16px")
      :proc $ quote ()
    |cumulo-reel.app.comp.login $ {}
      :ns $ quote
        ns cumulo-reel.app.comp.login $ :require
          [] respo.core :refer $ [] defcomp <> div input button span
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] cumulo-reel.schema :as schema
          [] cumulo-reel.style :as style
          [] cumulo-reel.app.config :as config
      :defs $ {}
        |comp-login $ quote
          defcomp comp-login (states)
            let
                cursor $ :cursor states
                state $ either (:data states) initial-state
              div
                {} $ :style (merge ui/flex ui/center)
                div ({})
                  div
                    {} $ :style ({})
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username (:value e)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password (:value e)
                  =< nil 8
                  div
                    {} $ :style
                      {} $ :text-align :right
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge style/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge style/link
                      :on-click $ on-submit (:username state) (:password state) false
        |initial-state $ quote
          def initial-state $ {} (:username |) (:password |)
        |on-submit $ quote
          defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              .!setItem js/localStorage (:storage-key config/site)
                format-cirru-edn $ [] username password
      :proc $ quote ()
    |cumulo-reel.app.updater.session $ {}
      :ns $ quote
        ns cumulo-reel.app.updater.session $ :require ([] cumulo-reel.schema :as schema)
      :defs $ {}
        |connect $ quote
          defn connect (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} (:id sid)
        |disconnect $ quote
          defn disconnect (db op-data sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
        |remove-message $ quote
          defn remove-message (db op-data sid op-id op-time)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc messages $ :id op-data
      :proc $ quote ()
    |cumulo-reel.app.twig.user $ {}
      :ns $ quote
        ns cumulo-reel.app.twig.user $ :require
      :defs $ {}
        |twig-user $ quote
          defn twig-user (user) (dissoc user :password)
      :proc $ quote ()
    |cumulo-reel.app.twig.container $ {}
      :ns $ quote
        ns cumulo-reel.app.twig.container $ :require
          [] cumulo-reel.app.twig.user :refer $ [] twig-user
          [] "\"randomcolor" :as color
          [] memof.alias :refer $ [] memof-call
      :defs $ {}
        |twig-container $ quote
          defn twig-container (db session records)
            let
                logged-in? $ some? (:user-id session)
                router $ either (:router session) ({})
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
              merge base-data $ if logged-in?
                {}
                  :user $ memof-call twig-user
                    get-in db $ [] :users (:user-id session)
                  :router $ assoc router :data
                    case (:name router)
                      :home $ :pages db
                      :profile $ memof-call twig-members (:sessions db) (:users db)
                      (:name router) ({})
                  :count $ count (:sessions db)
                  :color $ color/randomColor
                , nil
        |twig-members $ quote
          defn twig-members (sessions users)
            -> sessions (to-pairs)
              map $ fn (pair)
                let[] (k session) pair $ [] k
                  get-in users $ [] (:user-id session) :name
              pairs-map
      :proc $ quote ()
    |cumulo-reel.comp.reel $ {}
      :ns $ quote
        ns cumulo-reel.comp.reel $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> span button div
          [] respo.comp.space :refer $ [] =<
      :defs $ {}
        |comp-reel $ quote
          defcomp comp-reel (size addional-styles)
            div
              {} $ :style
                merge
                  {} (:padding 8) (:position :absolute) (:bottom 8) (:right 8) (:font-size 12)
                    :color $ hsl 0 0 60
                  , addional-styles
              <> (str |Length: size) nil
              =< 8 nil
              span $ {} (:inner-text |Reset) (:style style-click)
                :on $ {}
                  :click $ fn (e d!) (d! :reel/reset nil)
              =< 8 nil
              span $ {} (:inner-text |Merge) (:style style-click)
                :on $ {}
                  :click $ fn (e d!) (d! :reel/merge nil)
              =< 8 nil
              span $ {} (:inner-text |Persist) (:style style-click)
                :on $ {}
                  :click $ fn (e d!) (d! :effect/persist nil)
        |style-click $ quote
          def style-click $ {} (:cursor :pointer)
            :color $ hsl 200 80 80
            :font-size :12
            :text-decoration :underline
      :proc $ quote ()
    |cumulo-reel.style $ {}
      :ns $ quote
        ns cumulo-reel.style $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo-ui.core :as ui
      :defs $ {}
        |link $ quote
          def link $ {} (:text-decoration :underline) (:cursor :pointer)
            :color $ hsl 240 80 80
            :font-family ui/font-fancy
      :proc $ quote ()
    |cumulo-reel.app.config $ {}
      :ns $ quote
        ns cumulo-reel.app.config $ :require
          [] cumulo-util.core :refer $ [] get-env!
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:port 5021) (:title "\"Cumulo") (:icon "\"http://cdn.tiye.me/logo/cumulo.png") (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/cumulo-reel/") (:theme "\"#eeeeff") (:storage-key "\"reel-storage") (:storage-file "\"storage.cirru")
      :proc $ quote ()
    |cumulo-reel.app.comp.profile $ {}
      :ns $ quote
        ns cumulo-reel.app.comp.profile $ :require
          [] respo.util.format :refer $ [] hsl
          [] cumulo-reel.schema :as schema
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp list-> <> span div button
          [] respo.comp.space :refer $ [] =<
          [] cumulo-reel.app.config :as config
      :defs $ {}
        |comp-profile $ quote
          defcomp comp-profile (user members)
            div
              {} $ :style
                merge ui/flex $ {} (:padding 16)
              div
                {} $ :style
                  {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " (:name user)
              =< nil 16
              div
                {} $ :style ui/row
                <> "\"Members:"
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> members (.to-list)
                    map $ fn (pair)
                      let[] (k username) pair $ [] k
                        div
                          {} $ :style
                            {} (:padding "\"0 8px")
                              :border $ str "\"1px solid " (hsl 0 0 80)
                              :border-radius "\"16px"
                              :margin "\"0 4px"
                          <> username
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      .replace js/location $ str js/location.origin "\"?time=" (.now js/Date)
                  <> "\"Refresh"
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button
                      {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                      .removeItem js/localStorage $ :storage-key config/site
                  <> "\"Log out"
      :proc $ quote ()
    |cumulo-reel.schema $ {}
      :ns $ quote (ns cumulo-reel.schema)
      :defs $ {}
        |database $ quote
          def database $ {}
            :sessions $ do session ({})
            :users $ do user ({})
        |router $ quote
          def router $ {} (:name nil) (:title nil)
            :data $ {}
            :router nil
        |session $ quote
          def session $ {} (:user-id nil) (:id nil) (:nickname nil)
            :router $ do router
              {} (:name :home) (:data nil) (:router nil)
            :messages $ {}
        |user $ quote
          def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
      :proc $ quote ()
    |cumulo-reel.app.updater.router $ {}
      :ns $ quote (ns cumulo-reel.app.updater.router)
      :defs $ {}
        |change $ quote
          defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
      :proc $ quote ()
    |cumulo-reel.app.updater $ {}
      :ns $ quote
        ns cumulo-reel.app.updater $ :require ([] cumulo-reel.app.updater.session :as session) ([] cumulo-reel.app.updater.user :as user) ([] cumulo-reel.app.updater.router :as router) ([] cumulo-reel.schema :as schema)
          [] respo-message.updater :refer $ [] update-messages
      :defs $ {}
        |updater $ quote
          defn updater (db op op-data sid op-id op-time)
            let
                f $ case-default op
                  do (println "|Unknown op:" op)
                    fn (db & args) db
                  :session/connect session/connect
                  :session/disconnect session/disconnect
                  :session/remove-message session/remove-message
                  :user/log-in user/log-in
                  :user/sign-up user/sign-up
                  :user/log-out user/log-out
                  :router/change router/change
              f db op-data sid op-id op-time
      :proc $ quote ()
    |cumulo-reel.app.server $ {}
      :ns $ quote
        ns cumulo-reel.app.server $ :require ([] cumulo-reel.schema :as schema)
          [] cumulo-reel.app.updater :refer $ [] updater
          [] cljs.reader :refer $ [] read-string
          [] cumulo-reel.core :refer $ [] reel-reducer refresh-reel reel-schema
          [] "\"fs" :as fs
          [] "\"path" :as path
          [] cumulo-reel.app.config :as config
          [] cumulo-util.file :refer $ [] write-mildly! get-backup-path! merge-local-edn!
          [] cumulo-util.core :refer $ [] id! repeat! unix-time! delay!
          [] cumulo-reel.app.twig.container :refer $ [] twig-container
          [] recollect.diff :refer $ [] diff-twig
          [] ws-edn.server :refer $ [] wss-serve! wss-send! wss-each!
          [] recollect.twig :refer $ [] new-twig-loop! clear-twig-caches!
      :defs $ {}
        |dispatch! $ quote
          defn dispatch! (op op-data sid)
            let
                op-id $ id!
                op-time $ unix-time!
              if config/dev? $ println |Dispatch! (str op) op-data sid
              cond
                  = op :effect/persist
                  persist-db!
                true $ reset! *reel (reel-reducer @*reel updater op op-data sid op-id op-time config/dev?)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            run-server!
            render-loop!
            js/process.on "\"SIGINT" on-exit!
            repeat! 600 $ fn () (persist-db!)
            println "\"Server started."
        |run-server! $ quote
          defn run-server! () $ wss-serve! (:port config/site)
            {}
              :on-open $ fn (sid socket) (dispatch! :session/connect nil sid) (js/console.info "|New client.")
              :on-data $ fn (sid action)
                case (:kind action)
                  :op $ dispatch! (:op action) (:data action) sid
                  (:kind action) (println "\"unknown data" action)
              :on-close $ fn (sid event) (js/console.warn "|Client closed!") (dispatch! :session/disconnect nil sid)
              :on-error $ fn (error) (.error js/console error)
        |sync-clients! $ quote
          defn sync-clients! (reel)
            wss-each! $ fn (sid socket)
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get-in db ([] :sessions sid)
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store
                    {} $ :key :id
                println "|Changes for" sid |: changes $ count records
                if
                  not= changes $ []
                  do
                    wss-send! sid $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            new-twig-loop!
        |*client-caches $ quote
          defatom *client-caches $ {}
        |on-exit! $ quote
          defn on-exit! (code ? arg) (persist-db!)
            ; println "\"exit code is:" $ pr-str code
            js/process.exit
        |storage-file $ quote
          def storage-file $ path/join js/__dirname (:storage-file config/site)
        |*reel $ quote
          defatom *reel $ merge reel-schema
            {} (:base @*initial-db) (:db @*initial-db)
        |*initial-db $ quote
          defatom *initial-db $ merge-local-edn! schema/database storage-file
            fn (found?)
              if found? (println "\"Found local EDN data") (println "\"Found no data")
        |persist-db! $ quote
          defn persist-db! () $ let
              file-content $ format-cirru-edn
                assoc (:db @*reel) :sessions $ {}
              storage-path storage-file
              backup-path $ get-backup-path!
            write-mildly! storage-path file-content
            write-mildly! backup-path file-content
        |reload! $ quote
          defn reload! () (println "|Code updated.") (clear-twig-caches!)
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            sync-clients! @*reader-reel
        |*reader-reel $ quote (defatom *reader-reel @*reel)
        |render-loop! $ quote
          defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            delay! 0.2 render-loop!
      :proc $ quote ()
