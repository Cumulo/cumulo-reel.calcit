
{} (:package |cumulo-reel)
  :configs $ {} (:init-fn |cumulo-reel.app.client/main!) (:port 6001) (:reload-fn |cumulo-reel.app.client/reload!) (:storage-key |calcit.cirru) (:version |0.0.11)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/
  :entries $ {}
    :server $ {} (:init-fn |cumulo-reel.app.server/main!) (:reload-fn |cumulo-reel.app.server/reload!)
      :modules $ [] |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |lilac/ |calcit.std/ |calcit-wss/
  :files $ {}
    |cumulo-reel.app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1614311842561) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*states)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |{})
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1614311835543) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
              |r $ %{} :Expr (:at 1614332858888) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614332859427) (:by |B1y7Rc-Zz) (:text |{})
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                  |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614311887509) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1614311907179) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                      |l $ %{} :Leaf (:at 1614311907989) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                      |n $ %{} :Leaf (:at 1614311901344) (:by |B1y7Rc-Zz) (:text "|\":")
                      |r $ %{} :Expr (:at 1614311893119) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614311894394) (:by |B1y7Rc-Zz) (:text |:port)
                          |j $ %{} :Leaf (:at 1614311897770) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:on-open)
                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614342641282) (:by |B1y7Rc-Zz) (:text |event)
                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                      |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:on-close)
                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |event)
                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reset!)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |nil)
                              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:on-data)
                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |data)
                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614344770700) (:by |B1y7Rc-Zz) (:text |case)
                                  |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:kind)
                                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |data)
                                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:patch)
                                      |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |let)
                                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |changes)
                                                  |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:data)
                                                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |data)
                                          |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                              |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |changes)
                                          |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reset!)
                                              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*store)
                                                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |changes)
                                  |v $ %{} :Expr (:at 1614344774499) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1614344774107) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614344774107) (:by |B1y7Rc-Zz) (:text |:kind)
                                          |j $ %{} :Leaf (:at 1614344774107) (:by |B1y7Rc-Zz) (:text |data)
                                      |j $ %{} :Expr (:at 1614344777740) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614344777740) (:by |B1y7Rc-Zz) (:text |println)
                                          |j $ %{} :Leaf (:at 1614344777740) (:by |B1y7Rc-Zz) (:text "|\"unknown kind:")
                                          |r $ %{} :Leaf (:at 1614344777740) (:by |B1y7Rc-Zz) (:text |data)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op)
                  |b $ %{} :Leaf (:at 1688322603518) (:by |B1y7Rc-Zz) (:text |?)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op-data)
              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text ||Dispatch)
                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op)
                  |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op-data)
              |x $ %{} :Expr (:at 1688322582123) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1688322582644) (:by |B1y7Rc-Zz) (:text |if)
                  |L $ %{} :Expr (:at 1688322584458) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688322586473) (:by |B1y7Rc-Zz) (:text |list?)
                      |b $ %{} :Leaf (:at 1688322586865) (:by |B1y7Rc-Zz) (:text |op)
                  |P $ %{} :Expr (:at 1688322588587) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688322589462) (:by |B1y7Rc-Zz) (:text |recur)
                      |b $ %{} :Expr (:at 1688322595368) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322596244) (:by |B1y7Rc-Zz) (:text |::)
                          |X $ %{} :Leaf (:at 1688322609649) (:by |B1y7Rc-Zz) (:text |:states)
                          |b $ %{} :Leaf (:at 1688322596749) (:by |B1y7Rc-Zz) (:text |op)
                          |h $ %{} :Leaf (:at 1688322600066) (:by |B1y7Rc-Zz) (:text |op-data)
                  |T $ %{} :Expr (:at 1688322764779) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688322766119) (:by |B1y7Rc-Zz) (:text |if)
                      |L $ %{} :Expr (:at 1688322766711) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322767680) (:by |B1y7Rc-Zz) (:text |tag?)
                          |b $ %{} :Leaf (:at 1688322768790) (:by |B1y7Rc-Zz) (:text |op)
                      |P $ %{} :Expr (:at 1688322769570) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322770365) (:by |B1y7Rc-Zz) (:text |recur)
                          |b $ %{} :Expr (:at 1688322772166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688322772433) (:by |B1y7Rc-Zz) (:text |::)
                              |b $ %{} :Leaf (:at 1688322772975) (:by |B1y7Rc-Zz) (:text |op)
                              |h $ %{} :Leaf (:at 1688322774165) (:by |B1y7Rc-Zz) (:text |op-data)
                      |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322616570) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |f $ %{} :Leaf (:at 1688322667130) (:by |B1y7Rc-Zz) (:text |op)
                          |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1688322617812) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:states)
                                  |b $ %{} :Leaf (:at 1688322620198) (:by |B1y7Rc-Zz) (:text |cursor)
                                  |h $ %{} :Leaf (:at 1688322620608) (:by |B1y7Rc-Zz) (:text |s)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reset!)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*states)
                                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876426315) (:by |B1y7Rc-Zz) (:text |update-states)
                                      |j $ %{} :Leaf (:at 1584876431039) (:by |B1y7Rc-Zz) (:text |@*states)
                                      |r $ %{} :Leaf (:at 1688322622888) (:by |B1y7Rc-Zz) (:text |cursor)
                                      |t $ %{} :Leaf (:at 1688322623169) (:by |B1y7Rc-Zz) (:text |s)
                          |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1688322624529) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
                          |x $ %{} :Expr (:at 1614344846193) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688322652007) (:by |B1y7Rc-Zz) (:text |_)
                              |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-send!)
                                  |b $ %{} :Leaf (:at 1688322654481) (:by |B1y7Rc-Zz) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"release")
              |w $ %{} :Expr (:at 1688409755774) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688409756208) (:by |B1y7Rc-Zz) (:text |if)
                  |b $ %{} :Leaf (:at 1688409758186) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1688409758877) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688409764850) (:by |B1y7Rc-Zz) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ssr?)
                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
              |y $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
              |yT $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
              |yj $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1614311953386) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614311953956) (:by |B1y7Rc-Zz) (:text |fn)
                      |L $ %{} :Expr (:at 1614311954212) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614311954843) (:by |B1y7Rc-Zz) (:text |store)
                          |j $ %{} :Leaf (:at 1614311955602) (:by |B1y7Rc-Zz) (:text |prev)
                      |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                          |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
              |yr $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*states)
                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1614311959070) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614311959595) (:by |B1y7Rc-Zz) (:text |fn)
                      |L $ %{} :Expr (:at 1614311959855) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614311962928) (:by |B1y7Rc-Zz) (:text |states)
                          |j $ %{} :Leaf (:at 1614311961304) (:by |B1y7Rc-Zz) (:text |prev)
                      |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                          |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
              |yv $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |j $ %{} :Leaf (:at 1688409736768) (:by |B1y7Rc-Zz) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"visibilitychange")
                  |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614342228171) (:by |B1y7Rc-Zz) (:text |event)
                      |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |when)
                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |and)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |nil?)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*store)
                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |=)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"visible")
                                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/document.visibilityState)
                          |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
              |yx $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |mount-target)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |.querySelector)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/document)
                  |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text ||.app)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
              |t $ %{} :Expr (:at 1614345128226) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614345130519) (:by |B1y7Rc-Zz) (:text |remove-watch)
                  |j $ %{} :Leaf (:at 1614345132065) (:by |B1y7Rc-Zz) (:text |*store)
                  |r $ %{} :Leaf (:at 1614345134229) (:by |B1y7Rc-Zz) (:text |:changes)
              |u $ %{} :Expr (:at 1614345128226) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614345130519) (:by |B1y7Rc-Zz) (:text |remove-watch)
                  |j $ %{} :Leaf (:at 1614345144308) (:by |B1y7Rc-Zz) (:text |*states)
                  |r $ %{} :Leaf (:at 1614345134229) (:by |B1y7Rc-Zz) (:text |:changes)
              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |clear-cache!)
              |vT $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |*store)
                  |r $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |store)
                          |j $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |render-app!)
                          |j $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |render!)
              |w $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |*states)
                  |r $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |states)
                          |j $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |render-app!)
                          |j $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |render!)
              |x $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
              |y $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |renderer)
              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |renderer)
                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |mount-target)
                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |comp-container)
                      |j $ %{} :Expr (:at 1614345090269) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1614345159686) (:by |B1y7Rc-Zz) (:text |:states)
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*states)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*store)
                  |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |simulate-login!)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |raw)
                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1688409208865) (:by |B1y7Rc-Zz) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |raw)
                      |r $ %{} :Expr (:at 1688409228743) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1688409229522) (:by |B1y7Rc-Zz) (:text |let)
                          |L $ %{} :Expr (:at 1688409229792) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1688409229933) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688409230618) (:by |B1y7Rc-Zz) (:text |pair)
                                  |b $ %{} :Expr (:at 1688409233091) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1688409233091) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                      |b $ %{} :Leaf (:at 1688409233091) (:by |B1y7Rc-Zz) (:text |raw)
                          |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |do)
                              |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||Found storage.")
                              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                  |j $ %{} :Expr (:at 1688409215021) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1688409215813) (:by |B1y7Rc-Zz) (:text |::)
                                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                                      |b $ %{} :Expr (:at 1688409235860) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1688409236285) (:by |B1y7Rc-Zz) (:text |nth)
                                          |b $ %{} :Leaf (:at 1688409238076) (:by |B1y7Rc-Zz) (:text |pair)
                                          |h $ %{} :Leaf (:at 1688409238286) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Expr (:at 1688409235860) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1688409236285) (:by |B1y7Rc-Zz) (:text |nth)
                                          |b $ %{} :Leaf (:at 1688409238076) (:by |B1y7Rc-Zz) (:text |pair)
                                          |h $ %{} :Leaf (:at 1688409242121) (:by |B1y7Rc-Zz) (:text |1)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||Found no storage.")
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ssr?)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |some?)
                  |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |.querySelector)
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/document)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text ||meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.client)
            |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
                        |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1584876438586) (:by |B1y7Rc-Zz) (:text |update-states)
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1624105988245) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.container)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |comp-container)
                |x $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |cljs.reader)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |read-string)
                |y $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |cumulo-reel.schema)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |schema)
                |yT $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1624107787377) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |config)
                |yj $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                        |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-send!)
                |yr $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |patch-twig)
    |cumulo-reel.app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil?)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                  |r $ %{} :Expr (:at 1521951403873) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521951417580) (:by |root) (:text |comp-offline)
                  |v $ %{} :Expr (:at 1614342371976) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1614342373074) (:by |B1y7Rc-Zz) (:text |let)
                      |L $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |state)
                              |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:data)
                                  |j $ %{} :Expr (:at 1614345503256) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1614345504641) (:by |B1y7Rc-Zz) (:text |either)
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |states)
                                      |j $ %{} :Expr (:at 1614345505272) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614345505563) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |session)
                              |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either)
                                  |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:session)
                                      |j $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |store)
                                  |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{})
                          |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router)
                              |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either)
                                  |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:router)
                                      |j $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |store)
                                  |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{})
                          |v $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router-data)
                              |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either)
                                  |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:data)
                                      |j $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router)
                                  |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{})
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819436301) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |L $ %{} :Leaf (:at 1657819458611) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |j $ %{} :Leaf (:at 1657819460957) (:by |B1y7Rc-Zz) (:text |css/global)
                                      |r $ %{} :Leaf (:at 1657819462578) (:by |B1y7Rc-Zz) (:text |css/fullscreen)
                                      |v $ %{} :Leaf (:at 1657819464616) (:by |B1y7Rc-Zz) (:text |css/column)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523120265747) (:by |root) (:text |comp-navigation)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1523120353961) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120357277) (:by |root) (:text |:count)
                                  |j $ %{} :Leaf (:at 1523120358953) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819476883) (:by |B1y7Rc-Zz) (:text |case-default)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                  |l $ %{} :Expr (:at 1657819477863) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819477863) (:by |B1y7Rc-Zz) (:text |<>)
                                      |b $ %{} :Leaf (:at 1657819477863) (:by |B1y7Rc-Zz) (:text |router)
                                  |n $ %{} :Expr (:at 1525106918943) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525106921967) (:by |root) (:text |:home)
                                      |j $ %{} :Expr (:at 1539195346168) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539195347113) (:by |root) (:text |<>)
                                          |j $ %{} :Leaf (:at 1539195348244) (:by |root) (:text "|\"Home")
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                          |r $ %{} :Expr (:at 1524070838527) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070840507) (:by |root) (:text |:data)
                                              |j $ %{} :Leaf (:at 1524070841286) (:by |root) (:text |router)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                  |j $ %{} :Expr (:at 1584876250029) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1584876250765) (:by |B1y7Rc-Zz) (:text |>>)
                                      |T $ %{} :Expr (:at 1614345574064) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1614345575560) (:by |B1y7Rc-Zz) (:text |either)
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                                          |j $ %{} :Expr (:at 1614345576082) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1614345576393) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Leaf (:at 1584876252751) (:by |B1y7Rc-Zz) (:text |:login)
                          |w $ %{} :Expr (:at 1524279203814) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524279211924) (:by |root) (:text |comp-status-color)
                              |j $ %{} :Expr (:at 1524279213788) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279214588) (:by |root) (:text |:color)
                                  |j $ %{} :Leaf (:at 1524279215366) (:by |root) (:text |store)
                          |y $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529230769433) (:by |root) (:text |comp-messages)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                                      |r $ %{} :Leaf (:at 1529230765972) (:by |root) (:text |:messages)
                              |n $ %{} :Expr (:at 1529230771518) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529230771976) (:by |root) (:text |{})
                              |p $ %{} :Expr (:at 1529230772453) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529230773090) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1529230773925) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529230775135) (:by |root) (:text |info)
                                      |j $ %{} :Leaf (:at 1529230778336) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1529230780551) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529230781631) (:by |root) (:text |d!)
                                      |j $ %{} :Expr (:at 1688409609693) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688409610422) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1529231458145) (:by |root) (:text |:session/remove-message)
                                          |b $ %{} :Leaf (:at 1688409612701) (:by |B1y7Rc-Zz) (:text |info)
                          |yD $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |comp-inspect)
                                  |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text ||Store)
                                  |r $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |store)
                                  |v $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |0)
                                      |r $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:left)
                                          |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |0)
                                      |v $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text ||100%)
                          |yT $ %{} :Expr (:at 1521911502552) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911507241) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1624107870996) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                  |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                      |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519314599832) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521951399872) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |comp-offline)
              |n $ %{} :Expr (:at 1521951400852) (:by |root)
                :data $ {}
              |r $ %{} :Expr (:at 1519314599832) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/global)
                              |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/fullscreen)
                              |v $ %{} :Leaf (:at 1535564672966) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive)
                              |x $ %{} :Expr (:at 1535565529682) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535565530129) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535565530397) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565536637) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1535565541430) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535565542473) (:by |B1y7Rc-Zz) (:text |:theme)
                                          |j $ %{} :Leaf (:at 1535565546181) (:by |B1y7Rc-Zz) (:text |config/site)
                  |l $ %{} :Expr (:at 1535564983624) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565362594) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564984947) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564985316) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564985627) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564987644) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535565371727) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1535565373172) (:by |B1y7Rc-Zz) (:text |{})
                                  |T $ %{} :Expr (:at 1535564988232) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564988883) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565472380) (:by |B1y7Rc-Zz) (:text |0)
                  |n $ %{} :Expr (:at 1535564675845) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535564681122) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564681371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564681741) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564681981) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564682940) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535564683257) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535564683549) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535564683815) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564692026) (:by |B1y7Rc-Zz) (:text |:background-image)
                                      |j $ %{} :Expr (:at 1535564692507) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535564693703) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1535564698133) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                          |n $ %{} :Expr (:at 1535564699933) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1535564708041) (:by |B1y7Rc-Zz) (:text |:icon)
                                              |j $ %{} :Leaf (:at 1535564775736) (:by |B1y7Rc-Zz) (:text |config/site)
                                          |r $ %{} :Leaf (:at 1535564696349) (:by |B1y7Rc-Zz) (:text "|\")")
                                  |r $ %{} :Expr (:at 1535564726919) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564728738) (:by |B1y7Rc-Zz) (:text |:width)
                                      |j $ %{} :Leaf (:at 1535565090611) (:by |B1y7Rc-Zz) (:text |128)
                                  |v $ %{} :Expr (:at 1535564733832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564736588) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565093711) (:by |B1y7Rc-Zz) (:text |128)
                                  |x $ %{} :Expr (:at 1535564741439) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564745512) (:by |B1y7Rc-Zz) (:text |:background-size)
                                      |j $ %{} :Leaf (:at 1535564749164) (:by |B1y7Rc-Zz) (:text |:contain)
                  |r $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565436682) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1535565239666) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565243041) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1535565498969) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |r $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584876456980) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584876457500) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584876457832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876458297) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584876459047) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876456497) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:effect/connect)
                                      |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1535564856884) (:by |B1y7Rc-Zz) (:text "||No connection...")
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1535565688657) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1535565156897) (:by |B1y7Rc-Zz) (:text |24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524279216692) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524279218316) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524279216692) (:by |root) (:text |comp-status-color)
              |r $ %{} :Expr (:at 1524279216692) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279220380) (:by |root) (:text |color)
              |v $ %{} :Expr (:at 1524279221052) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279221503) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1524279221753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524279222145) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657819578327) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819580585) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657819584102) (:by |B1y7Rc-Zz) (:text |css-status-color)
                      |j $ %{} :Expr (:at 1524279222434) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524279223333) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1533835122554) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1533835132715) (:by |B1y7Rc-Zz) (:text |let)
                              |L $ %{} :Expr (:at 1533835132973) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1533835133406) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835134066) (:by |B1y7Rc-Zz) (:text |size)
                                      |j $ %{} :Leaf (:at 1533835156000) (:by |B1y7Rc-Zz) (:text |24)
                              |T $ %{} :Expr (:at 1524279223555) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279223903) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524279224175) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279228958) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1533835137743) (:by |B1y7Rc-Zz) (:text |size)
                                  |r $ %{} :Expr (:at 1524279231457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279232432) (:by |root) (:text |:height)
                                      |j $ %{} :Leaf (:at 1533835138984) (:by |B1y7Rc-Zz) (:text |size)
                                  |yT $ %{} :Expr (:at 1524279259074) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279265891) (:by |root) (:text |:background-color)
                                      |j $ %{} :Leaf (:at 1524279319762) (:by |root) (:text |color)
        |css-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657819584407) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819586131) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657819584407) (:by |B1y7Rc-Zz) (:text |css-status-color)
              |h $ %{} :Expr (:at 1657819584407) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657819587256) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657819587546) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819588718) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |{})
                          |l $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:position)
                              |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:absolute)
                          |o $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |60)
                          |q $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:left)
                              |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |8)
                          |t $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text "|\"50%")
                          |u $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |0.6)
                          |v $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:pointer-events)
                              |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:none)
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-body)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||8px 16px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.app.comp.container)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657819443260) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819444874) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657819445299) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657819445903) (:by |B1y7Rc-Zz) (:text |css)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962164790) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |xT $ %{} :Leaf (:at 1584876145776) (:by |B1y7Rc-Zz) (:text |>>)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                |xT $ %{} :Expr (:at 1657819447054) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819448678) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657819450272) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819450577) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819451738) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624106007135) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.navigation)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1523120276563) (:by |root) (:text |comp-navigation)
                |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624106009014) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.profile)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624106012304) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.login)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |yx $ %{} :Expr (:at 1507828725931) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507828730719) (:by |root) (:text |cumulo-reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507828731528) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507828731735) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507828733743) (:by |root) (:text |comp-reel)
                |yyj $ %{} :Expr (:at 1529230793085) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529230796079) (:by |root) (:text |cumulo-reel.schema)
                    |r $ %{} :Leaf (:at 1529230796499) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529230797248) (:by |root) (:text |schema)
                |yyr $ %{} :Expr (:at 1535564714854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624107817456) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                    |r $ %{} :Leaf (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config)
                |yyv $ %{} :Expr (:at 1614332430274) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1614332430274) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |comp-messages)
    |cumulo-reel.app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584876236437) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584876238993) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1584876240666) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584876244118) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1584876244890) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614344810834) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
                  |r $ %{} :Expr (:at 1519368111046) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1519368111912) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1519368112156) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368113787) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519368114295) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519368116587) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519368119982) (:by |root)
                                :data $ {}
                                  |5 $ %{} :Leaf (:at 1519368124581) (:by |root) (:text |merge)
                                  |D $ %{} :Leaf (:at 1519368123630) (:by |root) (:text |ui/flex)
                                  |T $ %{} :Leaf (:at 1519368119197) (:by |root) (:text |ui/center)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Username)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302367311) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584876211461) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584876214648) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1584876216153) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |j $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1584876220512) (:by |B1y7Rc-Zz) (:text |:username)
                                                          |v $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |e)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Password)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302370752) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1584876233616) (:by |B1y7Rc-Zz) (:text |:password)
                                                          |v $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |e)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1519368067092) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519368067501) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519368135916) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519368141461) (:by |root) (:text |:text-align)
                                              |j $ %{} :Leaf (:at 1519368142240) (:by |root) (:text |:right)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367924372) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Sign up")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                              |j $ %{} :Leaf (:at 1519368006916) (:by |root) (:text |style/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302375364) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |true)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367939048) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1519368084428) (:by |root) (:text "||Log in")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                              |j $ %{} :Leaf (:at 1519368006916) (:by |root) (:text |style/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302381488) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |false)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
                          |r $ %{} :Expr (:at 1688409266757) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688409267519) (:by |B1y7Rc-Zz) (:text |::)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/sign-up)
                              |b $ %{} :Leaf (:at 1688409269560) (:by |B1y7Rc-Zz) (:text |username)
                              |h $ %{} :Leaf (:at 1688409270823) (:by |B1y7Rc-Zz) (:text |password)
                          |v $ %{} :Expr (:at 1688409272237) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688409272917) (:by |B1y7Rc-Zz) (:text |::)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-in)
                              |b $ %{} :Leaf (:at 1688409274995) (:by |B1y7Rc-Zz) (:text |username)
                              |h $ %{} :Leaf (:at 1688409276227) (:by |B1y7Rc-Zz) (:text |password)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1688409258735) (:by |B1y7Rc-Zz) (:text |js/localStorage.setItem)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                          |j $ %{} :Leaf (:at 1527788909281) (:by |root) (:text |config/site)
                      |v $ %{} :Expr (:at 1614344131333) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1624104269958) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510936619134) (:by |root) (:text |cumulo-reel.app.comp.login)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540962172090) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                        |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547410331) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368017028) (:by |root) (:text |cumulo-reel.style)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368019779) (:by |root) (:text |style)
                |yj $ %{} :Expr (:at 1527788911549) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788911897) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1624107822879) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                    |r $ %{} :Leaf (:at 1527788914516) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788915188) (:by |root) (:text |config)
    |cumulo-reel.app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-navigation)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                  |j $ %{} :Leaf (:at 1523120365880) (:by |root) (:text |count-members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657819616885) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819620029) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Expr (:at 1657819620726) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819622269) (:by |B1y7Rc-Zz) (:text |str-spaced)
                              |b $ %{} :Leaf (:at 1657819625421) (:by |B1y7Rc-Zz) (:text |css/row-center)
                              |h $ %{} :Leaf (:at 1657819630683) (:by |B1y7Rc-Zz) (:text |css-nav)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584876155395) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584876156032) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584876156290) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876158008) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584876160431) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876154821) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:home)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:pointer)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1536561771096) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536561772481) (:by |B1y7Rc-Zz) (:text |:title)
                              |j $ %{} :Leaf (:at 1536561776186) (:by |B1y7Rc-Zz) (:text |config/site)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||pointer)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302332444) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584876163159) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584876163693) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584876163906) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876164308) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584876164963) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876162735) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Me)
                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Guest)
                      |v $ %{} :Expr (:at 1523120369216) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120369974) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1523120371053) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1523120371555) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1523120371997) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120372630) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1523120373023) (:by |root) (:text |count-members)
        |css-nav $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657819631325) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819632474) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657819631325) (:by |B1y7Rc-Zz) (:text |css-nav)
              |h $ %{} :Expr (:at 1657819634342) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657819634880) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1657819635301) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657819674944) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:height)
                              |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |48)
                          |h $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:justify-content)
                              |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:space-between)
                          |l $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text "||0 16px")
                          |o $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |16)
                          |q $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                              |b $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |str)
                                  |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text "||1px solid ")
                                  |h $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0)
                                      |o $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0.1)
                          |s $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.app.comp.navigation)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614311446932) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |t $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1657819640484) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1657819641773) (:by |B1y7Rc-Zz) (:text |css)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962179719) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |xT $ %{} :Expr (:at 1657819642688) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819644733) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657819645516) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819645761) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819646835) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1536561755369) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624107805291) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                    |r $ %{} :Leaf (:at 1536561758845) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1536561761903) (:by |B1y7Rc-Zz) (:text |config)
    |cumulo-reel.app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |j $ %{} :Leaf (:at 1524070827396) (:by |root) (:text |members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657819483804) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819486000) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657819487666) (:by |B1y7Rc-Zz) (:text |css/flex)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314674864) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314675207) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1519314675496) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314677667) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1519314678341) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1524070753023) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070753742) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070753977) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070754337) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657819513878) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819516200) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657819718472) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                          |j $ %{} :Expr (:at 1524070764197) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070764960) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1524070765167) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070765499) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1524070772863) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070774437) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1524070786249) (:by |root) (:text |32)
                                  |v $ %{} :Expr (:at 1524070778614) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070781489) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1524070782585) (:by |root) (:text |100)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Hello! ")
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |t $ %{} :Expr (:at 1524070801446) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070803450) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1524070804372) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1524070805591) (:by |root) (:text |16)
                  |u $ %{} :Expr (:at 1524070806586) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070807601) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1524070807801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070808172) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070882494) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819525002) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1657819526426) (:by |B1y7Rc-Zz) (:text |css/row)
                      |r $ %{} :Expr (:at 1524070808914) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070810352) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1614440954439) (:by |B1y7Rc-Zz) (:text "|\"Members:")
                      |t $ %{} :Expr (:at 1524070907095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070907693) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1524071002316) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1524070908955) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1524070813822) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070815507) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1524070815884) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070816388) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524070882494) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819530607) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657819532579) (:by |B1y7Rc-Zz) (:text |css/row)
                          |r $ %{} :Expr (:at 1524070817648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619669149065) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1524070823331) (:by |root) (:text |members)
                              |n $ %{} :Expr (:at 1614345425234) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624104255207) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1524070849620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070853516) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1524070854323) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070854836) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1524070855268) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614311476200) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1614311463299) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1614311469012) (:by |B1y7Rc-Zz) (:text |let[])
                                          |L $ %{} :Expr (:at 1614311469411) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1614311469663) (:by |B1y7Rc-Zz) (:text |k)
                                              |j $ %{} :Leaf (:at 1614311471563) (:by |B1y7Rc-Zz) (:text |username)
                                          |P $ %{} :Leaf (:at 1614311473742) (:by |B1y7Rc-Zz) (:text |pair)
                                          |T $ %{} :Expr (:at 1524070862172) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070862624) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1524070863576) (:by |root) (:text |k)
                                              |r $ %{} :Expr (:at 1524070863870) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070935603) (:by |root) (:text |div)
                                                  |b $ %{} :Expr (:at 1524070935915) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070936321) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1524070941378) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1657819744721) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1657819749547) (:by |B1y7Rc-Zz) (:text |css-member-label)
                                                  |j $ %{} :Expr (:at 1524070937486) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1524070939626) (:by |root) (:text |<>)
                                                      |T $ %{} :Leaf (:at 1524070866665) (:by |root) (:text |username)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                      |v $ %{} :Leaf (:at 1524070799028) (:by |root) (:text |48)
                  |x $ %{} :Expr (:at 1524070749088) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070749878) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070750119) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070750478) (:by |root) (:text |{})
                      |P $ %{} :Expr (:at 1536750075330) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750077847) (:by |B1y7Rc-Zz) (:text |button)
                          |j $ %{} :Expr (:at 1536750078116) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750084550) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1536750084800) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819541291) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657819543115) (:by |B1y7Rc-Zz) (:text |css/button)
                              |r $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1536750196752) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1536750149343) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1657819545719) (:by |B1y7Rc-Zz) (:text |js/location.replace)
                                          |r $ %{} :Expr (:at 1536750157447) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536750157996) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1536947568308) (:by |root) (:text |js/location.origin)
                                              |r $ %{} :Leaf (:at 1536947560142) (:by |root) (:text "|\"?time=")
                                              |v $ %{} :Expr (:at 1536750183293) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1536750183917) (:by |B1y7Rc-Zz) (:text |.now)
                                                  |j $ %{} :Leaf (:at 1536750185350) (:by |B1y7Rc-Zz) (:text |js/Date)
                          |r $ %{} :Expr (:at 1536750090761) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750091205) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Leaf (:at 1536750096637) (:by |B1y7Rc-Zz) (:text "|\"Refresh")
                      |R $ %{} :Expr (:at 1536750643074) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750643562) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1536750644286) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1536750644793) (:by |B1y7Rc-Zz) (:text |nil)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529343433304) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1657819548818) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819551339) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1657819553278) (:by |B1y7Rc-Zz) (:text |css/button)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |b $ %{} :Expr (:at 1529343455186) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529343455629) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1529343457115) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343457898) (:by |root) (:text |:color)
                                          |j $ %{} :Leaf (:at 1529343458855) (:by |root) (:text |:red)
                                      |r $ %{} :Expr (:at 1529343459158) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343463728) (:by |root) (:text |:border-color)
                                          |j $ %{} :Leaf (:at 1529343464475) (:by |root) (:text |:red)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514302350497) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521951456454) (:by |root) (:text |fn)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-out)
                                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                      |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1657819559572) (:by |B1y7Rc-Zz) (:text |js/localStorage.removeItem)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                                              |j $ %{} :Leaf (:at 1527788933957) (:by |root) (:text |config/site)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                              |r $ %{} :Leaf (:at 1536750140051) (:by |B1y7Rc-Zz) (:text "|\"Log out")
        |css-member-label $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657819749898) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819751489) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657819749898) (:by |B1y7Rc-Zz) (:text |css-member-label)
              |h $ %{} :Expr (:at 1657819749898) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657819753128) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657819753433) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819754552) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                          |h $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:border)
                              |b $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |str)
                                  |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |80)
                          |l $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"16px")
                          |o $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:margin)
                              |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"0 4px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.app.comp.profile)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614311487106) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |n $ %{} :Expr (:at 1657819499399) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819501004) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657819502364) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819502578) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819504739) (:by |B1y7Rc-Zz) (:text |defstyle)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1657819506357) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819508327) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657819508711) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657819509395) (:by |B1y7Rc-Zz) (:text |css)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962184094) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1624107832244) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
    |cumulo-reel.app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066604311) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066604311) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1545066604311) (:by |B1y7Rc-Zz) (:text |dev?)
              |r $ %{} :Expr (:at 1624108095805) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624108095805) (:by |B1y7Rc-Zz) (:text |=)
                  |j $ %{} :Leaf (:at 1624108095805) (:by |B1y7Rc-Zz) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1624108095805) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624108095805) (:by |B1y7Rc-Zz) (:text |get-env)
                      |j $ %{} :Leaf (:at 1624196018232) (:by |B1y7Rc-Zz) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658732686527) (:by |B1y7Rc-Zz) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:port)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |5021)
                  |t $ %{} :Expr (:at 1527867502467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867504737) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1527867511502) (:by |root) (:text "|\"Cumulo")
                  |u $ %{} :Expr (:at 1527867511986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867512819) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1527867517723) (:by |root) (:text "|\"http://cdn.tiye.me/logo/cumulo.png")
                  |v $ %{} :Expr (:at 1527615278481) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527615280984) (:by |root) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1527615358738) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |x $ %{} :Expr (:at 1527615281625) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527615283846) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1527615339502) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |x5 $ %{} :Expr (:at 1528009883995) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528009886059) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1584875932228) (:by |B1y7Rc-Zz) (:text "|\"http://cdn.tiye.me/cumulo-reel/")
                  |yr $ %{} :Expr (:at 1535565550489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565552318) (:by |B1y7Rc-Zz) (:text |:theme)
                      |j $ %{} :Leaf (:at 1535565554474) (:by |B1y7Rc-Zz) (:text "|\"#eeeeff")
                  |yt $ %{} :Expr (:at 1545066625529) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066625529) (:by |B1y7Rc-Zz) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1614311777207) (:by |B1y7Rc-Zz) (:text "|\"reel-storage")
                  |yv $ %{} :Expr (:at 1545066623608) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066623608) (:by |B1y7Rc-Zz) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1614311769908) (:by |B1y7Rc-Zz) (:text "|\"storage.cirru")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788708227) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |cumulo-reel.app.config)
            |r $ %{} :Expr (:at 1545066784671) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1545066784671) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                    |r $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1545066784671) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |get-env!)
    |cumulo-reel.app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1614313288806) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*client-caches)
              |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |{})
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |defatom)
              |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |*initial-db)
              |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |if)
                  |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |path-exists?)
                      |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |w-log)
                          |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |do)
                      |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |println)
                          |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                      |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |schema/database)
                          |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                              |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |read-file)
                                  |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |l $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |do)
                      |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |println)
                          |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
                      |h $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |schema/database)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1614313282361) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*reader-reel)
              |r $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |@*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1614313269432) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*reel)
              |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |merge)
                  |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |reel-schema)
                  |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |:base)
                          |j $ %{} :Leaf (:at 1614313372094) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |:db)
                          |j $ %{} :Leaf (:at 1614313375609) (:by |B1y7Rc-Zz) (:text |@*initial-db)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op)
                  |h $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid)
              |l $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |let)
                  |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-id)
                          |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |generate-id!)
                      |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-time)
                          |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |->)
                              |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |get-time!)
                              |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |.timestamp)
                  |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |if)
                      |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |println)
                          |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!")
                          |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |str)
                              |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op)
                          |o $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid)
                  |l $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688323122543) (:by |B1y7Rc-Zz) (:text |tag-match)
                      |X $ %{} :Leaf (:at 1688323124307) (:by |B1y7Rc-Zz) (:text |op)
                      |b $ %{} :Expr (:at 1688323130430) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |h $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |:effect/persist)
                          |b $ %{} :Expr (:at 1688323133959) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688323133959) (:by |B1y7Rc-Zz) (:text |persist-db!)
                      |l $ %{} :Expr (:at 1688323135769) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1688323136498) (:by |B1y7Rc-Zz) (:text |_)
                          |T $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |reset!)
                              |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |*reel)
                              |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                                  |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |h $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |updater)
                                  |l $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op)
                                  |q $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid)
                                  |s $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |t $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-time)
                                  |u $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |config/dev?)
        |get-backup-path! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
              |h $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                :data $ {}
              |l $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |let)
                  |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now)
                          |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |.extract)
                              |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |get-time!)
                  |h $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |join-path)
                      |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |h $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text "|\"backups")
                      |l $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |str)
                          |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |:month)
                              |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now)
                      |o $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |str)
                          |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |:day)
                              |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now)
                          |h $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |main!)
              |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
              |l $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |println)
                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |if)
                      |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |h $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |l $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"release")
              |o $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |let)
                  |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?)
                          |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |get-env)
                              |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"port")
                      |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port)
                          |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |if)
                              |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |some?)
                                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?)
                              |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |parse-float)
                                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?)
                              |l $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |:port)
                                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |config/site)
                  |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |run-server!)
                      |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port)
                  |l $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |println)
                      |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |str)
                          |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:")
                          |h $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port)
              |q $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |do)
                  |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |;)
                      |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading")
                  |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |identity)
                      |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
              |s $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |200)
                  |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |fn)
                      |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |t $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |600000)
                  |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |fn)
                      |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |u $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |on-control-c)
                  |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |on-exit!)
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |on-exit!)
              |h $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                :data $ {}
              |l $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |o $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |;)
                  |b $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |println)
                  |h $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text "|\"exit code is...")
              |q $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |quit!)
                  |b $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |0)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |h $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                :data $ {}
              |l $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |let)
                  |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content)
                          |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                              |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |:db)
                                      |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |h $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |l $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |{})
                      |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-path)
                          |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-file)
                      |h $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |backup-path)
                          |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                  |h $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-path)
                      |h $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content)
                  |l $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |backup-path)
                      |h $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1624471131986) (:by |B1y7Rc-Zz) (:text "||Code updated.")
              |w $ %{} :Expr (:at 1614227116494) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1614227116119) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
              |x $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*reel)
                  |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                      |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |@*reel)
                      |r $ %{} :Leaf (:at 1614313388352) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |v $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |updater)
              |y $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                  |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |h $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                :data $ {}
              |l $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |when)
                  |b $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |not)
                      |b $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |identical?)
                          |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                          |h $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |h $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |reset!)
                      |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                      |h $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |l $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                      |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |run-server!)
              |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818299988) (:by |B1y7Rc-Zz) (:text |port)
              |v $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                  |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |&{})
                      |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:port)
                      |h $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |port)
                  |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |fn)
                      |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data)
                      |e $ %{} :Expr (:at 1688322875840) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322882395) (:by |B1y7Rc-Zz) (:text |println)
                          |b $ %{} :Leaf (:at 1688322884820) (:by |B1y7Rc-Zz) (:text "|\"Data")
                          |h $ %{} :Leaf (:at 1688322885926) (:by |B1y7Rc-Zz) (:text |data)
                      |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688322720375) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data)
                          |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:connect)
                                  |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                              |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |do)
                                  |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Expr (:at 1688323335435) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688323336530) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                      |l $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                                  |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println)
                                      |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                          |l $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:message)
                                  |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                                  |h $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |msg)
                              |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |let)
                                  |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action)
                                          |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                              |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |msg)
                                  |e $ %{} :Expr (:at 1688323100599) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1688323104254) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Leaf (:at 1688323105289) (:by |B1y7Rc-Zz) (:text |action)
                                      |h $ %{} :Leaf (:at 1688323106816) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:disconnect)
                                  |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                              |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |do)
                                  |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println)
                                      |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                                  |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Expr (:at 1688323327997) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1688323329460) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                      |l $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                          |q $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |_)
                              |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688322880842) (:by |B1y7Rc-Zz) (:text |eprintln)
                                  |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"unknown data:")
                                  |h $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |def)
              |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |storage-file)
              |h $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |if)
                  |b $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |empty?)
                      |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                  |h $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |str)
                      |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |h $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |config/site)
                  |l $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |str)
                      |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |h $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text "|\"/")
                      |l $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sync-clients!)
              |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel)
              |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |fn)
                      |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                      |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |let)
                          |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:db)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel)
                              |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:records)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel)
                              |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |session)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |get-in)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db)
                                      |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |[])
                                          |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:sessions)
                                          |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                              |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |old-store)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |or)
                                      |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |get)
                                          |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                          |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                      |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |nil)
                              |o $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |twig-container)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db)
                                      |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |session)
                                      |l $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records)
                              |q $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |old-store)
                                      |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store)
                                      |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:key)
                                              |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:id)
                          |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |;)
                              |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |when)
                              |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |println)
                                  |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                  |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                  |l $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text "|\":")
                                  |o $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                  |q $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |count)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records)
                          |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |if)
                              |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |not=)
                                  |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                  |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |[])
                              |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |do)
                                  |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                      |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                          |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:kind)
                                                  |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:patch)
                                              |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:data)
                                                  |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                  |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |swap!)
                                      |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                      |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |l $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                      |o $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store)
              |o $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-twig-loop!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.server)
            |r $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:require)
                |b $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818659026) (:by |B1y7Rc-Zz) (:text |cumulo-reel.schema)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |schema)
                |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818749874) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |updater)
                |l $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                        |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                        |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |reel-schema)
                |o $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818385667) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |config)
                |q $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818387486) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.twig.container)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |twig-container)
                |s $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |diff-twig)
                |t $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss.core)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                        |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-send!)
                        |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-each!)
                |u $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |new-twig-loop!)
                        |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |v $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818725651) (:by |B1y7Rc-Zz) (:text |cumulo-reel.$meta)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                |w $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.fs)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |path-exists?)
                        |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                |x $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.time)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |set-interval)
                |y $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |Date)
                        |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |get-time!)
                |z $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.path)
                    |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |join-path)
    |cumulo-reel.app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614226788452) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1614349567127) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1614349570579) (:by |B1y7Rc-Zz) (:text |either)
                              |T $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                              |j $ %{} :Expr (:at 1614349571178) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614349571611) (:by |B1y7Rc-Zz) (:text |{})
                      |r $ %{} :Expr (:at 1507830626848) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                          |j $ %{} :Expr (:at 1507830631302) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                              |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                              |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                  |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                  |r $ %{} :Expr (:at 1507830661017) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                      |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1614227198115) (:by |B1y7Rc-Zz) (:text |memof-call)
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                              |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Expr (:at 1524070628251) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1524070634499) (:by |root) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                      |j $ %{} :Leaf (:at 1524070635855) (:by |root) (:text |:data)
                                      |r $ %{} :Expr (:at 1524070636122) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1614344762404) (:by |B1y7Rc-Zz) (:text |case)
                                          |j $ %{} :Expr (:at 1524070641804) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070642493) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1524070643351) (:by |root) (:text |router)
                                          |n $ %{} :Expr (:at 1525108994160) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525108995413) (:by |root) (:text |:home)
                                              |j $ %{} :Expr (:at 1525108999855) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525109002003) (:by |root) (:text |:pages)
                                                  |j $ %{} :Leaf (:at 1525109002404) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1524070643948) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070646898) (:by |root) (:text |:profile)
                                              |j $ %{} :Expr (:at 1524070654495) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1614227192882) (:by |B1y7Rc-Zz) (:text |memof-call)
                                                  |T $ %{} :Leaf (:at 1524070662619) (:by |root) (:text |twig-members)
                                                  |j $ %{} :Expr (:at 1524070665615) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070670477) (:by |root) (:text |:sessions)
                                                      |j $ %{} :Leaf (:at 1524070672563) (:by |root) (:text |db)
                                                  |r $ %{} :Expr (:at 1524070673171) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070674094) (:by |root) (:text |:users)
                                                      |j $ %{} :Leaf (:at 1524070675166) (:by |root) (:text |db)
                                          |v $ %{} :Expr (:at 1614344755189) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1614344757294) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1614344756297) (:by |B1y7Rc-Zz) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1614344758337) (:by |B1y7Rc-Zz) (:text |router)
                                              |j $ %{} :Expr (:at 1614344758835) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1614344759137) (:by |B1y7Rc-Zz) (:text |{})
                              |y $ %{} :Expr (:at 1523120222572) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120223864) (:by |root) (:text |:count)
                                  |j $ %{} :Expr (:at 1523120229051) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523120230136) (:by |root) (:text |count)
                                      |j $ %{} :Expr (:at 1523120230346) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523120232122) (:by |root) (:text |:sessions)
                                          |j $ %{} :Leaf (:at 1523120232500) (:by |root) (:text |db)
                              |yT $ %{} :Expr (:at 1524279105545) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533834715393) (:by |B1y7Rc-Zz) (:text |:color)
                                  |j $ %{} :Expr (:at 1524279111422) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819084979) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                          |v $ %{} :Leaf (:at 1507830683551) (:by |root) (:text |nil)
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524070676419) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1614226775320) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1524070676419) (:by |root) (:text |twig-members)
              |r $ %{} :Expr (:at 1524070676419) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524070680419) (:by |root) (:text |sessions)
                  |j $ %{} :Leaf (:at 1524070708862) (:by |root) (:text |users)
              |v $ %{} :Expr (:at 1524070683188) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619669137621) (:by |B1y7Rc-Zz) (:text |->)
                  |j $ %{} :Leaf (:at 1524070692906) (:by |root) (:text |sessions)
                  |n $ %{} :Expr (:at 1614345383041) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614345384889) (:by |B1y7Rc-Zz) (:text |to-pairs)
                  |r $ %{} :Expr (:at 1524070693234) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070695660) (:by |root) (:text |map)
                      |j $ %{} :Expr (:at 1524070696021) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070696334) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1524070696681) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614313228956) (:by |B1y7Rc-Zz) (:text |pair)
                          |r $ %{} :Expr (:at 1614313230182) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1614313233410) (:by |B1y7Rc-Zz) (:text |let[])
                              |L $ %{} :Expr (:at 1614313234192) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1614313234192) (:by |B1y7Rc-Zz) (:text |k)
                                  |r $ %{} :Leaf (:at 1614313234192) (:by |B1y7Rc-Zz) (:text |session)
                              |P $ %{} :Leaf (:at 1614313236313) (:by |B1y7Rc-Zz) (:text |pair)
                              |T $ %{} :Expr (:at 1524070700350) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070701520) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1524070702142) (:by |root) (:text |k)
                                  |r $ %{} :Expr (:at 1524070702968) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070705127) (:by |root) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1524070714762) (:by |root) (:text |users)
                                      |r $ %{} :Expr (:at 1524070715457) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070716715) (:by |root) (:text |[])
                                          |j $ %{} :Expr (:at 1524070717257) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070720176) (:by |root) (:text |:user-id)
                                              |j $ %{} :Leaf (:at 1524070722292) (:by |root) (:text |session)
                                          |r $ %{} :Leaf (:at 1524070725752) (:by |root) (:text |:name)
                  |v $ %{} :Expr (:at 1524070729744) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614313415844) (:by |B1y7Rc-Zz) (:text |pairs-map)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.twig.container)
            |r $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:require)
                |b $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819107869) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.twig.user)
                    |b $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |twig-user)
                |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |memof.alias)
                    |b $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |memof-call)
                |l $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |calcit.std.rand)
                    |b $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
    |cumulo-reel.app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1614226768213) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.twig.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
    |cumulo-reel.app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op)
                  |h $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:session/connect)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |session/connect)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                  |l $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                  |o $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                          |X $ %{} :Leaf (:at 1688409544791) (:by |B1y7Rc-Zz) (:text |db)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-data)
                          |h $ %{} :Leaf (:at 1688409540579) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1688409541945) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1688409543146) (:by |B1y7Rc-Zz) (:text |op-time)
                  |q $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |user/log-in)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                          |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                          |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                          |q $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                          |s $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                  |s $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                          |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                          |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                          |q $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                          |s $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                  |t $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |user/log-out)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                  |u $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:router/change)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |data)
                      |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |router/change)
                          |X $ %{} :Leaf (:at 1688409562157) (:by |B1y7Rc-Zz) (:text |db)
                          |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |data)
                          |h $ %{} :Leaf (:at 1688409563874) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1688409565652) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1688409566906) (:by |B1y7Rc-Zz) (:text |op-time)
                  |v $ %{} :Expr (:at 1688409477126) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1688409477918) (:by |B1y7Rc-Zz) (:text |_)
                      |b $ %{} :Expr (:at 1688409478513) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688409479819) (:by |B1y7Rc-Zz) (:text |do)
                          |b $ %{} :Expr (:at 1688409480273) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688409483583) (:by |B1y7Rc-Zz) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1688409487372) (:by |B1y7Rc-Zz) (:text "|\"Unknown op")
                              |h $ %{} :Leaf (:at 1688409488348) (:by |B1y7Rc-Zz) (:text |op)
                          |h $ %{} :Leaf (:at 1688409490250) (:by |B1y7Rc-Zz) (:text |db)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1624106171732) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater.session)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1624106167894) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1624106169909) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater.router)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |y $ %{} :Expr (:at 1529231005993) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231006285) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231007723) (:by |root) (:text |cumulo-reel.schema)
                    |r $ %{} :Leaf (:at 1529231008972) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529231009860) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1529231108810) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231110305) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231113905) (:by |root) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1529231114617) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1529231114849) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529231116379) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529231118760) (:by |root) (:text |update-messages)
    |cumulo-reel.app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater.router)
    |cumulo-reel.app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529231499908) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |remove-message)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1529231506714) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529231507936) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1529231509725) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1529231509958) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231510376) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231511756) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1529231512509) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1529231515700) (:by |root) (:text |:messages)
                  |v $ %{} :Expr (:at 1529231534326) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529231534991) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1529231535248) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231536189) (:by |root) (:text |messages)
                      |T $ %{} :Expr (:at 1529231516827) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231517957) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1529231519342) (:by |root) (:text |messages)
                          |r $ %{} :Expr (:at 1529231521395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529231522521) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1529231524125) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater.session)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
    |cumulo-reel.app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |log-in)
              |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db)
                  |b $ %{} :Leaf (:at 1688409324771) (:by |B1y7Rc-Zz) (:text |username)
                  |e $ %{} :Leaf (:at 1688409326947) (:by |B1y7Rc-Zz) (:text |password)
                  |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |sid)
                  |l $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                  |o $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-time)
              |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688409333272) (:by |B1y7Rc-Zz) (:text |let)
                  |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |->)
                              |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:users)
                                  |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |vals)
                              |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |o $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |find)
                                  |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                                      |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |user)
                                      |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |and)
                                          |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |=)
                                              |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username)
                                              |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:name)
                                                  |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |user)
                  |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update-in)
                      |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db)
                      |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |[])
                          |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:sessions)
                          |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |sid)
                      |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                          |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                          |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |if)
                              |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |some?)
                                  |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                              |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |if)
                                  |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |=)
                                      |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |md5)
                                          |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |password)
                                      |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:password)
                                          |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                                      |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:user-id)
                                      |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id)
                                          |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update)
                                      |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                                      |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:messages)
                                      |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                                          |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                          |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                              |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |{})
                                                  |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                                  |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:text)
                                                      |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |str)
                                                          |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ")
                                                          |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username)
                              |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update)
                                  |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                                  |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:messages)
                                  |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                                      |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                      |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc)
                                          |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                          |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                          |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:text)
                                                  |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |str)
                                                      |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text "|\"No user named: ")
                                                      |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username)
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sign-up)
              |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                  |X $ %{} :Leaf (:at 1688409426481) (:by |B1y7Rc-Zz) (:text |username)
                  |Z $ %{} :Leaf (:at 1688409428014) (:by |B1y7Rc-Zz) (:text |password)
                  |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid)
                  |l $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                  |o $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-time)
              |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688409431303) (:by |B1y7Rc-Zz) (:text |let)
                  |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |find)
                              |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |vals)
                                  |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:users)
                                      |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                              |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |fn)
                                  |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |user)
                                  |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |=)
                                      |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                                      |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:name)
                                          |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |user)
                  |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |if)
                      |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |some?)
                          |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |maybe-user)
                      |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |update-in)
                          |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[])
                              |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:sessions)
                              |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid)
                              |l $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:messages)
                          |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |fn)
                              |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |messages)
                              |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |messages)
                                  |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:id)
                                          |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:text)
                                          |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |str)
                                              |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                              |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                      |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |->)
                          |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[])
                                  |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid)
                                  |l $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:user-id)
                              |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                          |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[])
                                  |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:users)
                                  |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                              |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |{})
                                  |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:id)
                                      |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:name)
                                      |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                                  |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:nickname)
                                      |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                                  |o $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:password)
                                      |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |md5)
                                          |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |password)
                                  |q $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:avatar)
                                      |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1657819056477) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |calcit.std.hash)
                    |b $ %{} :Leaf (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819056477) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |md5)
    |cumulo-reel.comp.reel $ %{} :FileEntry
      :defs $ {}
        |comp-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507828615828) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507828638117) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1507828615828) (:by |root) (:text |comp-reel)
              |r $ %{} :Expr (:at 1507828615828) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619669798298) (:by |B1y7Rc-Zz) (:text |size)
                  |j $ %{} :Leaf (:at 1507828806687) (:by |root) (:text |addional-styles)
              |v $ %{} :Expr (:at 1507828642014) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507828644047) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1507828644307) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507828645447) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657819344542) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819347279) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657819348902) (:by |B1y7Rc-Zz) (:text |css-reel)
                      |j $ %{} :Expr (:at 1507828787656) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507828788612) (:by |root) (:text |:style)
                          |j $ %{} :Leaf (:at 1507828820509) (:by |root) (:text |addional-styles)
                  |r $ %{} :Expr (:at 1507828646137) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507828647130) (:by |root) (:text |<>)
                      |r $ %{} :Expr (:at 1507830487639) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1507830489506) (:by |root) (:text |str)
                          |L $ %{} :Leaf (:at 1507830563403) (:by |root) (:text ||Length:)
                          |T $ %{} :Leaf (:at 1619669800619) (:by |B1y7Rc-Zz) (:text |size)
                      |v $ %{} :Leaf (:at 1507828651981) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1507828652616) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507828654134) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1507828656265) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1507828656797) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1507828657608) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507830450172) (:by |root) (:text |span)
                      |j $ %{} :Expr (:at 1507828660058) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507828660406) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507828660655) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507828662301) (:by |root) (:text |:inner-text)
                              |j $ %{} :Leaf (:at 1507828665664) (:by |root) (:text ||Reset)
                          |n $ %{} :Expr (:at 1507828771973) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819301235) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1657819298353) (:by |B1y7Rc-Zz) (:text |css-click)
                          |r $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |b $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |fn)
                                  |b $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |e)
                                      |b $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |d!)
                                  |h $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |d!)
                                      |b $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |:reel/reset)
                                      |h $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |nil)
                  |xT $ %{} :Expr (:at 1507828690995) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507828691717) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1507828692530) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1507828693029) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1507828657608) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507830455176) (:by |root) (:text |span)
                      |j $ %{} :Expr (:at 1507828660058) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507828660406) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507828660655) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507828662301) (:by |root) (:text |:inner-text)
                              |j $ %{} :Leaf (:at 1507828686464) (:by |root) (:text ||Merge)
                          |n $ %{} :Expr (:at 1657819327758) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819327758) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657819327758) (:by |B1y7Rc-Zz) (:text |css-click)
                          |t $ %{} :Expr (:at 1507828670352) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819311985) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |j $ %{} :Expr (:at 1507828672178) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828672472) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1507828673101) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828673612) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1507828674547) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1507828675771) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828676567) (:by |root) (:text |d!)
                                      |j $ %{} :Leaf (:at 1507828689327) (:by |root) (:text |:reel/merge)
                                      |r $ %{} :Leaf (:at 1507828680980) (:by |root) (:text |nil)
                  |yD $ %{} :Expr (:at 1507828690995) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507828691717) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1507828692530) (:by |root) (:text |8)
                      |r $ %{} :Leaf (:at 1507828693029) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1507828657608) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507830455176) (:by |root) (:text |span)
                      |j $ %{} :Expr (:at 1507828660058) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507828660406) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507828660655) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507828662301) (:by |root) (:text |:inner-text)
                              |j $ %{} :Leaf (:at 1521797627988) (:by |root) (:text ||Persist)
                          |n $ %{} :Expr (:at 1657819329109) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819329109) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657819329109) (:by |B1y7Rc-Zz) (:text |css-click)
                          |t $ %{} :Expr (:at 1507828670352) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819319007) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |r $ %{} :Expr (:at 1584876337457) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584876338074) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584876338556) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876338883) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584876339471) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1521797602013) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584876336821) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1521797612607) (:by |root) (:text |:effect/persist)
                                      |r $ %{} :Leaf (:at 1521797613900) (:by |root) (:text |nil)
        |css-click $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507830476140) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819288670) (:by |B1y7Rc-Zz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657819287252) (:by |B1y7Rc-Zz) (:text |css-click)
              |r $ %{} :Expr (:at 1657819289631) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657819290424) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1657819290885) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657819292339) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1507830476140) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830476140) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1507830476140) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830476140) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1507830476140) (:by |root) (:text |:pointer)
                          |r $ %{} :Expr (:at 1507830503241) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830504703) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1507830505262) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830505953) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1507830508223) (:by |root) (:text |200)
                                  |r $ %{} :Leaf (:at 1507830508713) (:by |root) (:text |80)
                                  |v $ %{} :Leaf (:at 1507830514472) (:by |root) (:text |80)
                          |v $ %{} :Expr (:at 1507830515446) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830517136) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1507830534305) (:by |root) (:text |:12)
                          |x $ %{} :Expr (:at 1507830521076) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830524822) (:by |root) (:text |:text-decoration)
                              |j $ %{} :Leaf (:at 1507830529129) (:by |root) (:text |:underline)
        |css-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657819349775) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657819351131) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657819349775) (:by |B1y7Rc-Zz) (:text |css-reel)
              |h $ %{} :Expr (:at 1657819349775) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657819352886) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657819354212) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819357596) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8)
                          |h $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:position)
                              |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:absolute)
                          |l $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8)
                          |o $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:right)
                              |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8)
                          |q $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |12)
                          |s $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:color)
                              |b $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |0)
                                  |h $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |0)
                                  |l $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |60)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507828612052) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1507828612052) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507828612052) (:by |root) (:text |cumulo-reel.comp.reel)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1614311744065) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |n $ %{} :Expr (:at 1657819370728) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819374829) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657819375336) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657819375951) (:by |B1y7Rc-Zz) (:text |css)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547434475) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540962188403) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |w $ %{} :Leaf (:at 1507828743963) (:by |root) (:text |button)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |xT $ %{} :Expr (:at 1657819380160) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819381967) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657819383720) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657819383920) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819385267) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1507828750778) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507828759087) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507828759839) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507828760096) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507828761860) (:by |root) (:text |=<)
    |cumulo-reel.core $ %{} :FileEntry
      :defs $ {}
        |ReelState $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1624195889172) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1624195891799) (:by |B1y7Rc-Zz) (:text |defrecord)
              |j $ %{} :Leaf (:at 1624195889172) (:by |B1y7Rc-Zz) (:text |ReelState)
              |r $ %{} :Leaf (:at 1624195893458) (:by |B1y7Rc-Zz) (:text |:base)
              |v $ %{} :Leaf (:at 1624195895208) (:by |B1y7Rc-Zz) (:text |:db)
              |x $ %{} :Leaf (:at 1624195898729) (:by |B1y7Rc-Zz) (:text |:records)
              |y $ %{} :Leaf (:at 1624195901174) (:by |B1y7Rc-Zz) (:text |:merged?)
        |play-records $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507807777029) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507807777029) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507807777029) (:by |root) (:text |play-records)
              |r $ %{} :Expr (:at 1507807777029) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507807852850) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1507807782382) (:by |root) (:text |records)
                  |r $ %{} :Leaf (:at 1507807783430) (:by |root) (:text |updater)
              |v $ %{} :Expr (:at 1507807786831) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507807787293) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1507807788493) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624104902155) (:by |B1y7Rc-Zz) (:text |&list:empty?)
                      |j $ %{} :Leaf (:at 1507807791910) (:by |root) (:text |records)
                  |p $ %{} :Leaf (:at 1507808288838) (:by |root) (:text |db)
                  |v $ %{} :Expr (:at 1507807796352) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1614345816972) (:by |B1y7Rc-Zz) (:text |let-sugar)
                      |j $ %{} :Expr (:at 1507807831985) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1507807804774) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1507807804933) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507807805634) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1507807806577) (:by |root) (:text |op)
                                  |v $ %{} :Leaf (:at 1507807810527) (:by |root) (:text |sid)
                                  |x $ %{} :Leaf (:at 1507807812164) (:by |root) (:text |op-id)
                                  |y $ %{} :Leaf (:at 1507807814137) (:by |root) (:text |op-time)
                              |j $ %{} :Expr (:at 1507807815913) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507807821680) (:by |root) (:text |first)
                                  |j $ %{} :Leaf (:at 1507808245880) (:by |root) (:text |records)
                          |j $ %{} :Expr (:at 1507807833581) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507807850908) (:by |root) (:text |next-db)
                              |j $ %{} :Expr (:at 1507807844750) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507807845576) (:by |root) (:text |updater)
                                  |j $ %{} :Leaf (:at 1507807849172) (:by |root) (:text |db)
                                  |r $ %{} :Leaf (:at 1507807858780) (:by |root) (:text |op)
                                  |x $ %{} :Leaf (:at 1507807860721) (:by |root) (:text |sid)
                                  |y $ %{} :Leaf (:at 1507807862424) (:by |root) (:text |op-id)
                                  |yT $ %{} :Leaf (:at 1507807864755) (:by |root) (:text |op-time)
                      |r $ %{} :Expr (:at 1507807867422) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807869747) (:by |root) (:text |recur)
                          |j $ %{} :Leaf (:at 1507807873195) (:by |root) (:text |next-db)
                          |r $ %{} :Expr (:at 1507807873961) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507808240025) (:by |root) (:text |rest)
                              |j $ %{} :Leaf (:at 1507807875952) (:by |root) (:text |records)
                          |v $ %{} :Leaf (:at 1507807877826) (:by |root) (:text |updater)
        |reel-reducer $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507807571921) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507807571921) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507807571921) (:by |root) (:text |reel-reducer)
              |r $ %{} :Expr (:at 1507807571921) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507808567695) (:by |root) (:text |reel)
                  |T $ %{} :Leaf (:at 1507807899128) (:by |root) (:text |updater)
                  |r $ %{} :Leaf (:at 1507807901735) (:by |root) (:text |op)
                  |x $ %{} :Leaf (:at 1507807911186) (:by |root) (:text |sid)
                  |y $ %{} :Leaf (:at 1507807913048) (:by |root) (:text |op-id)
                  |yT $ %{} :Leaf (:at 1507807916081) (:by |root) (:text |op-time)
                  |yj $ %{} :Leaf (:at 1624107662759) (:by |B1y7Rc-Zz) (:text |?)
                  |yr $ %{} :Leaf (:at 1624107664091) (:by |B1y7Rc-Zz) (:text |dev?)
              |v $ %{} :Expr (:at 1688323163693) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1688323164689) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1688323165009) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688323165160) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688323167850) (:by |B1y7Rc-Zz) (:text |tag-name)
                          |b $ %{} :Expr (:at 1688323174269) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688323176503) (:by |B1y7Rc-Zz) (:text |nth)
                              |T $ %{} :Leaf (:at 1688323173025) (:by |B1y7Rc-Zz) (:text |op)
                              |b $ %{} :Leaf (:at 1688323180695) (:by |B1y7Rc-Zz) (:text |0)
                  |T $ %{} :Expr (:at 1507807917563) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507807935016) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1507807935250) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614312322478) (:by |B1y7Rc-Zz) (:text |starts-with?)
                          |j $ %{} :Leaf (:at 1688323183899) (:by |B1y7Rc-Zz) (:text |tag-name)
                          |r $ %{} :Leaf (:at 1636714022767) (:by |B1y7Rc-Zz) (:text |:reel/)
                      |r $ %{} :Expr (:at 1507807958585) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807959398) (:by |root) (:text |merge)
                          |j $ %{} :Leaf (:at 1507807960851) (:by |root) (:text |reel)
                          |r $ %{} :Expr (:at 1507808089496) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1688323202424) (:by |B1y7Rc-Zz) (:text |tag-match)
                              |j $ %{} :Leaf (:at 1507808117022) (:by |root) (:text |op)
                              |r $ %{} :Expr (:at 1507808117325) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1688323210980) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808122298) (:by |root) (:text |:reel/reset)
                                  |j $ %{} :Expr (:at 1507808145301) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808146428) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1507808149920) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507808152469) (:by |root) (:text |:records)
                                          |j $ %{} :Expr (:at 1507808153153) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507808153345) (:by |root) (:text |[])
                                      |r $ %{} :Expr (:at 1507808155583) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507808157622) (:by |root) (:text |:db)
                                          |j $ %{} :Expr (:at 1507808157976) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507808161024) (:by |root) (:text |:base)
                                              |j $ %{} :Leaf (:at 1507808163136) (:by |root) (:text |reel)
                              |v $ %{} :Expr (:at 1507808122933) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1688323217152) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808129848) (:by |root) (:text |:reel/merge)
                                  |j $ %{} :Expr (:at 1507808164979) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808166682) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1507808167423) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507808168948) (:by |root) (:text |:records)
                                          |j $ %{} :Expr (:at 1507808169302) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507808169516) (:by |root) (:text |[])
                                      |r $ %{} :Expr (:at 1507808170611) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507808175078) (:by |root) (:text |:base)
                                          |j $ %{} :Expr (:at 1507808176231) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507808177447) (:by |root) (:text |:db)
                                              |j $ %{} :Leaf (:at 1507808178557) (:by |root) (:text |reel)
                                      |v $ %{} :Expr (:at 1525016595808) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1525016599243) (:by |root) (:text |:merged?)
                                          |j $ %{} :Leaf (:at 1525016599965) (:by |root) (:text |true)
                              |w $ %{} :Expr (:at 1688323205762) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1688323206262) (:by |B1y7Rc-Zz) (:text |_)
                                  |T $ %{} :Expr (:at 1688323205424) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |do)
                                      |b $ %{} :Expr (:at 1688323205424) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |println)
                                          |b $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text "||Unknown op:")
                                          |h $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |op)
                                      |h $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |reel)
                      |v $ %{} :Expr (:at 1507807961659) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807966627) (:by |root) (:text |let)
                          |j $ %{} :Expr (:at 1507808005428) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1507808005565) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507808010547) (:by |root) (:text |msg-pack)
                                  |j $ %{} :Expr (:at 1507808010979) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808011370) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1507808012306) (:by |root) (:text |op)
                                      |v $ %{} :Leaf (:at 1507808016704) (:by |root) (:text |sid)
                                      |x $ %{} :Leaf (:at 1507808017548) (:by |root) (:text |op-id)
                                      |y $ %{} :Leaf (:at 1507808018926) (:by |root) (:text |op-time)
                          |r $ %{} :Expr (:at 1507808021414) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507808022031) (:by |root) (:text |->)
                              |j $ %{} :Leaf (:at 1507808023769) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507808024071) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507808024885) (:by |root) (:text |update)
                                  |j $ %{} :Leaf (:at 1507808027711) (:by |root) (:text |:records)
                                  |r $ %{} :Expr (:at 1507808028155) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808028588) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1507808028861) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1507808029976) (:by |root) (:text |records)
                                      |r $ %{} :Expr (:at 1521911568720) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1521911569290) (:by |root) (:text |if)
                                          |L $ %{} :Leaf (:at 1521911570068) (:by |root) (:text |dev?)
                                          |T $ %{} :Expr (:at 1507808030991) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1507808031959) (:by |root) (:text |conj)
                                              |j $ %{} :Leaf (:at 1507808300376) (:by |root) (:text |records)
                                              |r $ %{} :Leaf (:at 1507808036781) (:by |root) (:text |msg-pack)
                                          |j $ %{} :Leaf (:at 1521911573499) (:by |root) (:text |records)
                              |v $ %{} :Expr (:at 1507808039342) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507808047479) (:by |root) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1507808049717) (:by |root) (:text |:db)
                                  |r $ %{} :Expr (:at 1507808056967) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507808057996) (:by |root) (:text |updater)
                                      |j $ %{} :Expr (:at 1507808059894) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1624195972864) (:by |B1y7Rc-Zz) (:text |&record:get)
                                          |j $ %{} :Leaf (:at 1507808061864) (:by |root) (:text |reel)
                                          |r $ %{} :Leaf (:at 1624104794110) (:by |B1y7Rc-Zz) (:text |:db)
                                      |r $ %{} :Leaf (:at 1507808063495) (:by |root) (:text |op)
                                      |x $ %{} :Leaf (:at 1507808066276) (:by |root) (:text |sid)
                                      |y $ %{} :Leaf (:at 1507808068339) (:by |root) (:text |op-id)
                                      |yT $ %{} :Leaf (:at 1507808069665) (:by |root) (:text |op-time)
        |reel-schema $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507807587733) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507807589878) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1507807587733) (:by |root) (:text |reel-schema)
              |r $ %{} :Expr (:at 1507807587733) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624195884697) (:by |B1y7Rc-Zz) (:text |%{})
                  |V $ %{} :Leaf (:at 1624195887635) (:by |B1y7Rc-Zz) (:text |ReelState)
                  |X $ %{} :Expr (:at 1507807600445) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507807601764) (:by |root) (:text |:base)
                      |j $ %{} :Leaf (:at 1507807603679) (:by |root) (:text |nil)
                  |b $ %{} :Expr (:at 1507807595904) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507808188063) (:by |root) (:text |:db)
                      |j $ %{} :Leaf (:at 1507807599626) (:by |root) (:text |nil)
                  |j $ %{} :Expr (:at 1507807592228) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507807593749) (:by |root) (:text |:records)
                      |j $ %{} :Expr (:at 1507807594535) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807674382) (:by |root) (:text |[])
                  |r $ %{} :Expr (:at 1507807605053) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507807606629) (:by |root) (:text |:merged?)
                      |j $ %{} :Leaf (:at 1507807608050) (:by |root) (:text |false)
        |refresh-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507807585218) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507807585218) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507807585218) (:by |root) (:text |refresh-reel)
              |r $ %{} :Expr (:at 1507807585218) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507807707677) (:by |root) (:text |reel)
                  |j $ %{} :Leaf (:at 1507807708866) (:by |root) (:text |base)
                  |r $ %{} :Leaf (:at 1507807711602) (:by |root) (:text |updater)
              |v $ %{} :Expr (:at 1507807713224) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507807713873) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1507807714088) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507807716280) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807720593) (:by |root) (:text |next-base)
                          |j $ %{} :Expr (:at 1507807722030) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507807722454) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1507807722676) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624470595986) (:by |B1y7Rc-Zz) (:text |&record:get)
                                  |j $ %{} :Leaf (:at 1507807724899) (:by |root) (:text |reel)
                                  |r $ %{} :Leaf (:at 1624104824681) (:by |B1y7Rc-Zz) (:text |:merged?)
                              |r $ %{} :Expr (:at 1507807726560) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507807727417) (:by |root) (:text |:base)
                                  |j $ %{} :Leaf (:at 1507807728386) (:by |root) (:text |reel)
                              |v $ %{} :Leaf (:at 1507807730618) (:by |root) (:text |base)
                  |r $ %{} :Expr (:at 1507807733505) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507807734158) (:by |root) (:text |->)
                      |j $ %{} :Leaf (:at 1507807735188) (:by |root) (:text |reel)
                      |r $ %{} :Expr (:at 1507807735526) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807736798) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1507807737680) (:by |root) (:text |:base)
                          |r $ %{} :Leaf (:at 1507807741059) (:by |root) (:text |next-base)
                      |v $ %{} :Expr (:at 1507807741935) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507807743274) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1507808074280) (:by |root) (:text |:db)
                          |r $ %{} :Expr (:at 1507807746971) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507807749581) (:by |root) (:text |play-records)
                              |j $ %{} :Leaf (:at 1507807755170) (:by |root) (:text |next-base)
                              |r $ %{} :Expr (:at 1507807763798) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507807765879) (:by |root) (:text |:records)
                                  |j $ %{} :Leaf (:at 1507807767222) (:by |root) (:text |reel)
                              |v $ %{} :Leaf (:at 1507807769477) (:by |root) (:text |updater)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1507807568560) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1507807568560) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1507807568560) (:by |root) (:text |cumulo-reel.core)
    |cumulo-reel.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |j $ %{} :Expr (:at 1538886498428) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886499001) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886500387) (:by |root) (:text |session)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                      |j $ %{} :Expr (:at 1538886501540) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886502106) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886502625) (:by |root) (:text |user)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
        |router $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |session $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1538886507054) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886507646) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886508475) (:by |root) (:text |router)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529230759501) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1529230760396) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529230760716) (:by |root) (:text |{})
        |user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.schema)
    |cumulo-reel.style $ %{} :FileEntry
      :defs $ {}
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519367966237) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519367970413) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1519367966237) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1519367966237) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519367974187) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1519367974501) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367980887) (:by |root) (:text |:text-decoration)
                      |j $ %{} :Leaf (:at 1519367984967) (:by |root) (:text |:underline)
                  |r $ %{} :Expr (:at 1519367985371) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367998049) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1519367996458) (:by |root) (:text |:pointer)
                  |v $ %{} :Expr (:at 1519368028360) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368029579) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1519368031142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368031562) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1519368032307) (:by |root) (:text |240)
                          |r $ %{} :Leaf (:at 1519368032737) (:by |root) (:text |80)
                          |v $ %{} :Leaf (:at 1519368033240) (:by |root) (:text |80)
                  |x $ %{} :Expr (:at 1519368217607) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368219848) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1519368227853) (:by |root) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1519367963533) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |cumulo-reel.style)
            |r $ %{} :Expr (:at 1519368036923) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519368038192) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1519368038575) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368038764) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1614311497578) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1519368041713) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519368041918) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368042785) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519368043289) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1519368236509) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368236979) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368258261) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368241627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368242073) (:by |root) (:text |ui)
  :ir $ {} (:package |cumulo-reel)
    :files $ {}
      |cumulo-reel.app.client $ {}
        :defs $ {}
          |*states $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1614311842561) (:by |B1y7Rc-Zz) (:text |defatom)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*states)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |{})
          |*store $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1614311835543) (:by |B1y7Rc-Zz) (:text |defatom)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                |r $ %{} :Expr (:at 1614332858888) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614332859427) (:by |B1y7Rc-Zz) (:text |{})
          |connect! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                    |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614311887509) (:by |B1y7Rc-Zz) (:text |str)
                        |j $ %{} :Leaf (:at 1614311907179) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                        |l $ %{} :Leaf (:at 1614311907989) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                        |n $ %{} :Leaf (:at 1614311901344) (:by |B1y7Rc-Zz) (:text "|\":")
                        |r $ %{} :Expr (:at 1614311893119) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614311894394) (:by |B1y7Rc-Zz) (:text |:port)
                            |j $ %{} :Leaf (:at 1614311897770) (:by |B1y7Rc-Zz) (:text |config/site)
                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |{})
                        |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:on-open)
                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614342641282) (:by |B1y7Rc-Zz) (:text |event)
                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                        |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:on-close)
                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |event)
                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reset!)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |nil)
                                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                        |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:on-data)
                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |data)
                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614344770700) (:by |B1y7Rc-Zz) (:text |case)
                                    |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:kind)
                                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |data)
                                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:patch)
                                        |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |let)
                                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |changes)
                                                    |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:data)
                                                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |data)
                                            |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                                |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |changes)
                                            |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reset!)
                                                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*store)
                                                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |changes)
                                    |v $ %{} :Expr (:at 1614344774499) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1614344774107) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614344774107) (:by |B1y7Rc-Zz) (:text |:kind)
                                            |j $ %{} :Leaf (:at 1614344774107) (:by |B1y7Rc-Zz) (:text |data)
                                        |j $ %{} :Expr (:at 1614344777740) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614344777740) (:by |B1y7Rc-Zz) (:text |println)
                                            |j $ %{} :Leaf (:at 1614344777740) (:by |B1y7Rc-Zz) (:text "|\"unknown kind:")
                                            |r $ %{} :Leaf (:at 1614344777740) (:by |B1y7Rc-Zz) (:text |data)
          |dispatch! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |dispatch!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op)
                    |b $ %{} :Leaf (:at 1688322603518) (:by |B1y7Rc-Zz) (:text |?)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op-data)
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text ||Dispatch)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op)
                    |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |op-data)
                |x $ %{} :Expr (:at 1688322582123) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1688322582644) (:by |B1y7Rc-Zz) (:text |if)
                    |L $ %{} :Expr (:at 1688322584458) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1688322586473) (:by |B1y7Rc-Zz) (:text |list?)
                        |b $ %{} :Leaf (:at 1688322586865) (:by |B1y7Rc-Zz) (:text |op)
                    |P $ %{} :Expr (:at 1688322588587) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1688322589462) (:by |B1y7Rc-Zz) (:text |recur)
                        |b $ %{} :Expr (:at 1688322595368) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688322596244) (:by |B1y7Rc-Zz) (:text |::)
                            |X $ %{} :Leaf (:at 1688322609649) (:by |B1y7Rc-Zz) (:text |:states)
                            |b $ %{} :Leaf (:at 1688322596749) (:by |B1y7Rc-Zz) (:text |op)
                            |h $ %{} :Leaf (:at 1688322600066) (:by |B1y7Rc-Zz) (:text |op-data)
                    |T $ %{} :Expr (:at 1688322764779) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1688322766119) (:by |B1y7Rc-Zz) (:text |if)
                        |L $ %{} :Expr (:at 1688322766711) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688322767680) (:by |B1y7Rc-Zz) (:text |tag?)
                            |b $ %{} :Leaf (:at 1688322768790) (:by |B1y7Rc-Zz) (:text |op)
                        |P $ %{} :Expr (:at 1688322769570) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688322770365) (:by |B1y7Rc-Zz) (:text |recur)
                            |b $ %{} :Expr (:at 1688322772166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1688322772433) (:by |B1y7Rc-Zz) (:text |::)
                                |b $ %{} :Leaf (:at 1688322772975) (:by |B1y7Rc-Zz) (:text |op)
                                |h $ %{} :Leaf (:at 1688322774165) (:by |B1y7Rc-Zz) (:text |op-data)
                        |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688322616570) (:by |B1y7Rc-Zz) (:text |tag-match)
                            |f $ %{} :Leaf (:at 1688322667130) (:by |B1y7Rc-Zz) (:text |op)
                            |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1688322617812) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:states)
                                    |b $ %{} :Leaf (:at 1688322620198) (:by |B1y7Rc-Zz) (:text |cursor)
                                    |h $ %{} :Leaf (:at 1688322620608) (:by |B1y7Rc-Zz) (:text |s)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reset!)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*states)
                                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876426315) (:by |B1y7Rc-Zz) (:text |update-states)
                                        |j $ %{} :Leaf (:at 1584876431039) (:by |B1y7Rc-Zz) (:text |@*states)
                                        |r $ %{} :Leaf (:at 1688322622888) (:by |B1y7Rc-Zz) (:text |cursor)
                                        |t $ %{} :Leaf (:at 1688322623169) (:by |B1y7Rc-Zz) (:text |s)
                            |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1688322624529) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
                            |x $ %{} :Expr (:at 1614344846193) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1688322652007) (:by |B1y7Rc-Zz) (:text |_)
                                |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-send!)
                                    |b $ %{} :Leaf (:at 1688322654481) (:by |B1y7Rc-Zz) (:text |op)
          |main! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |main!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |if)
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |config/dev?)
                        |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"dev")
                        |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"release")
                |w $ %{} :Expr (:at 1688409755774) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1688409756208) (:by |B1y7Rc-Zz) (:text |if)
                    |b $ %{} :Leaf (:at 1688409758186) (:by |B1y7Rc-Zz) (:text |config/dev?)
                    |h $ %{} :Expr (:at 1688409758877) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1688409764850) (:by |B1y7Rc-Zz) (:text |load-console-formatter!)
                |x $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |if)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ssr?)
                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
                |y $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
                |yT $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
                |yj $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*store)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:changes)
                    |v $ %{} :Expr (:at 1614311953386) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1614311953956) (:by |B1y7Rc-Zz) (:text |fn)
                        |L $ %{} :Expr (:at 1614311954212) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614311954843) (:by |B1y7Rc-Zz) (:text |store)
                            |j $ %{} :Leaf (:at 1614311955602) (:by |B1y7Rc-Zz) (:text |prev)
                        |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                            |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
                |yr $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |*states)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:changes)
                    |v $ %{} :Expr (:at 1614311959070) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1614311959595) (:by |B1y7Rc-Zz) (:text |fn)
                        |L $ %{} :Expr (:at 1614311959855) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614311962928) (:by |B1y7Rc-Zz) (:text |states)
                            |j $ %{} :Leaf (:at 1614311961304) (:by |B1y7Rc-Zz) (:text |prev)
                        |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                            |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
                |yv $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1688409736768) (:by |B1y7Rc-Zz) (:text |js/window.addEventListener)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"visibilitychange")
                    |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |fn)
                        |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614342228171) (:by |B1y7Rc-Zz) (:text |event)
                        |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |when)
                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |and)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |nil?)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*store)
                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |=)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "|\"visible")
                                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/document.visibilityState)
                            |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |connect!)
                |yx $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||App started!")
          |mount-target $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |def)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |mount-target)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |.querySelector)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/document)
                    |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text ||.app)
          |reload! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |reload!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                |t $ %{} :Expr (:at 1614345128226) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614345130519) (:by |B1y7Rc-Zz) (:text |remove-watch)
                    |j $ %{} :Leaf (:at 1614345132065) (:by |B1y7Rc-Zz) (:text |*store)
                    |r $ %{} :Leaf (:at 1614345134229) (:by |B1y7Rc-Zz) (:text |:changes)
                |u $ %{} :Expr (:at 1614345128226) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614345130519) (:by |B1y7Rc-Zz) (:text |remove-watch)
                    |j $ %{} :Leaf (:at 1614345144308) (:by |B1y7Rc-Zz) (:text |*states)
                    |r $ %{} :Leaf (:at 1614345134229) (:by |B1y7Rc-Zz) (:text |:changes)
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                |vT $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |*store)
                    |r $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |:changes)
                    |v $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |fn)
                        |j $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |store)
                            |j $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |prev)
                        |r $ %{} :Expr (:at 1614345126104) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |render-app!)
                            |j $ %{} :Leaf (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |render!)
                |w $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |add-watch)
                    |j $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |*states)
                    |r $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |:changes)
                    |v $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |fn)
                        |j $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |states)
                            |j $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |prev)
                        |r $ %{} :Expr (:at 1614345119932) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |render-app!)
                            |j $ %{} :Leaf (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |render!)
                |x $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
                |y $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||Code updated.")
          |render-app! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render-app!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |renderer)
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |renderer)
                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |mount-target)
                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |comp-container)
                        |j $ %{} :Expr (:at 1614345090269) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1614345159686) (:by |B1y7Rc-Zz) (:text |:states)
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*states)
                        |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |@*store)
                    |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |dispatch!)
          |simulate-login! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |let)
                    |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |raw)
                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |j $ %{} :Leaf (:at 1688409208865) (:by |B1y7Rc-Zz) (:text |js/localStorage.getItem)
                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:storage-key)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |config/site)
                    |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |if)
                        |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |some?)
                            |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |raw)
                        |r $ %{} :Expr (:at 1688409228743) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1688409229522) (:by |B1y7Rc-Zz) (:text |let)
                            |L $ %{} :Expr (:at 1688409229792) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1688409229933) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1688409230618) (:by |B1y7Rc-Zz) (:text |pair)
                                    |b $ %{} :Expr (:at 1688409233091) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1688409233091) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                        |b $ %{} :Leaf (:at 1688409233091) (:by |B1y7Rc-Zz) (:text |raw)
                            |T $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |do)
                                |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                                    |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||Found storage.")
                                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                    |j $ %{} :Expr (:at 1688409215021) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1688409215813) (:by |B1y7Rc-Zz) (:text |::)
                                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                                        |b $ %{} :Expr (:at 1688409235860) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1688409236285) (:by |B1y7Rc-Zz) (:text |nth)
                                            |b $ %{} :Leaf (:at 1688409238076) (:by |B1y7Rc-Zz) (:text |pair)
                                            |h $ %{} :Leaf (:at 1688409238286) (:by |B1y7Rc-Zz) (:text |0)
                                        |h $ %{} :Expr (:at 1688409235860) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1688409236285) (:by |B1y7Rc-Zz) (:text |nth)
                                            |b $ %{} :Leaf (:at 1688409238076) (:by |B1y7Rc-Zz) (:text |pair)
                                            |h $ %{} :Leaf (:at 1688409242121) (:by |B1y7Rc-Zz) (:text |1)
                        |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |do)
                            |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |println)
                                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text "||Found no storage.")
          |ssr? $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |def)
                |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ssr?)
                |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |some?)
                    |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |.querySelector)
                        |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |js/document)
                        |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text ||meta.respo-ssr)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ns)
              |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.client)
              |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:require)
                  |j $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |render!)
                          |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                          |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
                  |r $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |respo.cursor)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1584876438586) (:by |B1y7Rc-Zz) (:text |update-states)
                  |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1624105988245) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.container)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |comp-container)
                  |x $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |cljs.reader)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |read-string)
                  |y $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |cumulo-reel.schema)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:as)
                      |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |schema)
                  |yT $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1624107787377) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:as)
                      |v $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |config)
                  |yj $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                          |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |ws-send!)
                  |yr $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                      |r $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066543854) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1545066543854) (:by |B1y7Rc-Zz) (:text |patch-twig)
      |cumulo-reel.app.comp.container $ {}
        :defs $ {}
          |comp-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil?)
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                    |r $ %{} :Expr (:at 1521951403873) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1521951417580) (:by |root) (:text |comp-offline)
                    |v $ %{} :Expr (:at 1614342371976) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1614342373074) (:by |B1y7Rc-Zz) (:text |let)
                        |L $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |state)
                                |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:data)
                                    |j $ %{} :Expr (:at 1614345503256) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1614345504641) (:by |B1y7Rc-Zz) (:text |either)
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |states)
                                        |j $ %{} :Expr (:at 1614345505272) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614345505563) (:by |B1y7Rc-Zz) (:text |{})
                            |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |session)
                                |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either)
                                    |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:session)
                                        |j $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |store)
                                    |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{})
                            |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router)
                                |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either)
                                    |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:router)
                                        |j $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |store)
                                    |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{})
                            |v $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router-data)
                                |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either)
                                    |j $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:data)
                                        |j $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router)
                                    |r $ %{} :Expr (:at 1614342376199) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{})
                        |T $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819436301) (:by |B1y7Rc-Zz) (:text |:class-name)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |L $ %{} :Leaf (:at 1657819458611) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                        |j $ %{} :Leaf (:at 1657819460957) (:by |B1y7Rc-Zz) (:text |css/global)
                                        |r $ %{} :Leaf (:at 1657819462578) (:by |B1y7Rc-Zz) (:text |css/fullscreen)
                                        |v $ %{} :Leaf (:at 1657819464616) (:by |B1y7Rc-Zz) (:text |css/column)
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1523120265747) (:by |root) (:text |comp-navigation)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                |r $ %{} :Expr (:at 1523120353961) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1523120357277) (:by |root) (:text |:count)
                                    |j $ %{} :Leaf (:at 1523120358953) (:by |root) (:text |store)
                            |v $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819476883) (:by |B1y7Rc-Zz) (:text |case-default)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                    |l $ %{} :Expr (:at 1657819477863) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819477863) (:by |B1y7Rc-Zz) (:text |<>)
                                        |b $ %{} :Leaf (:at 1657819477863) (:by |B1y7Rc-Zz) (:text |router)
                                    |n $ %{} :Expr (:at 1525106918943) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1525106921967) (:by |root) (:text |:home)
                                        |j $ %{} :Expr (:at 1539195346168) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1539195347113) (:by |root) (:text |<>)
                                            |j $ %{} :Leaf (:at 1539195348244) (:by |root) (:text "|\"Home")
                                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                            |r $ %{} :Expr (:at 1524070838527) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1524070840507) (:by |root) (:text |:data)
                                                |j $ %{} :Leaf (:at 1524070841286) (:by |root) (:text |router)
                                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                    |j $ %{} :Expr (:at 1584876250029) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1584876250765) (:by |B1y7Rc-Zz) (:text |>>)
                                        |T $ %{} :Expr (:at 1614345574064) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1614345575560) (:by |B1y7Rc-Zz) (:text |either)
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                                            |j $ %{} :Expr (:at 1614345576082) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1614345576393) (:by |B1y7Rc-Zz) (:text |{})
                                        |j $ %{} :Leaf (:at 1584876252751) (:by |B1y7Rc-Zz) (:text |:login)
                            |w $ %{} :Expr (:at 1524279203814) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1524279211924) (:by |root) (:text |comp-status-color)
                                |j $ %{} :Expr (:at 1524279213788) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1524279214588) (:by |root) (:text |:color)
                                    |j $ %{} :Leaf (:at 1524279215366) (:by |root) (:text |store)
                            |y $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1529230769433) (:by |root) (:text |comp-messages)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |get-in)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                                        |r $ %{} :Leaf (:at 1529230765972) (:by |root) (:text |:messages)
                                |n $ %{} :Expr (:at 1529230771518) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1529230771976) (:by |root) (:text |{})
                                |p $ %{} :Expr (:at 1529230772453) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1529230773090) (:by |root) (:text |fn)
                                    |j $ %{} :Expr (:at 1529230773925) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1529230775135) (:by |root) (:text |info)
                                        |j $ %{} :Leaf (:at 1529230778336) (:by |root) (:text |d!)
                                    |r $ %{} :Expr (:at 1529230780551) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1529230781631) (:by |root) (:text |d!)
                                        |j $ %{} :Expr (:at 1688409609693) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688409610422) (:by |B1y7Rc-Zz) (:text |::)
                                            |T $ %{} :Leaf (:at 1529231458145) (:by |root) (:text |:session/remove-message)
                                            |b $ %{} :Leaf (:at 1688409612701) (:by |B1y7Rc-Zz) (:text |info)
                            |yD $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |when)
                                |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |config/dev?)
                                |r $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |comp-inspect)
                                    |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text ||Store)
                                    |r $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |store)
                                    |v $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |{})
                                        |j $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:bottom)
                                            |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |0)
                                        |r $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:left)
                                            |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |0)
                                        |v $ %{} :Expr (:at 1624107865701) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:max-width)
                                            |j $ %{} :Leaf (:at 1624107865701) (:by |B1y7Rc-Zz) (:text ||100%)
                            |yT $ %{} :Expr (:at 1521911502552) (:by |root)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1521911507241) (:by |root) (:text |when)
                                |L $ %{} :Leaf (:at 1624107870996) (:by |B1y7Rc-Zz) (:text |config/dev?)
                                |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                    |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                        |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                    |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
          |comp-offline $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1519314599832) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1521951399872) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |comp-offline)
                |n $ %{} :Expr (:at 1521951400852) (:by |root)
                  :data $ {}
                |r $ %{} :Expr (:at 1519314599832) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1519314599832) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                        |j $ %{} :Expr (:at 1519314599832) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1519314599832) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |merge)
                                |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/global)
                                |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/fullscreen)
                                |v $ %{} :Leaf (:at 1535564672966) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive)
                                |x $ %{} :Expr (:at 1535565529682) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1535565530129) (:by |B1y7Rc-Zz) (:text |{})
                                    |j $ %{} :Expr (:at 1535565530397) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535565536637) (:by |B1y7Rc-Zz) (:text |:background-color)
                                        |j $ %{} :Expr (:at 1535565541430) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1535565542473) (:by |B1y7Rc-Zz) (:text |:theme)
                                            |j $ %{} :Leaf (:at 1535565546181) (:by |B1y7Rc-Zz) (:text |config/site)
                    |l $ %{} :Expr (:at 1535564983624) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1535565362594) (:by |B1y7Rc-Zz) (:text |div)
                        |j $ %{} :Expr (:at 1535564984947) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1535564985316) (:by |B1y7Rc-Zz) (:text |{})
                            |j $ %{} :Expr (:at 1535564985627) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1535564987644) (:by |B1y7Rc-Zz) (:text |:style)
                                |j $ %{} :Expr (:at 1535565371727) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1535565373172) (:by |B1y7Rc-Zz) (:text |{})
                                    |T $ %{} :Expr (:at 1535564988232) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535564988883) (:by |B1y7Rc-Zz) (:text |:height)
                                        |j $ %{} :Leaf (:at 1535565472380) (:by |B1y7Rc-Zz) (:text |0)
                    |n $ %{} :Expr (:at 1535564675845) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1535564681122) (:by |B1y7Rc-Zz) (:text |div)
                        |j $ %{} :Expr (:at 1535564681371) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1535564681741) (:by |B1y7Rc-Zz) (:text |{})
                            |j $ %{} :Expr (:at 1535564681981) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1535564682940) (:by |B1y7Rc-Zz) (:text |:style)
                                |j $ %{} :Expr (:at 1535564683257) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1535564683549) (:by |B1y7Rc-Zz) (:text |{})
                                    |j $ %{} :Expr (:at 1535564683815) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535564692026) (:by |B1y7Rc-Zz) (:text |:background-image)
                                        |j $ %{} :Expr (:at 1535564692507) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1535564693703) (:by |B1y7Rc-Zz) (:text |str)
                                            |j $ %{} :Leaf (:at 1535564698133) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                            |n $ %{} :Expr (:at 1535564699933) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1535564708041) (:by |B1y7Rc-Zz) (:text |:icon)
                                                |j $ %{} :Leaf (:at 1535564775736) (:by |B1y7Rc-Zz) (:text |config/site)
                                            |r $ %{} :Leaf (:at 1535564696349) (:by |B1y7Rc-Zz) (:text "|\")")
                                    |r $ %{} :Expr (:at 1535564726919) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535564728738) (:by |B1y7Rc-Zz) (:text |:width)
                                        |j $ %{} :Leaf (:at 1535565090611) (:by |B1y7Rc-Zz) (:text |128)
                                    |v $ %{} :Expr (:at 1535564733832) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535564736588) (:by |B1y7Rc-Zz) (:text |:height)
                                        |j $ %{} :Leaf (:at 1535565093711) (:by |B1y7Rc-Zz) (:text |128)
                                    |x $ %{} :Expr (:at 1535564741439) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535564745512) (:by |B1y7Rc-Zz) (:text |:background-size)
                                        |j $ %{} :Leaf (:at 1535564749164) (:by |B1y7Rc-Zz) (:text |:contain)
                    |r $ %{} :Expr (:at 1519314599832) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1535565436682) (:by |B1y7Rc-Zz) (:text |div)
                        |j $ %{} :Expr (:at 1519314599832) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1519314599832) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:cursor)
                                        |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:pointer)
                                    |r $ %{} :Expr (:at 1535565239666) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1535565243041) (:by |B1y7Rc-Zz) (:text |:line-height)
                                        |j $ %{} :Leaf (:at 1535565498969) (:by |B1y7Rc-Zz) (:text "|\"32px")
                            |r $ %{} :Expr (:at 1519314599832) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:on-click)
                                |j $ %{} :Expr (:at 1584876456980) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1584876457500) (:by |B1y7Rc-Zz) (:text |fn)
                                    |L $ %{} :Expr (:at 1584876457832) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876458297) (:by |B1y7Rc-Zz) (:text |e)
                                        |j $ %{} :Leaf (:at 1584876459047) (:by |B1y7Rc-Zz) (:text |d!)
                                    |T $ %{} :Expr (:at 1519314599832) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876456497) (:by |B1y7Rc-Zz) (:text |d!)
                                        |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:effect/connect)
                                        |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |nil)
                        |r $ %{} :Expr (:at 1519314599832) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |<>)
                            |j $ %{} :Leaf (:at 1535564856884) (:by |B1y7Rc-Zz) (:text "||No connection...")
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-family)
                                    |j $ %{} :Leaf (:at 1535565688657) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                    |j $ %{} :Leaf (:at 1535565156897) (:by |B1y7Rc-Zz) (:text |24)
          |comp-status-color $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1524279216692) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1524279218316) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1524279216692) (:by |root) (:text |comp-status-color)
                |r $ %{} :Expr (:at 1524279216692) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1524279220380) (:by |root) (:text |color)
                |v $ %{} :Expr (:at 1524279221052) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1524279221503) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1524279221753) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1524279222145) (:by |root) (:text |{})
                        |b $ %{} :Expr (:at 1657819578327) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819580585) (:by |B1y7Rc-Zz) (:text |:class-name)
                            |b $ %{} :Leaf (:at 1657819584102) (:by |B1y7Rc-Zz) (:text |css-status-color)
                        |j $ %{} :Expr (:at 1524279222434) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524279223333) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1533835122554) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1533835132715) (:by |B1y7Rc-Zz) (:text |let)
                                |L $ %{} :Expr (:at 1533835132973) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1533835133406) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1533835134066) (:by |B1y7Rc-Zz) (:text |size)
                                        |j $ %{} :Leaf (:at 1533835156000) (:by |B1y7Rc-Zz) (:text |24)
                                |T $ %{} :Expr (:at 1524279223555) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1524279223903) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1524279224175) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524279228958) (:by |root) (:text |:width)
                                        |j $ %{} :Leaf (:at 1533835137743) (:by |B1y7Rc-Zz) (:text |size)
                                    |r $ %{} :Expr (:at 1524279231457) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524279232432) (:by |root) (:text |:height)
                                        |j $ %{} :Leaf (:at 1533835138984) (:by |B1y7Rc-Zz) (:text |size)
                                    |yT $ %{} :Expr (:at 1524279259074) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524279265891) (:by |root) (:text |:background-color)
                                        |j $ %{} :Leaf (:at 1524279319762) (:by |root) (:text |color)
          |css-status-color $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657819584407) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819586131) (:by |B1y7Rc-Zz) (:text |defstyle)
                |b $ %{} :Leaf (:at 1657819584407) (:by |B1y7Rc-Zz) (:text |css-status-color)
                |h $ %{} :Expr (:at 1657819584407) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819587256) (:by |B1y7Rc-Zz) (:text |{})
                    |b $ %{} :Expr (:at 1657819587546) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819588718) (:by |B1y7Rc-Zz) (:text "|\"$0")
                        |b $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |{})
                            |l $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:position)
                                |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:absolute)
                            |o $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:bottom)
                                |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |60)
                            |q $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:left)
                                |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |8)
                            |t $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:border-radius)
                                |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text "|\"50%")
                            |u $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:opacity)
                                |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |0.6)
                            |v $ %{} :Expr (:at 1657819589166) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:pointer-events)
                                |b $ %{} :Leaf (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:none)
          |style-body $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-body)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||8px 16px")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.app.comp.container)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                  |u $ %{} :Expr (:at 1657819443260) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819444874) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657819445299) (:by |B1y7Rc-Zz) (:text |:as)
                      |h $ %{} :Leaf (:at 1657819445903) (:by |B1y7Rc-Zz) (:text |css)
                  |x $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540962164790) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                          |xT $ %{} :Leaf (:at 1584876145776) (:by |B1y7Rc-Zz) (:text |>>)
                          |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                  |xT $ %{} :Expr (:at 1657819447054) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819448678) (:by |B1y7Rc-Zz) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657819450272) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819450577) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819451738) (:by |B1y7Rc-Zz) (:text |defstyle)
                  |y $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                  |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507816113982) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                  |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624106007135) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.navigation)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1523120276563) (:by |root) (:text |comp-navigation)
                  |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624106009014) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.profile)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                  |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624106012304) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.comp.login)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                  |yx $ %{} :Expr (:at 1507828725931) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507828730719) (:by |root) (:text |cumulo-reel.comp.reel)
                      |r $ %{} :Leaf (:at 1507828731528) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507828731735) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507828733743) (:by |root) (:text |comp-reel)
                  |yyj $ %{} :Expr (:at 1529230793085) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1529230796079) (:by |root) (:text |cumulo-reel.schema)
                      |r $ %{} :Leaf (:at 1529230796499) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1529230797248) (:by |root) (:text |schema)
                  |yyr $ %{} :Expr (:at 1535564714854) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624107817456) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                      |r $ %{} :Leaf (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as)
                      |v $ %{} :Leaf (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config)
                  |yyv $ %{} :Expr (:at 1614332430274) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |respo-message.comp.messages)
                      |r $ %{} :Leaf (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1614332430274) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |comp-messages)
      |cumulo-reel.app.comp.login $ {}
        :defs $ {}
          |comp-login $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |D $ %{} :Expr (:at 1584876236437) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1584876238993) (:by |B1y7Rc-Zz) (:text |cursor)
                            |j $ %{} :Expr (:at 1584876240666) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1584876244118) (:by |B1y7Rc-Zz) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1584876244890) (:by |B1y7Rc-Zz) (:text |states)
                        |T $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614344810834) (:by |B1y7Rc-Zz) (:text |either)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                                |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
                    |r $ %{} :Expr (:at 1519368111046) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1519368111912) (:by |root) (:text |div)
                        |L $ %{} :Expr (:at 1519368112156) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519368113787) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1519368114295) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519368116587) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1519368119982) (:by |root)
                                  :data $ {}
                                    |5 $ %{} :Leaf (:at 1519368124581) (:by |root) (:text |merge)
                                    |D $ %{} :Leaf (:at 1519368123630) (:by |root) (:text |ui/flex)
                                    |T $ %{} :Leaf (:at 1519368119197) (:by |root) (:text |ui/center)
                        |T $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Username)
                                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                            |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/input)
                                            |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1514302367311) (:by |root) (:text |:on-input)
                                                |j $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |fn)
                                                    |j $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |e)
                                                        |j $ %{} :Leaf (:at 1584876211461) (:by |B1y7Rc-Zz) (:text |d!)
                                                    |r $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1584876214648) (:by |B1y7Rc-Zz) (:text |d!)
                                                        |b $ %{} :Leaf (:at 1584876216153) (:by |B1y7Rc-Zz) (:text |cursor)
                                                        |j $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |assoc)
                                                            |j $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |state)
                                                            |r $ %{} :Leaf (:at 1584876220512) (:by |B1y7Rc-Zz) (:text |:username)
                                                            |v $ %{} :Expr (:at 1584876206392) (:by |B1y7Rc-Zz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |:value)
                                                                |j $ %{} :Leaf (:at 1584876206392) (:by |B1y7Rc-Zz) (:text |e)
                                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Password)
                                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                            |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/input)
                                            |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1514302370752) (:by |root) (:text |:on-input)
                                                |j $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |fn)
                                                    |j $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |e)
                                                        |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |d!)
                                                    |r $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |d!)
                                                        |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |cursor)
                                                        |r $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |assoc)
                                                            |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |state)
                                                            |r $ %{} :Leaf (:at 1584876233616) (:by |B1y7Rc-Zz) (:text |:password)
                                                            |v $ %{} :Expr (:at 1584876229449) (:by |B1y7Rc-Zz)
                                                              :data $ {}
                                                                |T $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |:value)
                                                                |j $ %{} :Leaf (:at 1584876229449) (:by |B1y7Rc-Zz) (:text |e)
                            |v $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                            |x $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                        |j $ %{} :Expr (:at 1519368067092) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1519368067501) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1519368135916) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1519368141461) (:by |root) (:text |:text-align)
                                                |j $ %{} :Leaf (:at 1519368142240) (:by |root) (:text |:right)
                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519367924372) (:by |root) (:text |span)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Sign up")
                                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                                |j $ %{} :Leaf (:at 1519368006916) (:by |root) (:text |style/link)
                                        |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1514302375364) (:by |root) (:text |:on-click)
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                                |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |true)
                                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519367939048) (:by |root) (:text |span)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                            |j $ %{} :Leaf (:at 1519368084428) (:by |root) (:text "||Log in")
                                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                                |j $ %{} :Leaf (:at 1519368006916) (:by |root) (:text |style/link)
                                        |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1514302381488) (:by |root) (:text |:on-click)
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                                |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |false)
          |initial-state $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
          |on-submit $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |fn)
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
                            |r $ %{} :Expr (:at 1688409266757) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1688409267519) (:by |B1y7Rc-Zz) (:text |::)
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/sign-up)
                                |b $ %{} :Leaf (:at 1688409269560) (:by |B1y7Rc-Zz) (:text |username)
                                |h $ %{} :Leaf (:at 1688409270823) (:by |B1y7Rc-Zz) (:text |password)
                            |v $ %{} :Expr (:at 1688409272237) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1688409272917) (:by |B1y7Rc-Zz) (:text |::)
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-in)
                                |b $ %{} :Leaf (:at 1688409274995) (:by |B1y7Rc-Zz) (:text |username)
                                |h $ %{} :Leaf (:at 1688409276227) (:by |B1y7Rc-Zz) (:text |password)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1688409258735) (:by |B1y7Rc-Zz) (:text |js/localStorage.setItem)
                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                            |j $ %{} :Leaf (:at 1527788909281) (:by |root) (:text |config/site)
                        |v $ %{} :Expr (:at 1614344131333) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1624104269958) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                            |T $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                                |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1510936619134) (:by |root) (:text |cumulo-reel.app.comp.login)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1540962172090) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                          |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |button)
                          |yT $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                  |x $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1516547410331) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                  |y $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.schema)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                  |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1519368017028) (:by |root) (:text |cumulo-reel.style)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1519368019779) (:by |root) (:text |style)
                  |yj $ %{} :Expr (:at 1527788911549) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527788911897) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1624107822879) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                      |r $ %{} :Leaf (:at 1527788914516) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1527788915188) (:by |root) (:text |config)
      |cumulo-reel.app.comp.navigation $ {}
        :defs $ {}
          |comp-navigation $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-navigation)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                    |j $ %{} :Leaf (:at 1523120365880) (:by |root) (:text |count-members)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                        |b $ %{} :Expr (:at 1657819616885) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819620029) (:by |B1y7Rc-Zz) (:text |:class-name)
                            |b $ %{} :Expr (:at 1657819620726) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819622269) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                |b $ %{} :Leaf (:at 1657819625421) (:by |B1y7Rc-Zz) (:text |css/row-center)
                                |h $ %{} :Leaf (:at 1657819630683) (:by |B1y7Rc-Zz) (:text |css-nav)
                    |r $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                                |j $ %{} :Expr (:at 1584876155395) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1584876156032) (:by |B1y7Rc-Zz) (:text |fn)
                                    |L $ %{} :Expr (:at 1584876156290) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876158008) (:by |B1y7Rc-Zz) (:text |e)
                                        |j $ %{} :Leaf (:at 1584876160431) (:by |B1y7Rc-Zz) (:text |d!)
                                    |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876154821) (:by |B1y7Rc-Zz) (:text |d!)
                                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:home)
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:pointer)
                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                            |j $ %{} :Expr (:at 1536561771096) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1536561772481) (:by |B1y7Rc-Zz) (:text |:title)
                                |j $ %{} :Leaf (:at 1536561776186) (:by |B1y7Rc-Zz) (:text |config/site)
                            |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||pointer)
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1514302332444) (:by |root) (:text |:on-click)
                                |j $ %{} :Expr (:at 1584876163159) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1584876163693) (:by |B1y7Rc-Zz) (:text |fn)
                                    |L $ %{} :Expr (:at 1584876163906) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876164308) (:by |B1y7Rc-Zz) (:text |e)
                                        |j $ %{} :Leaf (:at 1584876164963) (:by |B1y7Rc-Zz) (:text |d!)
                                    |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876162735) (:by |B1y7Rc-Zz) (:text |d!)
                                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                                |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Me)
                                |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Guest)
                        |v $ %{} :Expr (:at 1523120369216) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1523120369974) (:by |root) (:text |=<)
                            |j $ %{} :Leaf (:at 1523120371053) (:by |root) (:text |8)
                            |r $ %{} :Leaf (:at 1523120371555) (:by |root) (:text |nil)
                        |x $ %{} :Expr (:at 1523120371997) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1523120372630) (:by |root) (:text |<>)
                            |j $ %{} :Leaf (:at 1523120373023) (:by |root) (:text |count-members)
          |css-nav $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657819631325) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819632474) (:by |B1y7Rc-Zz) (:text |defstyle)
                |b $ %{} :Leaf (:at 1657819631325) (:by |B1y7Rc-Zz) (:text |css-nav)
                |h $ %{} :Expr (:at 1657819634342) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657819634880) (:by |B1y7Rc-Zz) (:text |{})
                    |T $ %{} :Expr (:at 1657819635301) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1657819674944) (:by |B1y7Rc-Zz) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |{})
                            |b $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:height)
                                |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |48)
                            |h $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:justify-content)
                                |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:space-between)
                            |l $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:padding)
                                |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text "||0 16px")
                            |o $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:font-size)
                                |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |16)
                            |q $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                                |b $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |str)
                                    |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text "||1px solid ")
                                    |h $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |hsl)
                                        |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0)
                                        |h $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0)
                                        |l $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0)
                                        |o $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0.1)
                            |s $ %{} :Expr (:at 1657819634104) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:font-family)
                                |b $ %{} :Leaf (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.app.comp.navigation)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1614311446932) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                  |t $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1657819640484) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1657819641773) (:by |B1y7Rc-Zz) (:text |css)
                  |w $ %{} :Expr (:at 1523120376505) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1523120382545) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                  |x $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540962179719) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                          |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |xT $ %{} :Expr (:at 1657819642688) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819644733) (:by |B1y7Rc-Zz) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657819645516) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819645761) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819646835) (:by |B1y7Rc-Zz) (:text |defstyle)
                  |y $ %{} :Expr (:at 1536561755369) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624107805291) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                      |r $ %{} :Leaf (:at 1536561758845) (:by |B1y7Rc-Zz) (:text |:as)
                      |v $ %{} :Leaf (:at 1536561761903) (:by |B1y7Rc-Zz) (:text |config)
      |cumulo-reel.app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                    |j $ %{} :Leaf (:at 1524070827396) (:by |root) (:text |members)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                        |b $ %{} :Expr (:at 1657819483804) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819486000) (:by |B1y7Rc-Zz) (:text |:class-name)
                            |b $ %{} :Leaf (:at 1657819487666) (:by |B1y7Rc-Zz) (:text |css/flex)
                        |j $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                            |j $ %{} :Expr (:at 1519314674864) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1519314675207) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1519314675496) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1519314677667) (:by |root) (:text |:padding)
                                    |j $ %{} :Leaf (:at 1519314678341) (:by |root) (:text |16)
                    |r $ %{} :Expr (:at 1524070753023) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1524070753742) (:by |root) (:text |div)
                        |L $ %{} :Expr (:at 1524070753977) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070754337) (:by |root) (:text |{})
                            |b $ %{} :Expr (:at 1657819513878) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819516200) (:by |B1y7Rc-Zz) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1657819718472) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                            |j $ %{} :Expr (:at 1524070764197) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1524070764960) (:by |root) (:text |:style)
                                |j $ %{} :Expr (:at 1524070765167) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1524070765499) (:by |root) (:text |{})
                                    |r $ %{} :Expr (:at 1524070772863) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524070774437) (:by |root) (:text |:font-size)
                                        |j $ %{} :Leaf (:at 1524070786249) (:by |root) (:text |32)
                                    |v $ %{} :Expr (:at 1524070778614) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524070781489) (:by |root) (:text |:font-weight)
                                        |j $ %{} :Leaf (:at 1524070782585) (:by |root) (:text |100)
                        |T $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |str)
                                |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Hello! ")
                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                    |t $ %{} :Expr (:at 1524070801446) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1524070803450) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1524070804372) (:by |root) (:text |nil)
                        |r $ %{} :Leaf (:at 1524070805591) (:by |root) (:text |16)
                    |u $ %{} :Expr (:at 1524070806586) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1524070807601) (:by |root) (:text |div)
                        |j $ %{} :Expr (:at 1524070807801) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070808172) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1524070882494) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819525002) (:by |B1y7Rc-Zz) (:text |:class-name)
                                |j $ %{} :Leaf (:at 1657819526426) (:by |B1y7Rc-Zz) (:text |css/row)
                        |r $ %{} :Expr (:at 1524070808914) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070810352) (:by |root) (:text |<>)
                            |j $ %{} :Leaf (:at 1614440954439) (:by |B1y7Rc-Zz) (:text "|\"Members:")
                        |t $ %{} :Expr (:at 1524070907095) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070907693) (:by |root) (:text |=<)
                            |j $ %{} :Leaf (:at 1524071002316) (:by |root) (:text |8)
                            |r $ %{} :Leaf (:at 1524070908955) (:by |root) (:text |nil)
                        |v $ %{} :Expr (:at 1524070813822) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070815507) (:by |root) (:text |list->)
                            |j $ %{} :Expr (:at 1524070815884) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1524070816388) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1524070882494) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819530607) (:by |B1y7Rc-Zz) (:text |:class-name)
                                    |j $ %{} :Leaf (:at 1657819532579) (:by |B1y7Rc-Zz) (:text |css/row)
                            |r $ %{} :Expr (:at 1524070817648) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1619669149065) (:by |B1y7Rc-Zz) (:text |->)
                                |j $ %{} :Leaf (:at 1524070823331) (:by |root) (:text |members)
                                |n $ %{} :Expr (:at 1614345425234) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624104255207) (:by |B1y7Rc-Zz) (:text |.to-list)
                                |r $ %{} :Expr (:at 1524070849620) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1524070853516) (:by |root) (:text |map)
                                    |j $ %{} :Expr (:at 1524070854323) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524070854836) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1524070855268) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614311476200) (:by |B1y7Rc-Zz) (:text |pair)
                                        |r $ %{} :Expr (:at 1614311463299) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1614311469012) (:by |B1y7Rc-Zz) (:text |let[])
                                            |L $ %{} :Expr (:at 1614311469411) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1614311469663) (:by |B1y7Rc-Zz) (:text |k)
                                                |j $ %{} :Leaf (:at 1614311471563) (:by |B1y7Rc-Zz) (:text |username)
                                            |P $ %{} :Leaf (:at 1614311473742) (:by |B1y7Rc-Zz) (:text |pair)
                                            |T $ %{} :Expr (:at 1524070862172) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1524070862624) (:by |root) (:text |[])
                                                |j $ %{} :Leaf (:at 1524070863576) (:by |root) (:text |k)
                                                |r $ %{} :Expr (:at 1524070863870) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1524070935603) (:by |root) (:text |div)
                                                    |b $ %{} :Expr (:at 1524070935915) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1524070936321) (:by |root) (:text |{})
                                                        |j $ %{} :Expr (:at 1524070941378) (:by |root)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1657819744721) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                            |b $ %{} :Leaf (:at 1657819749547) (:by |B1y7Rc-Zz) (:text |css-member-label)
                                                    |j $ %{} :Expr (:at 1524070937486) (:by |root)
                                                      :data $ {}
                                                        |D $ %{} :Leaf (:at 1524070939626) (:by |root) (:text |<>)
                                                        |T $ %{} :Leaf (:at 1524070866665) (:by |root) (:text |username)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                        |v $ %{} :Leaf (:at 1524070799028) (:by |root) (:text |48)
                    |x $ %{} :Expr (:at 1524070749088) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1524070749878) (:by |root) (:text |div)
                        |L $ %{} :Expr (:at 1524070750119) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070750478) (:by |root) (:text |{})
                        |P $ %{} :Expr (:at 1536750075330) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1536750077847) (:by |B1y7Rc-Zz) (:text |button)
                            |j $ %{} :Expr (:at 1536750078116) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1536750084550) (:by |B1y7Rc-Zz) (:text |{})
                                |j $ %{} :Expr (:at 1536750084800) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819541291) (:by |B1y7Rc-Zz) (:text |:class-name)
                                    |j $ %{} :Leaf (:at 1657819543115) (:by |B1y7Rc-Zz) (:text |css/button)
                                |r $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |:on-click)
                                    |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |fn)
                                        |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |e)
                                            |j $ %{} :Leaf (:at 1536750196752) (:by |B1y7Rc-Zz) (:text |d!)
                                        |r $ %{} :Expr (:at 1536750149343) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |j $ %{} :Leaf (:at 1657819545719) (:by |B1y7Rc-Zz) (:text |js/location.replace)
                                            |r $ %{} :Expr (:at 1536750157447) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1536750157996) (:by |B1y7Rc-Zz) (:text |str)
                                                |j $ %{} :Leaf (:at 1536947568308) (:by |root) (:text |js/location.origin)
                                                |r $ %{} :Leaf (:at 1536947560142) (:by |root) (:text "|\"?time=")
                                                |v $ %{} :Expr (:at 1536750183293) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1536750183917) (:by |B1y7Rc-Zz) (:text |.now)
                                                    |j $ %{} :Leaf (:at 1536750185350) (:by |B1y7Rc-Zz) (:text |js/Date)
                            |r $ %{} :Expr (:at 1536750090761) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1536750091205) (:by |B1y7Rc-Zz) (:text |<>)
                                |j $ %{} :Leaf (:at 1536750096637) (:by |B1y7Rc-Zz) (:text "|\"Refresh")
                        |R $ %{} :Expr (:at 1536750643074) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1536750643562) (:by |B1y7Rc-Zz) (:text |=<)
                            |j $ %{} :Leaf (:at 1536750644286) (:by |B1y7Rc-Zz) (:text |8)
                            |r $ %{} :Leaf (:at 1536750644793) (:by |B1y7Rc-Zz) (:text |nil)
                        |T $ %{} :Expr (:at 1500541010211) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1529343433304) (:by |root) (:text |button)
                            |j $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                |b $ %{} :Expr (:at 1657819548818) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819551339) (:by |B1y7Rc-Zz) (:text |:class-name)
                                    |b $ %{} :Leaf (:at 1657819553278) (:by |B1y7Rc-Zz) (:text |css/button)
                                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                    |b $ %{} :Expr (:at 1529343455186) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1529343455629) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1529343457115) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1529343457898) (:by |root) (:text |:color)
                                            |j $ %{} :Leaf (:at 1529343458855) (:by |root) (:text |:red)
                                        |r $ %{} :Expr (:at 1529343459158) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1529343463728) (:by |root) (:text |:border-color)
                                            |j $ %{} :Leaf (:at 1529343464475) (:by |root) (:text |:red)
                                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1514302350497) (:by |root) (:text |:on-click)
                                    |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1521951456454) (:by |root) (:text |fn)
                                        |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                                            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                        |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-out)
                                            |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                        |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                          :data $ {}
                                            |j $ %{} :Leaf (:at 1657819559572) (:by |B1y7Rc-Zz) (:text |js/localStorage.removeItem)
                                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                                                |j $ %{} :Leaf (:at 1527788933957) (:by |root) (:text |config/site)
                            |r $ %{} :Expr (:at 1500541010211) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                                |r $ %{} :Leaf (:at 1536750140051) (:by |B1y7Rc-Zz) (:text "|\"Log out")
          |css-member-label $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657819749898) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819751489) (:by |B1y7Rc-Zz) (:text |defstyle)
                |b $ %{} :Leaf (:at 1657819749898) (:by |B1y7Rc-Zz) (:text |css-member-label)
                |h $ %{} :Expr (:at 1657819749898) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819753128) (:by |B1y7Rc-Zz) (:text |{})
                    |b $ %{} :Expr (:at 1657819753433) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819754552) (:by |B1y7Rc-Zz) (:text "|\"$0")
                        |b $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |{})
                            |b $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:padding)
                                |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                            |h $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:border)
                                |b $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |str)
                                    |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                    |h $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |hsl)
                                        |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |0)
                                        |h $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |0)
                                        |l $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |80)
                            |l $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:border-radius)
                                |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"16px")
                            |o $ %{} :Expr (:at 1657819754972) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:margin)
                                |b $ %{} :Leaf (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"0 4px")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.app.comp.profile)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1614311487106) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                  |n $ %{} :Expr (:at 1657819499399) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819501004) (:by |B1y7Rc-Zz) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657819502364) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819502578) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819504739) (:by |B1y7Rc-Zz) (:text |defstyle)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |cumulo-reel.schema)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                  |w $ %{} :Expr (:at 1657819506357) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819508327) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657819508711) (:by |B1y7Rc-Zz) (:text |:as)
                      |h $ %{} :Leaf (:at 1657819509395) (:by |B1y7Rc-Zz) (:text |css)
                  |y $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540962184094) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                          |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                          |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                  |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                  |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1624107832244) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                      |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
      |cumulo-reel.app.config $ {}
        :defs $ {}
          |dev? $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066604311) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066604311) (:by |B1y7Rc-Zz) (:text |def)
                |j $ %{} :Leaf (:at 1545066604311) (:by |B1y7Rc-Zz) (:text |dev?)
                |r $ %{} :Expr (:at 1624108095805) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1624108095805) (:by |B1y7Rc-Zz) (:text |=)
                    |j $ %{} :Leaf (:at 1624108095805) (:by |B1y7Rc-Zz) (:text "|\"dev")
                    |r $ %{} :Expr (:at 1624108095805) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1624108095805) (:by |B1y7Rc-Zz) (:text |get-env)
                        |j $ %{} :Leaf (:at 1624196018232) (:by |B1y7Rc-Zz) (:text "|\"mode")
                        |n $ %{} :Leaf (:at 1658732686527) (:by |B1y7Rc-Zz) (:text "|\"release")
          |site $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |site)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:port)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |5021)
                    |t $ %{} :Expr (:at 1527867502467) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1527867504737) (:by |root) (:text |:title)
                        |j $ %{} :Leaf (:at 1527867511502) (:by |root) (:text "|\"Cumulo")
                    |u $ %{} :Expr (:at 1527867511986) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1527867512819) (:by |root) (:text |:icon)
                        |j $ %{} :Leaf (:at 1527867517723) (:by |root) (:text "|\"http://cdn.tiye.me/logo/cumulo.png")
                    |v $ %{} :Expr (:at 1527615278481) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1527615280984) (:by |root) (:text |:dev-ui)
                        |j $ %{} :Leaf (:at 1527615358738) (:by |root) (:text "|\"http://localhost:8100/main.css")
                    |x $ %{} :Expr (:at 1527615281625) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1527615283846) (:by |root) (:text |:release-ui)
                        |j $ %{} :Leaf (:at 1527615339502) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                    |x5 $ %{} :Expr (:at 1528009883995) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1528009886059) (:by |root) (:text |:cdn-url)
                        |j $ %{} :Leaf (:at 1584875932228) (:by |B1y7Rc-Zz) (:text "|\"http://cdn.tiye.me/cumulo-reel/")
                    |yr $ %{} :Expr (:at 1535565550489) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1535565552318) (:by |B1y7Rc-Zz) (:text |:theme)
                        |j $ %{} :Leaf (:at 1535565554474) (:by |B1y7Rc-Zz) (:text "|\"#eeeeff")
                    |yt $ %{} :Expr (:at 1545066625529) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066625529) (:by |B1y7Rc-Zz) (:text |:storage-key)
                        |j $ %{} :Leaf (:at 1614311777207) (:by |B1y7Rc-Zz) (:text "|\"reel-storage")
                    |yv $ %{} :Expr (:at 1545066623608) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066623608) (:by |B1y7Rc-Zz) (:text |:storage-file)
                        |j $ %{} :Leaf (:at 1614311769908) (:by |B1y7Rc-Zz) (:text "|\"storage.cirru")
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1527788708227) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |cumulo-reel.app.config)
              |r $ %{} :Expr (:at 1545066784671) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |:require)
                  |j $ %{} :Expr (:at 1545066784671) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |[])
                      |j $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                      |r $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |:refer)
                      |v $ %{} :Expr (:at 1545066784671) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1545066784671) (:by |B1y7Rc-Zz) (:text |get-env!)
      |cumulo-reel.app.server $ {}
        :defs $ {}
          |*client-caches $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1614313288806) (:by |B1y7Rc-Zz) (:text |defatom)
                |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*client-caches)
                |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |{})
          |*initial-db $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |defatom)
                |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |*initial-db)
                |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |if)
                    |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |path-exists?)
                        |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |w-log)
                            |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |storage-file)
                    |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |do)
                        |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |println)
                            |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                        |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |merge)
                            |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |schema/database)
                            |h $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |read-file)
                                    |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |storage-file)
                    |l $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |do)
                        |b $ %{} :Expr (:at 1657818812830) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |println)
                            |b $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
                        |h $ %{} :Leaf (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |schema/database)
          |*reader-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1614313282361) (:by |B1y7Rc-Zz) (:text |defatom)
                |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                |r $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |@*reel)
          |*reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1614313269432) (:by |B1y7Rc-Zz) (:text |defatom)
                |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*reel)
                |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |merge)
                    |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |reel-schema)
                    |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |{})
                        |j $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |:base)
                            |j $ %{} :Leaf (:at 1614313372094) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                        |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |:db)
                            |j $ %{} :Leaf (:at 1614313375609) (:by |B1y7Rc-Zz) (:text |@*initial-db)
          |dispatch! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |dispatch!)
                |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op)
                    |h $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid)
                |l $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |let)
                    |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-id)
                            |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |generate-id!)
                        |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-time)
                            |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |->)
                                |b $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |get-time!)
                                |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |.timestamp)
                    |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |if)
                        |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |config/dev?)
                        |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |println)
                            |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!")
                            |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |str)
                                |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op)
                            |o $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid)
                    |l $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1688323122543) (:by |B1y7Rc-Zz) (:text |tag-match)
                        |X $ %{} :Leaf (:at 1688323124307) (:by |B1y7Rc-Zz) (:text |op)
                        |b $ %{} :Expr (:at 1688323130430) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |h $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |:effect/persist)
                            |b $ %{} :Expr (:at 1688323133959) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1688323133959) (:by |B1y7Rc-Zz) (:text |persist-db!)
                        |l $ %{} :Expr (:at 1688323135769) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1688323136498) (:by |B1y7Rc-Zz) (:text |_)
                            |T $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |reset!)
                                |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |*reel)
                                |h $ %{} :Expr (:at 1657818795487) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                                    |b $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |@*reel)
                                    |h $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |updater)
                                    |l $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op)
                                    |q $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid)
                                    |s $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-id)
                                    |t $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-time)
                                    |u $ %{} :Leaf (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |config/dev?)
          |get-backup-path! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                |h $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                  :data $ {}
                |l $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |let)
                    |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now)
                            |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |.extract)
                                |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |get-time!)
                    |h $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |join-path)
                        |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                        |h $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text "|\"backups")
                        |l $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |str)
                            |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |:month)
                                |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now)
                        |o $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |str)
                            |b $ %{} :Expr (:at 1657818889747) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |:day)
                                |b $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now)
                            |h $ %{} :Leaf (:at 1657818889747) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru")
          |main! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |main!)
                |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                |l $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |println)
                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                    |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |if)
                        |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |config/dev?)
                        |h $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"dev")
                        |l $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"release")
                |o $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |let)
                    |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?)
                            |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |get-env)
                                |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"port")
                        |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port)
                            |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |if)
                                |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |some?)
                                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?)
                                |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |parse-float)
                                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?)
                                |l $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |:port)
                                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |config/site)
                    |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |run-server!)
                        |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port)
                    |l $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |println)
                        |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |str)
                            |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:")
                            |h $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port)
                |q $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |do)
                    |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |;)
                        |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading")
                    |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |identity)
                        |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                |s $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |set-interval)
                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |200)
                    |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |fn)
                        |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                        |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |render-loop!)
                |t $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |set-interval)
                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |600000)
                    |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |fn)
                        |b $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                        |h $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |persist-db!)
                |u $ %{} :Expr (:at 1657818323586) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |on-control-c)
                    |b $ %{} :Leaf (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |on-exit!)
          |on-exit! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |on-exit!)
                |h $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                  :data $ {}
                |l $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |persist-db!)
                |o $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |;)
                    |b $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |println)
                    |h $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text "|\"exit code is...")
                |q $ %{} :Expr (:at 1657818985210) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |quit!)
                    |b $ %{} :Leaf (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |0)
          |persist-db! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |persist-db!)
                |h $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                  :data $ {}
                |l $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |let)
                    |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content)
                            |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |assoc)
                                    |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |:db)
                                        |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |@*reel)
                                    |h $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |:sessions)
                                    |l $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |{})
                        |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-path)
                            |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-file)
                        |h $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |backup-path)
                            |b $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                    |h $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                        |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-path)
                        |h $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content)
                    |l $ %{} :Expr (:at 1657818854101) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                        |b $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |backup-path)
                        |h $ %{} :Leaf (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content)
          |reload! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |reload!)
                |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                |v $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |println)
                    |j $ %{} :Leaf (:at 1624471131986) (:by |B1y7Rc-Zz) (:text "||Code updated.")
                |w $ %{} :Expr (:at 1614227116494) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1614227116119) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |x $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |reset!)
                    |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |*reel)
                    |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                        |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |@*reel)
                        |r $ %{} :Leaf (:at 1614313388352) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                        |v $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |updater)
                |y $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                    |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
          |render-loop! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |render-loop!)
                |h $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                  :data $ {}
                |l $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |when)
                    |b $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |not)
                        |b $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |identical?)
                            |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                            |h $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reel)
                    |h $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |reset!)
                        |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                        |h $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reel)
                    |l $ %{} :Expr (:at 1657818920861) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                        |b $ %{} :Leaf (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
          |run-server! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |run-server!)
                |r $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818299988) (:by |B1y7Rc-Zz) (:text |port)
                |v $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                    |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |&{})
                        |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:port)
                        |h $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |port)
                    |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |fn)
                        |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data)
                        |e $ %{} :Expr (:at 1688322875840) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688322882395) (:by |B1y7Rc-Zz) (:text |println)
                            |b $ %{} :Leaf (:at 1688322884820) (:by |B1y7Rc-Zz) (:text "|\"Data")
                            |h $ %{} :Leaf (:at 1688322885926) (:by |B1y7Rc-Zz) (:text |data)
                        |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688322720375) (:by |B1y7Rc-Zz) (:text |tag-match)
                            |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data)
                            |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:connect)
                                    |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                                |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |do)
                                    |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                        |b $ %{} :Expr (:at 1688323335435) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688323336530) (:by |B1y7Rc-Zz) (:text |::)
                                            |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                        |l $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                                    |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println)
                                        |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                            |l $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:message)
                                    |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                                    |h $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |msg)
                                |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |let)
                                    |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action)
                                            |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                                |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |msg)
                                    |e $ %{} :Expr (:at 1688323100599) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1688323104254) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                        |b $ %{} :Leaf (:at 1688323105289) (:by |B1y7Rc-Zz) (:text |action)
                                        |h $ %{} :Leaf (:at 1688323106816) (:by |B1y7Rc-Zz) (:text |sid)
                            |o $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:disconnect)
                                    |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                                |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |do)
                                    |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println)
                                        |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                                    |h $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                        |b $ %{} :Expr (:at 1688323327997) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1688323329460) (:by |B1y7Rc-Zz) (:text |::)
                                            |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                        |l $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid)
                            |q $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |_)
                                |b $ %{} :Expr (:at 1657818281523) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1688322880842) (:by |B1y7Rc-Zz) (:text |eprintln)
                                    |b $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"unknown data:")
                                    |h $ %{} :Leaf (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data)
          |storage-file $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |def)
                |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |storage-file)
                |h $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |if)
                    |b $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |empty?)
                        |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                    |h $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |str)
                        |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                        |h $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |:storage-file)
                            |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |config/site)
                    |l $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |str)
                        |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                        |h $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text "|\"/")
                        |l $ %{} :Expr (:at 1657818699719) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |:storage-file)
                            |b $ %{} :Leaf (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |config/site)
          |sync-clients! $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel)
                |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |wss-each!)
                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |fn)
                        |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                        |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |let)
                            |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:db)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel)
                                |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:records)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel)
                                |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |session)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |get-in)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db)
                                        |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |[])
                                            |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:sessions)
                                            |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |old-store)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |or)
                                        |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |get)
                                            |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                            |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                        |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |nil)
                                |o $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |twig-container)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db)
                                        |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |session)
                                        |l $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records)
                                |q $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |old-store)
                                        |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store)
                                        |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |{})
                                            |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:key)
                                                |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:id)
                            |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |;)
                                |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |when)
                                |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |config/dev?)
                                |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |println)
                                    |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                    |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                    |l $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text "|\":")
                                    |o $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                    |q $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |count)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records)
                            |l $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |if)
                                |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |not=)
                                    |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                    |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |[])
                                |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |do)
                                    |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                        |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                            |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |{})
                                                |b $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:kind)
                                                    |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:patch)
                                                |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:data)
                                                    |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes)
                                    |h $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |swap!)
                                        |b $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                        |h $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |assoc)
                                        |l $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid)
                                        |o $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store)
                |o $ %{} :Expr (:at 1657818952719) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-twig-loop!)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545066692604) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |ns)
              |j $ %{} :Leaf (:at 1545066692604) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.server)
              |r $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:require)
                  |b $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818659026) (:by |B1y7Rc-Zz) (:text |cumulo-reel.schema)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:as)
                      |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |schema)
                  |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818749874) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |updater)
                  |l $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                          |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                          |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |reel-schema)
                  |o $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818385667) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:as)
                      |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |config)
                  |q $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818387486) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.twig.container)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |twig-container)
                  |s $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |diff-twig)
                  |t $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss.core)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                          |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-send!)
                          |h $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |u $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |new-twig-loop!)
                          |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                  |v $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818725651) (:by |B1y7Rc-Zz) (:text |cumulo-reel.$meta)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                  |w $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.fs)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |path-exists?)
                          |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                  |x $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.time)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |y $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |Date)
                          |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |get-time!)
                  |z $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.path)
                      |b $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657818357489) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |join-path)
      |cumulo-reel.app.twig.container $ {}
        :defs $ {}
          |twig-container $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1614226788452) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
                |n $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                    |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                            |j $ %{} :Expr (:at 1500541255553) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                        |j $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                            |j $ %{} :Expr (:at 1614349567127) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1614349570579) (:by |B1y7Rc-Zz) (:text |either)
                                |T $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                                |j $ %{} :Expr (:at 1614349571178) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1614349571611) (:by |B1y7Rc-Zz) (:text |{})
                        |r $ %{} :Expr (:at 1507830626848) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                            |j $ %{} :Expr (:at 1507830631302) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                    |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                                |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                    |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                                |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                    |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                        |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                    |r $ %{} :Expr (:at 1507830661017) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                        |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                        |T $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                            |r $ %{} :Expr (:at 1500541255553) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                    |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1614227198115) (:by |B1y7Rc-Zz) (:text |memof-call)
                                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                        |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |get-in)
                                            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                                            |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                                |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                    |j $ %{} :Expr (:at 1524070628251) (:by |root)
                                      :data $ {}
                                        |D $ %{} :Leaf (:at 1524070634499) (:by |root) (:text |assoc)
                                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                        |j $ %{} :Leaf (:at 1524070635855) (:by |root) (:text |:data)
                                        |r $ %{} :Expr (:at 1524070636122) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1614344762404) (:by |B1y7Rc-Zz) (:text |case)
                                            |j $ %{} :Expr (:at 1524070641804) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1524070642493) (:by |root) (:text |:name)
                                                |j $ %{} :Leaf (:at 1524070643351) (:by |root) (:text |router)
                                            |n $ %{} :Expr (:at 1525108994160) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1525108995413) (:by |root) (:text |:home)
                                                |j $ %{} :Expr (:at 1525108999855) (:by |root)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1525109002003) (:by |root) (:text |:pages)
                                                    |j $ %{} :Leaf (:at 1525109002404) (:by |root) (:text |db)
                                            |r $ %{} :Expr (:at 1524070643948) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1524070646898) (:by |root) (:text |:profile)
                                                |j $ %{} :Expr (:at 1524070654495) (:by |root)
                                                  :data $ {}
                                                    |D $ %{} :Leaf (:at 1614227192882) (:by |B1y7Rc-Zz) (:text |memof-call)
                                                    |T $ %{} :Leaf (:at 1524070662619) (:by |root) (:text |twig-members)
                                                    |j $ %{} :Expr (:at 1524070665615) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1524070670477) (:by |root) (:text |:sessions)
                                                        |j $ %{} :Leaf (:at 1524070672563) (:by |root) (:text |db)
                                                    |r $ %{} :Expr (:at 1524070673171) (:by |root)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1524070674094) (:by |root) (:text |:users)
                                                        |j $ %{} :Leaf (:at 1524070675166) (:by |root) (:text |db)
                                            |v $ %{} :Expr (:at 1614344755189) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Expr (:at 1614344757294) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1614344756297) (:by |B1y7Rc-Zz) (:text |:name)
                                                    |j $ %{} :Leaf (:at 1614344758337) (:by |B1y7Rc-Zz) (:text |router)
                                                |j $ %{} :Expr (:at 1614344758835) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1614344759137) (:by |B1y7Rc-Zz) (:text |{})
                                |y $ %{} :Expr (:at 1523120222572) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1523120223864) (:by |root) (:text |:count)
                                    |j $ %{} :Expr (:at 1523120229051) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1523120230136) (:by |root) (:text |count)
                                        |j $ %{} :Expr (:at 1523120230346) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1523120232122) (:by |root) (:text |:sessions)
                                            |j $ %{} :Leaf (:at 1523120232500) (:by |root) (:text |db)
                                |yT $ %{} :Expr (:at 1524279105545) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1533834715393) (:by |B1y7Rc-Zz) (:text |:color)
                                    |j $ %{} :Expr (:at 1524279111422) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819084979) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                            |v $ %{} :Leaf (:at 1507830683551) (:by |root) (:text |nil)
          |twig-members $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1524070676419) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1614226775320) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1524070676419) (:by |root) (:text |twig-members)
                |r $ %{} :Expr (:at 1524070676419) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1524070680419) (:by |root) (:text |sessions)
                    |j $ %{} :Leaf (:at 1524070708862) (:by |root) (:text |users)
                |v $ %{} :Expr (:at 1524070683188) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1619669137621) (:by |B1y7Rc-Zz) (:text |->)
                    |j $ %{} :Leaf (:at 1524070692906) (:by |root) (:text |sessions)
                    |n $ %{} :Expr (:at 1614345383041) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614345384889) (:by |B1y7Rc-Zz) (:text |to-pairs)
                    |r $ %{} :Expr (:at 1524070693234) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1524070695660) (:by |root) (:text |map)
                        |j $ %{} :Expr (:at 1524070696021) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1524070696334) (:by |root) (:text |fn)
                            |j $ %{} :Expr (:at 1524070696681) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1614313228956) (:by |B1y7Rc-Zz) (:text |pair)
                            |r $ %{} :Expr (:at 1614313230182) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1614313233410) (:by |B1y7Rc-Zz) (:text |let[])
                                |L $ %{} :Expr (:at 1614313234192) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |j $ %{} :Leaf (:at 1614313234192) (:by |B1y7Rc-Zz) (:text |k)
                                    |r $ %{} :Leaf (:at 1614313234192) (:by |B1y7Rc-Zz) (:text |session)
                                |P $ %{} :Leaf (:at 1614313236313) (:by |B1y7Rc-Zz) (:text |pair)
                                |T $ %{} :Expr (:at 1524070700350) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1524070701520) (:by |root) (:text |[])
                                    |j $ %{} :Leaf (:at 1524070702142) (:by |root) (:text |k)
                                    |r $ %{} :Expr (:at 1524070702968) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1524070705127) (:by |root) (:text |get-in)
                                        |j $ %{} :Leaf (:at 1524070714762) (:by |root) (:text |users)
                                        |r $ %{} :Expr (:at 1524070715457) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1524070716715) (:by |root) (:text |[])
                                            |j $ %{} :Expr (:at 1524070717257) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1524070720176) (:by |root) (:text |:user-id)
                                                |j $ %{} :Leaf (:at 1524070722292) (:by |root) (:text |session)
                                            |r $ %{} :Leaf (:at 1524070725752) (:by |root) (:text |:name)
                    |v $ %{} :Expr (:at 1524070729744) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614313415844) (:by |B1y7Rc-Zz) (:text |pairs-map)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.twig.container)
              |r $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:require)
                  |b $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819107869) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.twig.user)
                      |b $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |twig-user)
                  |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |memof.alias)
                      |b $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |memof-call)
                  |l $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |calcit.std.rand)
                      |b $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819093512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
      |cumulo-reel.app.twig.user $ {}
        :defs $ {}
          |twig-user $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1614226768213) (:by |B1y7Rc-Zz) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.twig.user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
      |cumulo-reel.app.updater $ {}
        :defs $ {}
          |updater $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                    |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                    |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                    |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |tag-match)
                    |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op)
                    |h $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:session/connect)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |session/connect)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                            |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                            |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                    |l $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                            |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                            |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                    |o $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-data)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                            |X $ %{} :Leaf (:at 1688409544791) (:by |B1y7Rc-Zz) (:text |db)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-data)
                            |h $ %{} :Leaf (:at 1688409540579) (:by |B1y7Rc-Zz) (:text |sid)
                            |l $ %{} :Leaf (:at 1688409541945) (:by |B1y7Rc-Zz) (:text |op-id)
                            |o $ %{} :Leaf (:at 1688409543146) (:by |B1y7Rc-Zz) (:text |op-time)
                    |q $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |user/log-in)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                            |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                            |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                            |q $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                            |s $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                    |s $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |username)
                            |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |password)
                            |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                            |q $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                            |s $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                    |t $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |user/log-out)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |sid)
                            |l $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-id)
                            |o $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |op-time)
                    |u $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |:router/change)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |data)
                        |b $ %{} :Expr (:at 1688409475243) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |router/change)
                            |X $ %{} :Leaf (:at 1688409562157) (:by |B1y7Rc-Zz) (:text |db)
                            |b $ %{} :Leaf (:at 1688409475243) (:by |B1y7Rc-Zz) (:text |data)
                            |h $ %{} :Leaf (:at 1688409563874) (:by |B1y7Rc-Zz) (:text |sid)
                            |l $ %{} :Leaf (:at 1688409565652) (:by |B1y7Rc-Zz) (:text |op-id)
                            |o $ %{} :Leaf (:at 1688409566906) (:by |B1y7Rc-Zz) (:text |op-time)
                    |v $ %{} :Expr (:at 1688409477126) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1688409477918) (:by |B1y7Rc-Zz) (:text |_)
                        |b $ %{} :Expr (:at 1688409478513) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688409479819) (:by |B1y7Rc-Zz) (:text |do)
                            |b $ %{} :Expr (:at 1688409480273) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1688409483583) (:by |B1y7Rc-Zz) (:text |eprintln)
                                |b $ %{} :Leaf (:at 1688409487372) (:by |B1y7Rc-Zz) (:text "|\"Unknown op")
                                |h $ %{} :Leaf (:at 1688409488348) (:by |B1y7Rc-Zz) (:text |op)
                            |h $ %{} :Leaf (:at 1688409490250) (:by |B1y7Rc-Zz) (:text |db)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1624106171732) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater.session)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1624106167894) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater.user)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1624106169909) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater.router)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                  |y $ %{} :Expr (:at 1529231005993) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231006285) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231007723) (:by |root) (:text |cumulo-reel.schema)
                      |r $ %{} :Leaf (:at 1529231008972) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1529231009860) (:by |root) (:text |schema)
                  |yT $ %{} :Expr (:at 1529231108810) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231110305) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231113905) (:by |root) (:text |respo-message.updater)
                      |r $ %{} :Leaf (:at 1529231114617) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1529231114849) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231116379) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1529231118760) (:by |root) (:text |update-messages)
      |cumulo-reel.app.updater.router $ {}
        :defs $ {}
          |change $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                        |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                        |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater.router)
      |cumulo-reel.app.updater.session $ {}
        :defs $ {}
          |connect $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                        |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                        |r $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1500541255553) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
          |disconnect $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                        |j $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                        |r $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                            |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
          |remove-message $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1529231499908) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |remove-message)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1529231506714) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231507936) (:by |root) (:text |update-in)
                    |j $ %{} :Leaf (:at 1529231509725) (:by |root) (:text |db)
                    |r $ %{} :Expr (:at 1529231509958) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529231510376) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529231511756) (:by |root) (:text |:sessions)
                        |r $ %{} :Leaf (:at 1529231512509) (:by |root) (:text |sid)
                        |v $ %{} :Leaf (:at 1529231515700) (:by |root) (:text |:messages)
                    |v $ %{} :Expr (:at 1529231534326) (:by |root)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1529231534991) (:by |root) (:text |fn)
                        |L $ %{} :Expr (:at 1529231535248) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1529231536189) (:by |root) (:text |messages)
                        |T $ %{} :Expr (:at 1529231516827) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1529231517957) (:by |root) (:text |dissoc)
                            |j $ %{} :Leaf (:at 1529231519342) (:by |root) (:text |messages)
                            |r $ %{} :Expr (:at 1529231521395) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1529231522521) (:by |root) (:text |:id)
                                |j $ %{} :Leaf (:at 1529231524125) (:by |root) (:text |op-data)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater.session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.schema)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
      |cumulo-reel.app.updater.user $ {}
        :defs $ {}
          |log-in $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |log-in)
                |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db)
                    |b $ %{} :Leaf (:at 1688409324771) (:by |B1y7Rc-Zz) (:text |username)
                    |e $ %{} :Leaf (:at 1688409326947) (:by |B1y7Rc-Zz) (:text |password)
                    |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |sid)
                    |l $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                    |o $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-time)
                |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1688409333272) (:by |B1y7Rc-Zz) (:text |let)
                    |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                            |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |->)
                                |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:users)
                                    |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db)
                                |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |vals)
                                |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |.to-list)
                                |o $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |find)
                                    |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                                        |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |user)
                                        |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |and)
                                            |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |=)
                                                |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username)
                                                |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:name)
                                                    |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |user)
                    |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update-in)
                        |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db)
                        |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |[])
                            |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:sessions)
                            |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |sid)
                        |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                            |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                            |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |if)
                                |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |some?)
                                    |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |if)
                                    |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |=)
                                        |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |md5)
                                            |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |password)
                                        |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:password)
                                            |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                    |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc)
                                        |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                                        |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:user-id)
                                        |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id)
                                            |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                    |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update)
                                        |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                                        |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:messages)
                                        |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                                            |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                            |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc)
                                                |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                                |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                                |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |{})
                                                    |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id)
                                                        |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                                    |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:text)
                                                        |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                          :data $ {}
                                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |str)
                                                            |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ")
                                                            |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username)
                                |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update)
                                    |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session)
                                    |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:messages)
                                    |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn)
                                        |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                        |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc)
                                            |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages)
                                            |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                            |l $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |{})
                                                |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id)
                                                    |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id)
                                                |h $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                  :data $ {}
                                                    |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:text)
                                                    |b $ %{} :Expr (:at 1657819046746) (:by |B1y7Rc-Zz)
                                                      :data $ {}
                                                        |T $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |str)
                                                        |b $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text "|\"No user named: ")
                                                        |h $ %{} :Leaf (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username)
          |log-out $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                    |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                        |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                        |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
          |sign-up $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |defn)
                |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sign-up)
                |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                    |X $ %{} :Leaf (:at 1688409426481) (:by |B1y7Rc-Zz) (:text |username)
                    |Z $ %{} :Leaf (:at 1688409428014) (:by |B1y7Rc-Zz) (:text |password)
                    |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid)
                    |l $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                    |o $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-time)
                |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1688409431303) (:by |B1y7Rc-Zz) (:text |let)
                    |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |maybe-user)
                            |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |find)
                                |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |vals)
                                    |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:users)
                                        |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                                |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |fn)
                                    |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |user)
                                    |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |=)
                                        |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                                        |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:name)
                                            |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |user)
                    |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |if)
                        |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |some?)
                            |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |maybe-user)
                        |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |update-in)
                            |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[])
                                |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:sessions)
                                |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid)
                                |l $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:messages)
                            |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |fn)
                                |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |messages)
                                |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc)
                                    |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |messages)
                                    |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                    |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |{})
                                        |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:id)
                                            |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                        |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:text)
                                            |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |str)
                                                |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                                |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                        |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |->)
                            |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db)
                            |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc-in)
                                |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[])
                                    |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:sessions)
                                    |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid)
                                    |l $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:user-id)
                                |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                            |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc-in)
                                |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[])
                                    |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:users)
                                    |h $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |{})
                                    |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:id)
                                        |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id)
                                    |h $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:name)
                                        |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                                    |l $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:nickname)
                                        |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username)
                                    |o $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:password)
                                        |b $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |md5)
                                            |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |password)
                                    |q $ %{} :Expr (:at 1657819035007) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:avatar)
                                        |b $ %{} :Leaf (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |nil)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.app.updater.user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                  |r $ %{} :Expr (:at 1657819056477) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |calcit.std.hash)
                      |b $ %{} :Leaf (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819056477) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |md5)
      |cumulo-reel.comp.reel $ {}
        :defs $ {}
          |comp-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507828615828) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507828638117) (:by |root) (:text |defcomp)
                |j $ %{} :Leaf (:at 1507828615828) (:by |root) (:text |comp-reel)
                |r $ %{} :Expr (:at 1507828615828) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1619669798298) (:by |B1y7Rc-Zz) (:text |size)
                    |j $ %{} :Leaf (:at 1507828806687) (:by |root) (:text |addional-styles)
                |v $ %{} :Expr (:at 1507828642014) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507828644047) (:by |root) (:text |div)
                    |j $ %{} :Expr (:at 1507828644307) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828645447) (:by |root) (:text |{})
                        |b $ %{} :Expr (:at 1657819344542) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819347279) (:by |B1y7Rc-Zz) (:text |:class-name)
                            |b $ %{} :Leaf (:at 1657819348902) (:by |B1y7Rc-Zz) (:text |css-reel)
                        |j $ %{} :Expr (:at 1507828787656) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507828788612) (:by |root) (:text |:style)
                            |j $ %{} :Leaf (:at 1507828820509) (:by |root) (:text |addional-styles)
                    |r $ %{} :Expr (:at 1507828646137) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828647130) (:by |root) (:text |<>)
                        |r $ %{} :Expr (:at 1507830487639) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1507830489506) (:by |root) (:text |str)
                            |L $ %{} :Leaf (:at 1507830563403) (:by |root) (:text ||Length:)
                            |T $ %{} :Leaf (:at 1619669800619) (:by |B1y7Rc-Zz) (:text |size)
                        |v $ %{} :Leaf (:at 1507828651981) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1507828652616) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828654134) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1507828656265) (:by |root) (:text |8)
                        |r $ %{} :Leaf (:at 1507828656797) (:by |root) (:text |nil)
                    |x $ %{} :Expr (:at 1507828657608) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507830450172) (:by |root) (:text |span)
                        |j $ %{} :Expr (:at 1507828660058) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507828660406) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507828660655) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507828662301) (:by |root) (:text |:inner-text)
                                |j $ %{} :Leaf (:at 1507828665664) (:by |root) (:text ||Reset)
                            |n $ %{} :Expr (:at 1507828771973) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819301235) (:by |B1y7Rc-Zz) (:text |:class-name)
                                |j $ %{} :Leaf (:at 1657819298353) (:by |B1y7Rc-Zz) (:text |css-click)
                            |r $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |:on-click)
                                |b $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |fn)
                                    |b $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |e)
                                        |b $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |d!)
                                    |h $ %{} :Expr (:at 1657819308390) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |d!)
                                        |b $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |:reel/reset)
                                        |h $ %{} :Leaf (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |nil)
                    |xT $ %{} :Expr (:at 1507828690995) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828691717) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1507828692530) (:by |root) (:text |8)
                        |r $ %{} :Leaf (:at 1507828693029) (:by |root) (:text |nil)
                    |y $ %{} :Expr (:at 1507828657608) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507830455176) (:by |root) (:text |span)
                        |j $ %{} :Expr (:at 1507828660058) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507828660406) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507828660655) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507828662301) (:by |root) (:text |:inner-text)
                                |j $ %{} :Leaf (:at 1507828686464) (:by |root) (:text ||Merge)
                            |n $ %{} :Expr (:at 1657819327758) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819327758) (:by |B1y7Rc-Zz) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1657819327758) (:by |B1y7Rc-Zz) (:text |css-click)
                            |t $ %{} :Expr (:at 1507828670352) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819311985) (:by |B1y7Rc-Zz) (:text |:on-click)
                                |j $ %{} :Expr (:at 1507828672178) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507828672472) (:by |root) (:text |fn)
                                    |j $ %{} :Expr (:at 1507828673101) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507828673612) (:by |root) (:text |e)
                                        |j $ %{} :Leaf (:at 1507828674547) (:by |root) (:text |d!)
                                    |r $ %{} :Expr (:at 1507828675771) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507828676567) (:by |root) (:text |d!)
                                        |j $ %{} :Leaf (:at 1507828689327) (:by |root) (:text |:reel/merge)
                                        |r $ %{} :Leaf (:at 1507828680980) (:by |root) (:text |nil)
                    |yD $ %{} :Expr (:at 1507828690995) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828691717) (:by |root) (:text |=<)
                        |j $ %{} :Leaf (:at 1507828692530) (:by |root) (:text |8)
                        |r $ %{} :Leaf (:at 1507828693029) (:by |root) (:text |nil)
                    |yT $ %{} :Expr (:at 1507828657608) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507830455176) (:by |root) (:text |span)
                        |j $ %{} :Expr (:at 1507828660058) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507828660406) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507828660655) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507828662301) (:by |root) (:text |:inner-text)
                                |j $ %{} :Leaf (:at 1521797627988) (:by |root) (:text ||Persist)
                            |n $ %{} :Expr (:at 1657819329109) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819329109) (:by |B1y7Rc-Zz) (:text |:class-name)
                                |b $ %{} :Leaf (:at 1657819329109) (:by |B1y7Rc-Zz) (:text |css-click)
                            |t $ %{} :Expr (:at 1507828670352) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819319007) (:by |B1y7Rc-Zz) (:text |:on-click)
                                |r $ %{} :Expr (:at 1584876337457) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1584876338074) (:by |B1y7Rc-Zz) (:text |fn)
                                    |L $ %{} :Expr (:at 1584876338556) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876338883) (:by |B1y7Rc-Zz) (:text |e)
                                        |j $ %{} :Leaf (:at 1584876339471) (:by |B1y7Rc-Zz) (:text |d!)
                                    |T $ %{} :Expr (:at 1521797602013) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1584876336821) (:by |B1y7Rc-Zz) (:text |d!)
                                        |j $ %{} :Leaf (:at 1521797612607) (:by |root) (:text |:effect/persist)
                                        |r $ %{} :Leaf (:at 1521797613900) (:by |root) (:text |nil)
          |css-click $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507830476140) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819288670) (:by |B1y7Rc-Zz) (:text |defstyle)
                |j $ %{} :Leaf (:at 1657819287252) (:by |B1y7Rc-Zz) (:text |css-click)
                |r $ %{} :Expr (:at 1657819289631) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1657819290424) (:by |B1y7Rc-Zz) (:text |{})
                    |T $ %{} :Expr (:at 1657819290885) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1657819292339) (:by |B1y7Rc-Zz) (:text "|\"$0")
                        |T $ %{} :Expr (:at 1507830476140) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507830476140) (:by |root) (:text |{})
                            |j $ %{} :Expr (:at 1507830476140) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507830476140) (:by |root) (:text |:cursor)
                                |j $ %{} :Leaf (:at 1507830476140) (:by |root) (:text |:pointer)
                            |r $ %{} :Expr (:at 1507830503241) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507830504703) (:by |root) (:text |:color)
                                |j $ %{} :Expr (:at 1507830505262) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507830505953) (:by |root) (:text |hsl)
                                    |j $ %{} :Leaf (:at 1507830508223) (:by |root) (:text |200)
                                    |r $ %{} :Leaf (:at 1507830508713) (:by |root) (:text |80)
                                    |v $ %{} :Leaf (:at 1507830514472) (:by |root) (:text |80)
                            |v $ %{} :Expr (:at 1507830515446) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507830517136) (:by |root) (:text |:font-size)
                                |j $ %{} :Leaf (:at 1507830534305) (:by |root) (:text |:12)
                            |x $ %{} :Expr (:at 1507830521076) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507830524822) (:by |root) (:text |:text-decoration)
                                |j $ %{} :Leaf (:at 1507830529129) (:by |root) (:text |:underline)
          |css-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1657819349775) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1657819351131) (:by |B1y7Rc-Zz) (:text |defstyle)
                |b $ %{} :Leaf (:at 1657819349775) (:by |B1y7Rc-Zz) (:text |css-reel)
                |h $ %{} :Expr (:at 1657819349775) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657819352886) (:by |B1y7Rc-Zz) (:text |{})
                    |b $ %{} :Expr (:at 1657819354212) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657819357596) (:by |B1y7Rc-Zz) (:text "|\"$0")
                        |b $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |{})
                            |b $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:padding)
                                |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8)
                            |h $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:position)
                                |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:absolute)
                            |l $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:bottom)
                                |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8)
                            |o $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:right)
                                |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8)
                            |q $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:font-size)
                                |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |12)
                            |s $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:color)
                                |b $ %{} :Expr (:at 1657819358068) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |hsl)
                                    |b $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |0)
                                    |h $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |0)
                                    |l $ %{} :Leaf (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |60)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507828612052) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507828612052) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507828612052) (:by |root) (:text |cumulo-reel.comp.reel)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1614311744065) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                  |n $ %{} :Expr (:at 1657819370728) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819374829) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                      |b $ %{} :Leaf (:at 1657819375336) (:by |B1y7Rc-Zz) (:text |:as)
                      |h $ %{} :Leaf (:at 1657819375951) (:by |B1y7Rc-Zz) (:text |css)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1516547434475) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                  |x $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1540962188403) (:by |root) (:text |respo.core)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                          |w $ %{} :Leaf (:at 1507828743963) (:by |root) (:text |button)
                          |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |xT $ %{} :Expr (:at 1657819380160) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657819381967) (:by |B1y7Rc-Zz) (:text |respo.css)
                      |b $ %{} :Leaf (:at 1657819383720) (:by |B1y7Rc-Zz) (:text |:refer)
                      |h $ %{} :Expr (:at 1657819383920) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657819385267) (:by |B1y7Rc-Zz) (:text |defstyle)
                  |y $ %{} :Expr (:at 1507828750778) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1507828759087) (:by |root) (:text |respo.comp.space)
                      |r $ %{} :Leaf (:at 1507828759839) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1507828760096) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1507828761860) (:by |root) (:text |=<)
      |cumulo-reel.core $ {}
        :defs $ {}
          |ReelState $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1624195889172) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1624195891799) (:by |B1y7Rc-Zz) (:text |defrecord)
                |j $ %{} :Leaf (:at 1624195889172) (:by |B1y7Rc-Zz) (:text |ReelState)
                |r $ %{} :Leaf (:at 1624195893458) (:by |B1y7Rc-Zz) (:text |:base)
                |v $ %{} :Leaf (:at 1624195895208) (:by |B1y7Rc-Zz) (:text |:db)
                |x $ %{} :Leaf (:at 1624195898729) (:by |B1y7Rc-Zz) (:text |:records)
                |y $ %{} :Leaf (:at 1624195901174) (:by |B1y7Rc-Zz) (:text |:merged?)
          |play-records $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507807777029) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507807777029) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507807777029) (:by |root) (:text |play-records)
                |r $ %{} :Expr (:at 1507807777029) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507807852850) (:by |root) (:text |db)
                    |j $ %{} :Leaf (:at 1507807782382) (:by |root) (:text |records)
                    |r $ %{} :Leaf (:at 1507807783430) (:by |root) (:text |updater)
                |v $ %{} :Expr (:at 1507807786831) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507807787293) (:by |root) (:text |if)
                    |j $ %{} :Expr (:at 1507807788493) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1624104902155) (:by |B1y7Rc-Zz) (:text |&list:empty?)
                        |j $ %{} :Leaf (:at 1507807791910) (:by |root) (:text |records)
                    |p $ %{} :Leaf (:at 1507808288838) (:by |root) (:text |db)
                    |v $ %{} :Expr (:at 1507807796352) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1614345816972) (:by |B1y7Rc-Zz) (:text |let-sugar)
                        |j $ %{} :Expr (:at 1507807831985) (:by |root)
                          :data $ {}
                            |T $ %{} :Expr (:at 1507807804774) (:by |root)
                              :data $ {}
                                |T $ %{} :Expr (:at 1507807804933) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507807805634) (:by |root) (:text |[])
                                    |j $ %{} :Leaf (:at 1507807806577) (:by |root) (:text |op)
                                    |v $ %{} :Leaf (:at 1507807810527) (:by |root) (:text |sid)
                                    |x $ %{} :Leaf (:at 1507807812164) (:by |root) (:text |op-id)
                                    |y $ %{} :Leaf (:at 1507807814137) (:by |root) (:text |op-time)
                                |j $ %{} :Expr (:at 1507807815913) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507807821680) (:by |root) (:text |first)
                                    |j $ %{} :Leaf (:at 1507808245880) (:by |root) (:text |records)
                            |j $ %{} :Expr (:at 1507807833581) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507807850908) (:by |root) (:text |next-db)
                                |j $ %{} :Expr (:at 1507807844750) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507807845576) (:by |root) (:text |updater)
                                    |j $ %{} :Leaf (:at 1507807849172) (:by |root) (:text |db)
                                    |r $ %{} :Leaf (:at 1507807858780) (:by |root) (:text |op)
                                    |x $ %{} :Leaf (:at 1507807860721) (:by |root) (:text |sid)
                                    |y $ %{} :Leaf (:at 1507807862424) (:by |root) (:text |op-id)
                                    |yT $ %{} :Leaf (:at 1507807864755) (:by |root) (:text |op-time)
                        |r $ %{} :Expr (:at 1507807867422) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807869747) (:by |root) (:text |recur)
                            |j $ %{} :Leaf (:at 1507807873195) (:by |root) (:text |next-db)
                            |r $ %{} :Expr (:at 1507807873961) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507808240025) (:by |root) (:text |rest)
                                |j $ %{} :Leaf (:at 1507807875952) (:by |root) (:text |records)
                            |v $ %{} :Leaf (:at 1507807877826) (:by |root) (:text |updater)
          |reel-reducer $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507807571921) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507807571921) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507807571921) (:by |root) (:text |reel-reducer)
                |r $ %{} :Expr (:at 1507807571921) (:by |root)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1507808567695) (:by |root) (:text |reel)
                    |T $ %{} :Leaf (:at 1507807899128) (:by |root) (:text |updater)
                    |r $ %{} :Leaf (:at 1507807901735) (:by |root) (:text |op)
                    |x $ %{} :Leaf (:at 1507807911186) (:by |root) (:text |sid)
                    |y $ %{} :Leaf (:at 1507807913048) (:by |root) (:text |op-id)
                    |yT $ %{} :Leaf (:at 1507807916081) (:by |root) (:text |op-time)
                    |yj $ %{} :Leaf (:at 1624107662759) (:by |B1y7Rc-Zz) (:text |?)
                    |yr $ %{} :Leaf (:at 1624107664091) (:by |B1y7Rc-Zz) (:text |dev?)
                |v $ %{} :Expr (:at 1688323163693) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |D $ %{} :Leaf (:at 1688323164689) (:by |B1y7Rc-Zz) (:text |let)
                    |L $ %{} :Expr (:at 1688323165009) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Expr (:at 1688323165160) (:by |B1y7Rc-Zz)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1688323167850) (:by |B1y7Rc-Zz) (:text |tag-name)
                            |b $ %{} :Expr (:at 1688323174269) (:by |B1y7Rc-Zz)
                              :data $ {}
                                |D $ %{} :Leaf (:at 1688323176503) (:by |B1y7Rc-Zz) (:text |nth)
                                |T $ %{} :Leaf (:at 1688323173025) (:by |B1y7Rc-Zz) (:text |op)
                                |b $ %{} :Leaf (:at 1688323180695) (:by |B1y7Rc-Zz) (:text |0)
                    |T $ %{} :Expr (:at 1507807917563) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507807935016) (:by |root) (:text |if)
                        |j $ %{} :Expr (:at 1507807935250) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1614312322478) (:by |B1y7Rc-Zz) (:text |starts-with?)
                            |j $ %{} :Leaf (:at 1688323183899) (:by |B1y7Rc-Zz) (:text |tag-name)
                            |r $ %{} :Leaf (:at 1636714022767) (:by |B1y7Rc-Zz) (:text |:reel/)
                        |r $ %{} :Expr (:at 1507807958585) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807959398) (:by |root) (:text |merge)
                            |j $ %{} :Leaf (:at 1507807960851) (:by |root) (:text |reel)
                            |r $ %{} :Expr (:at 1507808089496) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1688323202424) (:by |B1y7Rc-Zz) (:text |tag-match)
                                |j $ %{} :Leaf (:at 1507808117022) (:by |root) (:text |op)
                                |r $ %{} :Expr (:at 1507808117325) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1688323210980) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808122298) (:by |root) (:text |:reel/reset)
                                    |j $ %{} :Expr (:at 1507808145301) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808146428) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1507808149920) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507808152469) (:by |root) (:text |:records)
                                            |j $ %{} :Expr (:at 1507808153153) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507808153345) (:by |root) (:text |[])
                                        |r $ %{} :Expr (:at 1507808155583) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507808157622) (:by |root) (:text |:db)
                                            |j $ %{} :Expr (:at 1507808157976) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507808161024) (:by |root) (:text |:base)
                                                |j $ %{} :Leaf (:at 1507808163136) (:by |root) (:text |reel)
                                |v $ %{} :Expr (:at 1507808122933) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Expr (:at 1688323217152) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808129848) (:by |root) (:text |:reel/merge)
                                    |j $ %{} :Expr (:at 1507808164979) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808166682) (:by |root) (:text |{})
                                        |j $ %{} :Expr (:at 1507808167423) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507808168948) (:by |root) (:text |:records)
                                            |j $ %{} :Expr (:at 1507808169302) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507808169516) (:by |root) (:text |[])
                                        |r $ %{} :Expr (:at 1507808170611) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507808175078) (:by |root) (:text |:base)
                                            |j $ %{} :Expr (:at 1507808176231) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507808177447) (:by |root) (:text |:db)
                                                |j $ %{} :Leaf (:at 1507808178557) (:by |root) (:text |reel)
                                        |v $ %{} :Expr (:at 1525016595808) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1525016599243) (:by |root) (:text |:merged?)
                                            |j $ %{} :Leaf (:at 1525016599965) (:by |root) (:text |true)
                                |w $ %{} :Expr (:at 1688323205762) (:by |B1y7Rc-Zz)
                                  :data $ {}
                                    |D $ %{} :Leaf (:at 1688323206262) (:by |B1y7Rc-Zz) (:text |_)
                                    |T $ %{} :Expr (:at 1688323205424) (:by |B1y7Rc-Zz)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |do)
                                        |b $ %{} :Expr (:at 1688323205424) (:by |B1y7Rc-Zz)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |println)
                                            |b $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text "||Unknown op:")
                                            |h $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |op)
                                        |h $ %{} :Leaf (:at 1688323205424) (:by |B1y7Rc-Zz) (:text |reel)
                        |v $ %{} :Expr (:at 1507807961659) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807966627) (:by |root) (:text |let)
                            |j $ %{} :Expr (:at 1507808005428) (:by |root)
                              :data $ {}
                                |T $ %{} :Expr (:at 1507808005565) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507808010547) (:by |root) (:text |msg-pack)
                                    |j $ %{} :Expr (:at 1507808010979) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808011370) (:by |root) (:text |[])
                                        |j $ %{} :Leaf (:at 1507808012306) (:by |root) (:text |op)
                                        |v $ %{} :Leaf (:at 1507808016704) (:by |root) (:text |sid)
                                        |x $ %{} :Leaf (:at 1507808017548) (:by |root) (:text |op-id)
                                        |y $ %{} :Leaf (:at 1507808018926) (:by |root) (:text |op-time)
                            |r $ %{} :Expr (:at 1507808021414) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507808022031) (:by |root) (:text |->)
                                |j $ %{} :Leaf (:at 1507808023769) (:by |root) (:text |reel)
                                |r $ %{} :Expr (:at 1507808024071) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507808024885) (:by |root) (:text |update)
                                    |j $ %{} :Leaf (:at 1507808027711) (:by |root) (:text |:records)
                                    |r $ %{} :Expr (:at 1507808028155) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808028588) (:by |root) (:text |fn)
                                        |j $ %{} :Expr (:at 1507808028861) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1507808029976) (:by |root) (:text |records)
                                        |r $ %{} :Expr (:at 1521911568720) (:by |root)
                                          :data $ {}
                                            |D $ %{} :Leaf (:at 1521911569290) (:by |root) (:text |if)
                                            |L $ %{} :Leaf (:at 1521911570068) (:by |root) (:text |dev?)
                                            |T $ %{} :Expr (:at 1507808030991) (:by |root)
                                              :data $ {}
                                                |T $ %{} :Leaf (:at 1507808031959) (:by |root) (:text |conj)
                                                |j $ %{} :Leaf (:at 1507808300376) (:by |root) (:text |records)
                                                |r $ %{} :Leaf (:at 1507808036781) (:by |root) (:text |msg-pack)
                                            |j $ %{} :Leaf (:at 1521911573499) (:by |root) (:text |records)
                                |v $ %{} :Expr (:at 1507808039342) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507808047479) (:by |root) (:text |assoc)
                                    |j $ %{} :Leaf (:at 1507808049717) (:by |root) (:text |:db)
                                    |r $ %{} :Expr (:at 1507808056967) (:by |root)
                                      :data $ {}
                                        |T $ %{} :Leaf (:at 1507808057996) (:by |root) (:text |updater)
                                        |j $ %{} :Expr (:at 1507808059894) (:by |root)
                                          :data $ {}
                                            |T $ %{} :Leaf (:at 1624195972864) (:by |B1y7Rc-Zz) (:text |&record:get)
                                            |j $ %{} :Leaf (:at 1507808061864) (:by |root) (:text |reel)
                                            |r $ %{} :Leaf (:at 1624104794110) (:by |B1y7Rc-Zz) (:text |:db)
                                        |r $ %{} :Leaf (:at 1507808063495) (:by |root) (:text |op)
                                        |x $ %{} :Leaf (:at 1507808066276) (:by |root) (:text |sid)
                                        |y $ %{} :Leaf (:at 1507808068339) (:by |root) (:text |op-id)
                                        |yT $ %{} :Leaf (:at 1507808069665) (:by |root) (:text |op-time)
          |reel-schema $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507807587733) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507807589878) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1507807587733) (:by |root) (:text |reel-schema)
                |r $ %{} :Expr (:at 1507807587733) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1624195884697) (:by |B1y7Rc-Zz) (:text |%{})
                    |V $ %{} :Leaf (:at 1624195887635) (:by |B1y7Rc-Zz) (:text |ReelState)
                    |X $ %{} :Expr (:at 1507807600445) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507807601764) (:by |root) (:text |:base)
                        |j $ %{} :Leaf (:at 1507807603679) (:by |root) (:text |nil)
                    |b $ %{} :Expr (:at 1507807595904) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507808188063) (:by |root) (:text |:db)
                        |j $ %{} :Leaf (:at 1507807599626) (:by |root) (:text |nil)
                    |j $ %{} :Expr (:at 1507807592228) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507807593749) (:by |root) (:text |:records)
                        |j $ %{} :Expr (:at 1507807594535) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807674382) (:by |root) (:text |[])
                    |r $ %{} :Expr (:at 1507807605053) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507807606629) (:by |root) (:text |:merged?)
                        |j $ %{} :Leaf (:at 1507807608050) (:by |root) (:text |false)
          |refresh-reel $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1507807585218) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1507807585218) (:by |root) (:text |defn)
                |j $ %{} :Leaf (:at 1507807585218) (:by |root) (:text |refresh-reel)
                |r $ %{} :Expr (:at 1507807585218) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507807707677) (:by |root) (:text |reel)
                    |j $ %{} :Leaf (:at 1507807708866) (:by |root) (:text |base)
                    |r $ %{} :Leaf (:at 1507807711602) (:by |root) (:text |updater)
                |v $ %{} :Expr (:at 1507807713224) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507807713873) (:by |root) (:text |let)
                    |j $ %{} :Expr (:at 1507807714088) (:by |root)
                      :data $ {}
                        |T $ %{} :Expr (:at 1507807716280) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807720593) (:by |root) (:text |next-base)
                            |j $ %{} :Expr (:at 1507807722030) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507807722454) (:by |root) (:text |if)
                                |j $ %{} :Expr (:at 1507807722676) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1624470595986) (:by |B1y7Rc-Zz) (:text |&record:get)
                                    |j $ %{} :Leaf (:at 1507807724899) (:by |root) (:text |reel)
                                    |r $ %{} :Leaf (:at 1624104824681) (:by |B1y7Rc-Zz) (:text |:merged?)
                                |r $ %{} :Expr (:at 1507807726560) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507807727417) (:by |root) (:text |:base)
                                    |j $ %{} :Leaf (:at 1507807728386) (:by |root) (:text |reel)
                                |v $ %{} :Leaf (:at 1507807730618) (:by |root) (:text |base)
                    |r $ %{} :Expr (:at 1507807733505) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507807734158) (:by |root) (:text |->)
                        |j $ %{} :Leaf (:at 1507807735188) (:by |root) (:text |reel)
                        |r $ %{} :Expr (:at 1507807735526) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807736798) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1507807737680) (:by |root) (:text |:base)
                            |r $ %{} :Leaf (:at 1507807741059) (:by |root) (:text |next-base)
                        |v $ %{} :Expr (:at 1507807741935) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1507807743274) (:by |root) (:text |assoc)
                            |j $ %{} :Leaf (:at 1507808074280) (:by |root) (:text |:db)
                            |r $ %{} :Expr (:at 1507807746971) (:by |root)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1507807749581) (:by |root) (:text |play-records)
                                |j $ %{} :Leaf (:at 1507807755170) (:by |root) (:text |next-base)
                                |r $ %{} :Expr (:at 1507807763798) (:by |root)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1507807765879) (:by |root) (:text |:records)
                                    |j $ %{} :Leaf (:at 1507807767222) (:by |root) (:text |reel)
                                |v $ %{} :Leaf (:at 1507807769477) (:by |root) (:text |updater)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507807568560) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507807568560) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1507807568560) (:by |root) (:text |cumulo-reel.core)
      |cumulo-reel.schema $ {}
        :defs $ {}
          |database $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                        |j $ %{} :Expr (:at 1538886498428) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1538886499001) (:by |root) (:text |do)
                            |L $ %{} :Leaf (:at 1538886500387) (:by |root) (:text |session)
                            |T $ %{} :Expr (:at 1500541255553) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                        |j $ %{} :Expr (:at 1538886501540) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1538886502106) (:by |root) (:text |do)
                            |L $ %{} :Leaf (:at 1538886502625) (:by |root) (:text |user)
                            |T $ %{} :Expr (:at 1500541255553) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
          |router $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                        |j $ %{} :Expr (:at 1500541255553) (:by nil)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |x $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
          |session $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |x $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                        |j $ %{} :Expr (:at 1538886507054) (:by |root)
                          :data $ {}
                            |D $ %{} :Leaf (:at 1538886507646) (:by |root) (:text |do)
                            |L $ %{} :Leaf (:at 1538886508475) (:by |root) (:text |router)
                            |T $ %{} :Expr (:at 1500541255553) (:by nil)
                              :data $ {}
                                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                  :data $ {}
                                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |y $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529230759501) (:by |root) (:text |:messages)
                        |j $ %{} :Expr (:at 1529230760396) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1529230760716) (:by |root) (:text |{})
          |user $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |r $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |x $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                    |y $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |cumulo-reel.schema)
      |cumulo-reel.style $ {}
        :defs $ {}
          |link $ %{} :CodeEntry (:doc |)
            :code $ %{} :Expr (:at 1519367966237) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519367970413) (:by |root) (:text |def)
                |j $ %{} :Leaf (:at 1519367966237) (:by |root) (:text |link)
                |r $ %{} :Expr (:at 1519367966237) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519367974187) (:by |root) (:text |{})
                    |j $ %{} :Expr (:at 1519367974501) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519367980887) (:by |root) (:text |:text-decoration)
                        |j $ %{} :Leaf (:at 1519367984967) (:by |root) (:text |:underline)
                    |r $ %{} :Expr (:at 1519367985371) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519367998049) (:by |root) (:text |:cursor)
                        |j $ %{} :Leaf (:at 1519367996458) (:by |root) (:text |:pointer)
                    |v $ %{} :Expr (:at 1519368028360) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368029579) (:by |root) (:text |:color)
                        |j $ %{} :Expr (:at 1519368031142) (:by |root)
                          :data $ {}
                            |T $ %{} :Leaf (:at 1519368031562) (:by |root) (:text |hsl)
                            |j $ %{} :Leaf (:at 1519368032307) (:by |root) (:text |240)
                            |r $ %{} :Leaf (:at 1519368032737) (:by |root) (:text |80)
                            |v $ %{} :Leaf (:at 1519368033240) (:by |root) (:text |80)
                    |x $ %{} :Expr (:at 1519368217607) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368219848) (:by |root) (:text |:font-family)
                        |j $ %{} :Leaf (:at 1519368227853) (:by |root) (:text |ui/font-fancy)
        :ns $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519367963533) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |ns)
              |j $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |cumulo-reel.style)
              |r $ %{} :Expr (:at 1519368036923) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519368038192) (:by |root) (:text |:require)
                  |j $ %{} :Expr (:at 1519368038575) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368038764) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1614311497578) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                      |r $ %{} :Leaf (:at 1519368041713) (:by |root) (:text |:refer)
                      |v $ %{} :Expr (:at 1519368041918) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368042785) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1519368043289) (:by |root) (:text |hsl)
                  |r $ %{} :Expr (:at 1519368236509) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368236979) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1519368258261) (:by |root) (:text |respo-ui.core)
                      |r $ %{} :Leaf (:at 1519368241627) (:by |root) (:text |:as)
                      |v $ %{} :Leaf (:at 1519368242073) (:by |root) (:text |ui)
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
