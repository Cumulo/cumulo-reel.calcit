
{}
  :configs $ {} (:init-fn |cumulo-reel.app.client/main!) (:port 6001) (:reload-fn |cumulo-reel.app.client/reload!) (:storage-key |calcit.cirru) (:version |0.0.8)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/
  :entries $ {}
    :server $ {} (:init-fn |cumulo-reel.app.server/main!) (:reload-fn |cumulo-reel.app.server/reload!)
      :modules $ [] |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |lilac/ |calcit.std/ |calcit-wss/
  :ir $ {} (:package |cumulo-reel)
    :files $ {}
      |cumulo-reel.app.client $ {}
        :defs $ {}
          |*states $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |CH-Xac8v1qV) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614311842561) (:by |B1y7Rc-Zz) (:id |EYoY_izw022) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |SiXEGWkUPDs) (:text |*states) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |T5RIXY0xA1-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |CDQFBCOQGQN) (:text |{}) (:type :leaf)
          |*store $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |2DkEUU4AGaz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614311835543) (:by |B1y7Rc-Zz) (:id |VvrxWRzGZV6) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |L2ZK0BUR8Oi) (:text |*store) (:type :leaf)
              |r $ {} (:at 1614332858888) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614332859427) (:by |B1y7Rc-Zz) (:id |Z2ha-YDaiMr) (:text |{}) (:type :leaf)
          |connect! $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |M-QsgJWKBpi) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |dEiF2vYLk84) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FEF0CiKf3Ec) (:text |connect!) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |8ZdziKo3F88) (:type :expr)
                :data $ {}
              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |J8WJryjP2eY) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |dsJa8Hl4GFT) (:text |ws-connect!) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |6cMNtji-MiP) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614311887509) (:by |B1y7Rc-Zz) (:id |fxVEUR4oL1e) (:text |str) (:type :leaf)
                      |j $ {} (:at 1614311907179) (:by |B1y7Rc-Zz) (:id |j2tyEEvq9QH) (:text "|\"ws://") (:type :leaf)
                      |l $ {} (:at 1614311907989) (:by |B1y7Rc-Zz) (:text |js/location.hostname) (:type :leaf)
                      |n $ {} (:at 1614311901344) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                      |r $ {} (:at 1614311893119) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614311894394) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                          |j $ {} (:at 1614311897770) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |82jezTqf1CI) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |jHRC_j5GFPo) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |U4F3XKMfKKN) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |W9FZ74qR3jc) (:text |:on-open) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |xHUXDx5Ilhg) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ZVOsxqA66KQ) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |K4skxe3dW_R) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614342641282) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ooJJIjqB0S_) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Mv2IWjtcDZc) (:text |simulate-login!) (:type :leaf)
                      |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |4untY4DDVjn) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |RFo7qwpxjK9) (:text |:on-close) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |qyqWYFTNJox) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |MAXTtyo-rV9) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |UtFHsqE5xsy) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5IuncdWRypg) (:text |event) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |HTDBvFGkxpG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |p-oArdo2fRp) (:text |reset!) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |QELzTwp7VXX) (:text |*store) (:type :leaf)
                                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |59Cfl9A6JcI) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |CKcF788l3IF) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |WL-iO0zkE3u) (:text |js/console.error) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FBbE0w7S67s) (:text "|\"Lost connection!") (:type :leaf)
                      |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JPe81HQrIPG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |YMGvX-81sxJ) (:text |:on-data) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |9PKmQzwO4eF) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BWxQjb4JJtb) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |48XCUY2CGEL) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |DQLw2tfzsVl) (:text |data) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |f5QcKVy-BzS) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614344770700) (:by |B1y7Rc-Zz) (:id |5AXRkxtlTaU) (:text |case) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |rb_bxLSXM7V) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |P3O7R1d5auK) (:text |:kind) (:type :leaf)
                                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |L3J869hXDmb) (:text |data) (:type :leaf)
                                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |q3CVcAaJgAF) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |XLZrrJ6bSwl) (:text |:patch) (:type :leaf)
                                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1opR8tiUSjD) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |SOj3McvfZBT) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |RS6oEU-kd7_) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |vfqYAUtGgPQ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |zPMVKfNlwOe) (:text |changes) (:type :leaf)
                                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |RhDuAaPblF5) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |NRdl2KYJpdl) (:text |:data) (:type :leaf)
                                                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yJN-Xnqs1pT) (:text |data) (:type :leaf)
                                          |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |L8KCr1onfYI) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |xeNmy5a4pY_) (:text |js/console.log) (:type :leaf)
                                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JoPaH3QGcla) (:text "|\"Changes") (:type :leaf)
                                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |f7p_oLQhaH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1614311868815) (:by |B1y7Rc-Zz) (:id |qHkILaVDV6R) (:text |to-js-data) (:type :leaf)
                                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Y3OBed2a1l5) (:text |changes) (:type :leaf)
                                          |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ijUl7Q6TlXI) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Y0_ohscf5R3) (:text |reset!) (:type :leaf)
                                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |stOzxuuvgvzR) (:text |*store) (:type :leaf)
                                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |q4LenBc6evEm) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1oPDO6P0VrEf) (:text |patch-twig) (:type :leaf)
                                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |TueRIn-HpvsH) (:text |@*store) (:type :leaf)
                                                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |bxU4kGgMJKYI) (:text |changes) (:type :leaf)
                                  |v $ {} (:at 1614344774499) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614344774107) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1614344774107) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |j $ {} (:at 1614344774107) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                                      |j $ {} (:at 1614344777740) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1614344777740) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |j $ {} (:at 1614344777740) (:by |B1y7Rc-Zz) (:text "|\"unknown kind:") (:type :leaf)
                                          |r $ {} (:at 1614344777740) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |dispatch! $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1qy3kGrGKlp) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yem1pS-lV-p) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |xFHddGYS4T0) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |7naKJJbK1og) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |zHwpYCN0euJ) (:text |op) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |rndx-3aH55V) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |8gExtyNQDBm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |fCNpvc788JA) (:text |println) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |4e6ar6Q2-LF) (:text ||Dispatch) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BfuNCFwPNwK) (:text |op) (:type :leaf)
                  |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |-inrRD4EP8_) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Koe4PhyrlHg) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Y6v3-Q34Zfv) (:text |case) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |USwKdZxp_Jx) (:text |op) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |K-LKQY5zm-j) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |wqggs9borAo) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |OBYJFPgGQpb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0Mt1VfK_H1G) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |waplPVcCU84) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |GyO89jdc93Z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584876426315) (:by |B1y7Rc-Zz) (:id |GPDUWC3Utg7) (:text |update-states) (:type :leaf)
                              |j $ {} (:at 1584876431039) (:by |B1y7Rc-Zz) (:id |Ysy5mfrMM5) (:text |@*states) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |EFZAML4OQA0) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FDhJ4yt0lOB) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |p0pwVpXsPOs) (:text |:effect/connect) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Lefy19Z1UnY) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1qedjWdlIrT) (:text |connect!) (:type :leaf)
                  |x $ {} (:at 1614344846193) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1614344847275) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |WTtM8vVDj5W) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |OhfxZgOBETy) (:text |ws-send!) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |NncAduJyUR1) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |S2LBwkGT5ul) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |wDvzgyZlrHS) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |L8jrd6FrHih) (:text |:kind) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |x_kS-vAlBSr) (:text |:op) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |tNA9vUlPz7r) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yqJrcpqbbZF) (:text |:op) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |DLqGuTdWbla) (:text |op) (:type :leaf)
                              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |PGyUyiEK8en) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FNsigKIiHU8) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |LgAwCK3SaM8) (:text |op-data) (:type :leaf)
          |main! $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |dvsB-f0rFM-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |6Wyov-pTufw) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |2OUfvcOzWpp) (:text |main!) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |wUC-F2J9jgh) (:type :expr)
                :data $ {}
              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |R-PpMmEw2O0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1n-bgR0YIWk) (:text |println) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |-AmZgagyduj) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yGB1JXNMTeL) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |2a_9nBt1w0E) (:text |if) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |-9OPrWoerC2) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |bKJjMqSROTb) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |MQjZBPKNrn2) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |MpCL_--417K) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1DF2Sy6TPQZ) (:text |if) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |i7KjQoKASNe) (:text |ssr?) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |j-xH4jwhp3e) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |2gD2IrfV9sn) (:text |render-app!) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |UStMMgsrEu_) (:text |realize-ssr!) (:type :leaf)
              |y $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JemWsc8oQBm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |GtRVIIqRRJ3) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |U6z5f7Hym1q) (:text |render!) (:type :leaf)
              |yT $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |wj2sQbFCaYd) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ww2Irwdx1hb) (:text |connect!) (:type :leaf)
              |yj $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |PCADtH510SC) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1XFMTyCyaIH) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |75m3Bha-7Xt) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |J3hguRIAOmz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1614311953386) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1614311953956) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1614311954212) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614311954843) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                          |j $ {} (:at 1614311955602) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |y1p6k_kdfSp) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Q0xcjaJKtyT) (:text |render-app!) (:type :leaf)
                          |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |R0Y-fqUa7Sz) (:text |render!) (:type :leaf)
              |yr $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |eiqEQhfQQJG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0ikfX4NoSLZ) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yD8p8iFeRcn) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yil4GccIB72) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1614311959070) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1614311959595) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1614311959855) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614311962928) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                          |j $ {} (:at 1614311961304) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |igxJWJzh6zL) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |4qrxEPGbotx) (:text |render-app!) (:type :leaf)
                          |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |4kUwmfHdaew) (:text |render!) (:type :leaf)
              |yv $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |qejGgKoT2ff) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624105135813) (:by |B1y7Rc-Zz) (:id |8QZt9J2g1xb) (:text |.!addEventListener) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |kBd4M-TWW3p) (:text |js/window) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BgV22W-PROb) (:text "|\"visibilitychange") (:type :leaf)
                  |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5ZtlZg_lek8) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |mdQ3xsL0lRs) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |hNX54nVXb15) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614342228171) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                      |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |myQv-Vzbbtc) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |NWnJXjV5rFM) (:text |when) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |hBRzRbfTgXJ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |XBZMYKN5sl-) (:text |and) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |XceVeIuPVly) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |MmUGJJjEd3v) (:text |nil?) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |iJ0t1vmky6P) (:text |@*store) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |MaxSjX0p0yM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |aMmgjsdUr3S) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |buu8SpY6Vwd) (:text "|\"visible") (:type :leaf)
                                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |J3HmV9muz0K) (:text |js/document.visibilityState) (:type :leaf)
                          |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |3dJYAZTjSZG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |UwgP5d6oUur) (:text |connect!) (:type :leaf)
              |yx $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |YrlU4Fjn1p_) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |H4rswjRdSvK) (:text |println) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |A4ojZ7dwSZO) (:text "||App started!") (:type :leaf)
          |mount-target $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |MjB2zEw7tJSi) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |_nWb3xRXAlSk) (:text |def) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JeScRhn-5tQ1) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Bx3Oj0FTUOUl) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JXhDRDfgkFWs) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |D_o4JsLsi649) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |QsNFcmlBfAaA) (:text ||.app) (:type :leaf)
          |reload! $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |c3peGaQniCRh) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ef8lgFhWwi34) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1e33PVmNyGl_) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |o_ifnzhz7Hc4) (:type :expr)
                :data $ {}
              |t $ {} (:at 1614345128226) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614345130519) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                  |j $ {} (:at 1614345132065) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1614345134229) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
              |u $ {} (:at 1614345128226) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614345130519) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                  |j $ {} (:at 1614345144308) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1614345134229) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ylqakf-7dP9w) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ywcyqNQUB_dm) (:text |clear-cache!) (:type :leaf)
              |vT $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                          |j $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                          |j $ {} (:at 1614345126104) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
              |w $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                          |j $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                          |j $ {} (:at 1614345119932) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
              |x $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |7hr7qrk1_enC) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JRkVSau3s31l) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |gEcm_RvgqxcQ) (:text |render!) (:type :leaf)
              |y $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |aK26iTUtRUAc) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |bjB26Qu0qRR_) (:text |println) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |GNcunjQTJHqX) (:text "||Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Py2-EmujY5hq) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Z7rBoUi5449Q) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ms_BSxgjMVGQ) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |TdHqBcPUkq54) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |mKEfBpvc0nP_) (:text |renderer) (:type :leaf)
              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |q7JNGrdd3WoF) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |by_quMaDQsae) (:text |renderer) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |R2s-nMXic_E7) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |v8pQOLI42rVF) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Lh9MLgbcqRMb) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1614345090269) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1614345159686) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FfPYsEsvvwpA) (:text |@*states) (:type :leaf)
                      |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |1ynvYNiFPtEf) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |6WbdpZAJL-Je) (:text |dispatch!) (:type :leaf)
          |simulate-login! $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |WMl15z-14nMN) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |7flmRtOMT6S6) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |S7VeT51IbA7Y) (:text |simulate-login!) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |jVc5QekBHaCr) (:type :expr)
                :data $ {}
              |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |rm8XOv2gGlOU) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ED8UuSWK-1lB) (:text |let) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ib5uV7SpcYSS) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BiWsOZJK5-02) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JTVINwQmKIPW) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |nNYcSmWXhRsX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |STZixa4bOTBU) (:text |.getItem) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |tX5dyAzskcDi) (:text |js/localStorage) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0E3_rAMFjTjj) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |GzkZbdN_KFXb) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |cAiynRs6p2dZ) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |v1Vt_JauSrEE) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FSWRTZ6koS_e) (:text |if) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |HDp754Ag5q6S) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ru9OwruLnGns) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5sfHO-gaGG_2) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |3KJPB3AvFH0H) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BiVq4UHqyWCO) (:text |do) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |3jk_pj-JG8VQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |OszzCqnXLtIl) (:text |println) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |I_s5bLQ1XWKf) (:text "||Found storage.") (:type :leaf)
                          |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |6COU-sUdRcn5) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |OXMxO8xGjzsC) (:text |dispatch!) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0RbnDDnwOmTA) (:text |:user/log-in) (:type :leaf)
                              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |3avW_DBpbM4W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614311764052) (:by |B1y7Rc-Zz) (:id |rzxIKTt4MWOb) (:text |parse-cirru-edn) (:type :leaf)
                                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |DT-bRpkYW-Nn) (:text |raw) (:type :leaf)
                      |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ZHu1jybQvzI8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |9a-xXC1eE5R6) (:text |do) (:type :leaf)
                          |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |8GkM0j7Ih72Q) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |aKNlcYQy1oDT) (:text |println) (:type :leaf)
                              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0jX5uJ4eoUNS) (:text "||Found no storage.") (:type :leaf)
          |ssr? $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |exKJXOVR89V) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |WT9BnMm8RQQ) (:text |def) (:type :leaf)
              |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0XMbaicQv3u) (:text |ssr?) (:type :leaf)
              |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |UhpFh3ZzKmm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |YN7C1u1IBRF) (:text |some?) (:type :leaf)
                  |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |szHfEeYKno1) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |13csoiBBRxn) (:text |.querySelector) (:type :leaf)
                      |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |c0nGO36BaG7) (:text |js/document) (:type :leaf)
                      |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |SphT02glV6e) (:text ||meta.respo-ssr) (:type :leaf)
        :ns $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |dqPAF0fDXd) (:type :expr)
          :data $ {}
            |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BsZ0au9ynI) (:text |ns) (:type :leaf)
            |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |bQyDrRLAhv) (:text |cumulo-reel.app.client) (:type :leaf)
            |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |WljpWFLbXf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |9kjpUytthh) (:text |:require) (:type :leaf)
                |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |qAi4IVze6h) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |zHk3E35-sk) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Q7IPpem1D1) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |LJur3gLf-Q) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |fH6F_-ag1d) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |QpuR8uzaax) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |XMz3JwydlL) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |oW7kEdzyfZ) (:text |clear-cache!) (:type :leaf)
                        |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |pTBHiBXeao) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |q-eTkWBgpO) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |chWafgh92Ru) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |3bb6xkdPMXQ) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5LGQ_hrHfhI) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ouGCLRtqH_d) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Af4N2PXuRxT) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1584876438586) (:by |B1y7Rc-Zz) (:id |3jA3_JFMMMg) (:text |update-states) (:type :leaf)
                |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |g9rq0UTU-oQ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |obv77GIuQs6) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1624105988245) (:by |B1y7Rc-Zz) (:id |_MbZtLRSapi) (:text |cumulo-reel.app.comp.container) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |3pRGKpgJ5dl) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |0OVhyMQvfx0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5B1mwLOK6P6) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |X0GB9ha1ez9) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5DNO-tjzLYg) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |wZJvZyYg4vj) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |R-aVesxdNLH) (:text |cljs.reader) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |adkAodj4vSu) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |JiMYc1OzytT) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |BjqJgefsbZi) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |YZzC0H9ZdTl) (:text |read-string) (:type :leaf)
                |y $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |DCjBVQ0jlX7) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |RhxCPT-XInC) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |fZK4AVTs2Si) (:text |cumulo-reel.schema) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |-bEBXoo9Rt3) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |zVoJ57LdYe0) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |gDoAyE2u0sF) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |LV9UIzHP-_i) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1624107787377) (:by |B1y7Rc-Zz) (:id |b9lkp4lmgdx) (:text |cumulo-reel.app.config) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |-QdAmK2O687) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |08t1u_tbjo8) (:text |config) (:type :leaf)
                |yj $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |yqASRhwcdAk) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |8yFLCL6bVw2) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ugOwGv0wTvo) (:text |ws-edn.client) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |I4be5GRgn7z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |qBNmrT3SKRD) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |lP1gl3QK0kU) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |-SrbrBSpKao) (:text |ws-connect!) (:type :leaf)
                        |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |kw5WubQCawn) (:text |ws-send!) (:type :leaf)
                |yr $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Z1XPlUmeurz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |Wexrilx3__o) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |ysNP5jusOms) (:text |recollect.patch) (:type :leaf)
                    |r $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |zTuysKJ1atp) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |V3dwHoHX_fw) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |5eTpjLdzFVi) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |oa7J3v2SQi_) (:text |patch-twig) (:type :leaf)
        :proc $ {} (:at 1545066543854) (:by |B1y7Rc-Zz) (:id |FBV43OZ8fIs) (:type :expr)
          :data $ {}
      |cumulo-reel.app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1500541010211) (:by nil) (:id |rJcN9Iee0Bb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |ryo4cIlgAHZ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |H1hV5IlxCH-) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |r1aE9IglCB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1CV9UxeCBb) (:text |states) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |SkyrqIglCr-) (:text |store) (:type :leaf)
              |x $ {} (:at 1500541010211) (:by nil) (:id |ByaHq8gxCSW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |S10HqUelASb) (:text |if) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |rJJIc8gg0BZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryeLc8egCS-) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1-LcUggCrZ) (:text |store) (:type :leaf)
                  |r $ {} (:at 1521951403873) (:by |root) (:id |rJE2zoVqz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521951417580) (:by |root) (:id |HyYZehIDnvM) (:text |comp-offline) (:type :leaf)
                  |v $ {} (:at 1614342371976) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1614342373074) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                      |L $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                              |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1614345503256) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1614345504641) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                      |j $ {} (:at 1614345505272) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1614345505563) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                              |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:session) (:type :leaf)
                                      |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router) (:type :leaf)
                              |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:router) (:type :leaf)
                                      |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |v $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router-data) (:type :leaf)
                              |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |router) (:type :leaf)
                                  |r $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1614342376199) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |BJGP9LlxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1mvc8lgRH-) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1VPqLxxRrb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJHD5UxeCHZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1Uwq8gxArb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819436301) (:by |B1y7Rc-Zz) (:id |HkwD58ggCr-) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkdw5Lgg0rW) (:type :expr)
                                    :data $ {}
                                      |L $ {} (:at 1657819458611) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                      |j $ {} (:at 1657819460957) (:by |B1y7Rc-Zz) (:id |Hk9PqUlg0Bb) (:text |css/global) (:type :leaf)
                                      |r $ {} (:at 1657819462578) (:by |B1y7Rc-Zz) (:id |HkjD9Lel0B-) (:text |css/fullscreen) (:type :leaf)
                                      |v $ {} (:at 1657819464616) (:by |B1y7Rc-Zz) (:id |SJ3vcUegASZ) (:text |css/column) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |r1pw9LelCr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120265747) (:by |root) (:id |SyAvc8lgCB-) (:text |comp-navigation) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkyu9UglRHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkedq8xxAB-) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJ-_cLge0SW) (:text |store) (:type :leaf)
                              |r $ {} (:at 1523120353961) (:by |root) (:id |BkW5yKdLjM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120357277) (:by |root) (:id |SJx9JF_Ljz) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120358953) (:by |root) (:id |rkf6kYOIiM) (:text |store) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |rkXYc8ll0SW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJVYcUxlRrZ) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |S1rK5UggABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkUtqUxg0HZ) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1Dtq8lxArb) (:text |store) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BJl4-FpETz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819476883) (:by |B1y7Rc-Zz) (:id |rkbqq8xgAHb) (:text |case-default) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkz5q8eeRH-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJX958ggAS-) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |HkE558leAH-) (:text |router) (:type :leaf)
                                  |l $ {} (:at 1657819477863) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819477863) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                      |b $ {} (:at 1657819477863) (:by |B1y7Rc-Zz) (:text |router) (:type :leaf)
                                  |n $ {} (:at 1525106918943) (:by |root) (:id |H11lKp4Tz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525106921967) (:by |root) (:id |H11lKp4Tzleaf) (:text |:home) (:type :leaf)
                                      |j $ {} (:at 1539195346168) (:by |root) (:id |1dBRYKfZkG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539195347113) (:by |root) (:id |GITrG01MN) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1539195348244) (:by |root) (:id |ZOnJvvM6QZ) (:text "|\"Home") (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |rJH998xlAH-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |H1LqqUexArZ) (:text |:profile) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |B1v5cLxgASb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJd95UxlRHZ) (:text |comp-profile) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |ByF99IxlCBZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJq558xxRBZ) (:text |:user) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |HJo558lxAH-) (:text |store) (:type :leaf)
                                          |r $ {} (:at 1524070838527) (:by |root) (:id |rykaYxH2G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070840507) (:by |root) (:id |BJxAhYgHnG) (:text |:data) (:type :leaf)
                                              |j $ {} (:at 1524070841286) (:by |root) (:id |rJbaYlH2z) (:text |router) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |BkciqUxgRrZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BysicIxgAHW) (:text |comp-login) (:type :leaf)
                                  |j $ {} (:at 1584876250029) (:by |B1y7Rc-Zz) (:id |U2wQO5wOkf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1584876250765) (:by |B1y7Rc-Zz) (:id |s2zSzYbGz) (:text |>>) (:type :leaf)
                                      |T $ {} (:at 1614345574064) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1614345575560) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkhocIleRrb) (:text |states) (:type :leaf)
                                          |j $ {} (:at 1614345576082) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1614345576393) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1584876252751) (:by |B1y7Rc-Zz) (:id |JworJMxII) (:text |:login) (:type :leaf)
                          |w $ {} (:at 1524279203814) (:by |root) (:id |S1hsPmOnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524279211924) (:by |root) (:id |S1hsPmOnMleaf) (:text |comp-status-color) (:type :leaf)
                              |j $ {} (:at 1524279213788) (:by |root) (:id |Bk83D7Ohf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279214588) (:by |root) (:id |H1BhwXu3M) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279215366) (:by |root) (:id |SyevnPQ_nf) (:text |store) (:type :leaf)
                          |y $ {} (:at 1500541010211) (:by nil) (:id |H1G3c8ll0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529230769433) (:by |root) (:id |HkQnqIex0Sb) (:text |comp-messages) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |Bk429LxgCS-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1B2cLgxCHZ) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryInqUelCHb) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJw25Uge0BW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJd398el0rZ) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |B1Yn98xlRrZ) (:text |:session) (:type :leaf)
                                      |r $ {} (:at 1529230765972) (:by |root) (:id |SJqh5UlgRB-) (:text |:messages) (:type :leaf)
                              |n $ {} (:at 1529230771518) (:by |root) (:id |H122BnXW7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529230771976) (:by |root) (:id |H122BnXW7leaf) (:text |{}) (:type :leaf)
                              |p $ {} (:at 1529230772453) (:by |root) (:id |H1m2hB2Q-Q) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529230773090) (:by |root) (:id |H1m2hB2Q-Qleaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1529230773925) (:by |root) (:id |H1gA2B3mWQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529230775135) (:by |root) (:id |Sk0hr3X-Q) (:text |info) (:type :leaf)
                                      |j $ {} (:at 1529230778336) (:by |root) (:id |Bybgar2m-m) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1529230780551) (:by |root) (:id |HyraS3Q-m) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529230781631) (:by |root) (:id |HyraS3Q-mleaf) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1529231458145) (:by |root) (:id |SygIaH3Xb7) (:text |:session/remove-message) (:type :leaf)
                                      |r $ {} (:at 1529230813335) (:by |root) (:id |r1eSJU2XZm) (:text |info) (:type :leaf)
                          |yD $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |comp-inspect) (:type :leaf)
                                  |j $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text ||Store) (:type :leaf)
                                  |r $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:left) (:type :leaf)
                                          |j $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1624107865701) (:by |B1y7Rc-Zz) (:text ||100%) (:type :leaf)
                          |yT $ {} (:at 1521911502552) (:by |root) (:id |rkvCI-NcM) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911507241) (:by |root) (:id |rkgPCLW49z) (:text |when) (:type :leaf)
                              |L $ {} (:at 1624107870996) (:by |B1y7Rc-Zz) (:id |S1-_CLWN5M) (:text |config/dev?) (:type :leaf)
                              |T $ {} (:at 1507828710405) (:by |root) (:id |BJgRkVX62W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828712159) (:by |root) (:id |BJgRkVX62Wleaf) (:text |comp-reel) (:type :leaf)
                                  |j $ {} (:at 1507829101137) (:by |root) (:id |HylruBmT3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830262253) (:by |root) (:id |HyBgV7T2Z) (:text |:reel-length) (:type :leaf)
                                      |j $ {} (:at 1507829104010) (:by |root) (:id |S1MvOr7a2Z) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1507828721052) (:by |root) (:id |ByteVmTnZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828722268) (:by |root) (:id |ByxdeN7anb) (:text |{}) (:type :leaf)
          |comp-offline $ {} (:at 1519314599832) (:by |root) (:id |rJlxhID3DM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521951399872) (:by |root) (:id |HkWenLP2vM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1519314599832) (:by |root) (:id |BJGx2Iv2Pz) (:text |comp-offline) (:type :leaf)
              |n $ {} (:at 1521951400852) (:by |root) (:id |r1lZnMsV9z) (:type :expr)
                :data $ {}
              |r $ {} (:at 1519314599832) (:by |root) (:id |rkQx2Lv3vz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519314599832) (:by |root) (:id |S14ghIw3Pf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Sx2Lw3PM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519314599832) (:by |root) (:id |ByIghIvhwG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkDg2ID3DM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HJueh8whDf) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |B1FenUDnPM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |SJcxhUvnvG) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |SJogn8whDG) (:text |ui/global) (:type :leaf)
                              |r $ {} (:at 1519314599832) (:by |root) (:id |Syhe3IwnDf) (:text |ui/fullscreen) (:type :leaf)
                              |v $ {} (:at 1535564672966) (:by |B1y7Rc-Zz) (:id |S1penIvhwM) (:text |ui/column-dispersive) (:type :leaf)
                              |x $ {} (:at 1535565529682) (:by |B1y7Rc-Zz) (:id |-AFvTS2Xw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535565530129) (:by |B1y7Rc-Zz) (:id |nUIE3znKRk) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535565530397) (:by |B1y7Rc-Zz) (:id |LAxp5ou8Oi) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565536637) (:by |B1y7Rc-Zz) (:id |ZIQEbqIdeF) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1535565541430) (:by |B1y7Rc-Zz) (:id |D9GGMXGBjd) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535565542473) (:by |B1y7Rc-Zz) (:id |MkdHaM_v7_) (:text |:theme) (:type :leaf)
                                          |j $ {} (:at 1535565546181) (:by |B1y7Rc-Zz) (:id |r7am1TeON) (:text |config/site) (:type :leaf)
                  |l $ {} (:at 1535564983624) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565362594) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564984947) (:by |B1y7Rc-Zz) (:id |fp9nHzVG-C) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564985316) (:by |B1y7Rc-Zz) (:id |-pfcoBbYO) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564985627) (:by |B1y7Rc-Zz) (:id |PL7HRl9o2) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564987644) (:by |B1y7Rc-Zz) (:id |_5OHbZKdQt) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535565371727) (:by |B1y7Rc-Zz) (:id |qlVM4N8m7_) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1535565373172) (:by |B1y7Rc-Zz) (:id |0cX3axzT-0) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1535564988232) (:by |B1y7Rc-Zz) (:id |tbKi9HZ-m3) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564988883) (:by |B1y7Rc-Zz) (:id |_jrfZ1j22p) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565472380) (:by |B1y7Rc-Zz) (:id |oNrq_1c5jP) (:text |0) (:type :leaf)
                  |n $ {} (:at 1535564675845) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535564681122) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3Wleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564681371) (:by |B1y7Rc-Zz) (:id |QCgP6c48Rw) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564681741) (:by |B1y7Rc-Zz) (:id |bxXTMaSmzT) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564681981) (:by |B1y7Rc-Zz) (:id |T3goXWla86) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564682940) (:by |B1y7Rc-Zz) (:id |CXGFQrJdrI) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535564683257) (:by |B1y7Rc-Zz) (:id |2Evw3L3U1J) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535564683549) (:by |B1y7Rc-Zz) (:id |tzLQL21KFG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535564683815) (:by |B1y7Rc-Zz) (:id |dVh-zN_TPb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564692026) (:by |B1y7Rc-Zz) (:id |dAStA0OYDH) (:text |:background-image) (:type :leaf)
                                      |j $ {} (:at 1535564692507) (:by |B1y7Rc-Zz) (:id |_Q8bCAx9n7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535564693703) (:by |B1y7Rc-Zz) (:id |VzZwtZoO6O) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1535564698133) (:by |B1y7Rc-Zz) (:id |tJv55qj8Zk) (:text "|\"url(") (:type :leaf)
                                          |n $ {} (:at 1535564699933) (:by |B1y7Rc-Zz) (:id |nsZZQVVLv) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1535564708041) (:by |B1y7Rc-Zz) (:id |4lGaBpyWK2) (:text |:icon) (:type :leaf)
                                              |j $ {} (:at 1535564775736) (:by |B1y7Rc-Zz) (:id |sGz47mkdM) (:text |config/site) (:type :leaf)
                                          |r $ {} (:at 1535564696349) (:by |B1y7Rc-Zz) (:id |6N8V6yQKRt) (:text "|\")") (:type :leaf)
                                  |r $ {} (:at 1535564726919) (:by |B1y7Rc-Zz) (:id |5egZ0bR0I) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564728738) (:by |B1y7Rc-Zz) (:id |5egZ0bR0Ileaf) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1535565090611) (:by |B1y7Rc-Zz) (:id |ef8YU_bZh) (:text |128) (:type :leaf)
                                  |v $ {} (:at 1535564733832) (:by |B1y7Rc-Zz) (:id |K_yxszCR3z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564736588) (:by |B1y7Rc-Zz) (:id |K_yxszCR3zleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565093711) (:by |B1y7Rc-Zz) (:id |c5KZ_3dEVg) (:text |128) (:type :leaf)
                                  |x $ {} (:at 1535564741439) (:by |B1y7Rc-Zz) (:id |zidWccE-tZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564745512) (:by |B1y7Rc-Zz) (:id |zidWccE-tZleaf) (:text |:background-size) (:type :leaf)
                                      |j $ {} (:at 1535564749164) (:by |B1y7Rc-Zz) (:id |XvrhwspwQ) (:text |:contain) (:type :leaf)
                  |r $ {} (:at 1519314599832) (:by |root) (:id |HyRx3IDnPM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565436682) (:by |B1y7Rc-Zz) (:id |SJkll2LP2wM) (:text |div) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:id |BJgex3Lw3Pf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |HkbeenIw3wf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:id |Syfgx28wnPf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Symgxn8v2vG) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:id |rkVlg3LDnDG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |SkHxlhUv2vz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314599832) (:by |root) (:id |H1Lgg3UwhPz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314599832) (:by |root) (:id |S1Pee2UD3wz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |HyOgl2IvnPM) (:text |:pointer) (:type :leaf)
                                  |r $ {} (:at 1535565239666) (:by |B1y7Rc-Zz) (:id |lWtf3D3AoP) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565243041) (:by |B1y7Rc-Zz) (:id |O56zdbQMDleaf) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1535565498969) (:by |B1y7Rc-Zz) (:id |3uSFrdhbOK) (:text "|\"32px") (:type :leaf)
                          |r $ {} (:at 1519314599832) (:by |root) (:id |SkKle2LPnvf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:id |Hy9xl28D2PG) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584876456980) (:by |B1y7Rc-Zz) (:id |SbHSh0aUFj) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584876457500) (:by |B1y7Rc-Zz) (:id |H8uJTTDXT) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584876457832) (:by |B1y7Rc-Zz) (:id |x5-cVptuwn) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876458297) (:by |B1y7Rc-Zz) (:id |QA1YQqHS_I) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584876459047) (:by |B1y7Rc-Zz) (:id |RyUGMmSmql) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1519314599832) (:by |root) (:id |S1mufs49z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876456497) (:by |B1y7Rc-Zz) (:id |r1GZl2Lw2wG) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:id |rkmZln8v2wG) (:text |:effect/connect) (:type :leaf)
                                      |r $ {} (:at 1519314599832) (:by |root) (:id |HJNWe28w3wG) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1519314599832) (:by |root) (:id |r1r-lhLPnvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:id |r1Ube2LP2PM) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1535564856884) (:by |B1y7Rc-Zz) (:id |r1DWxhIP3wG) (:text "||No connection...") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ryuSziE9f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HkxN5IggCSZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BkZ4qUxgABZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByzE9Lxe0BW) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1535565688657) (:by |B1y7Rc-Zz) (:id |Skm4cUlgRrZ) (:text |ui/font-fancy) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |ByvVqIxlCBW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkuNcLlxRrW) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1535565156897) (:by |B1y7Rc-Zz) (:id |SJYNcUxxASZ) (:text |24) (:type :leaf)
          |comp-status-color $ {} (:at 1524279216692) (:by |root) (:id |Sket2DQd3f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524279218316) (:by |root) (:id |S1ZK3DXd3G) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524279216692) (:by |root) (:id |SkzYhwm_3f) (:text |comp-status-color) (:type :leaf)
              |r $ {} (:at 1524279216692) (:by |root) (:id |SkmYnwXdnM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279220380) (:by |root) (:id |HkWi3Dmd2G) (:text |color) (:type :leaf)
              |v $ {} (:at 1524279221052) (:by |root) (:id |rJgTnPmu2G) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279221503) (:by |root) (:id |rJgTnPmu2Gleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1524279221753) (:by |root) (:id |rJlA3DXOhf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524279222145) (:by |root) (:id |ByA3Dm_2f) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657819578327) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819580585) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657819584102) (:by |B1y7Rc-Zz) (:text |css-status-color) (:type :leaf)
                      |j $ {} (:at 1524279222434) (:by |root) (:id |r1ER2vQ_3G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524279223333) (:by |root) (:id |BJmAnP7_nz) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1533835122554) (:by |B1y7Rc-Zz) (:id |02sFGkmU4) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1533835132715) (:by |B1y7Rc-Zz) (:id |gdqZhoJ9D) (:text |let) (:type :leaf)
                              |L $ {} (:at 1533835132973) (:by |B1y7Rc-Zz) (:id |UKFzdk9D7f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533835133406) (:by |B1y7Rc-Zz) (:id |-QOGS9FksS) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835134066) (:by |B1y7Rc-Zz) (:id |VZJGRva7JQ) (:text |size) (:type :leaf)
                                      |j $ {} (:at 1533835156000) (:by |B1y7Rc-Zz) (:id |dH663gATGE) (:text |24) (:type :leaf)
                              |T $ {} (:at 1524279223555) (:by |root) (:id |SyeTD7dnz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279223903) (:by |root) (:id |H1S1TD7_2z) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524279224175) (:by |root) (:id |r1XlTDX_nf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279228958) (:by |root) (:id |BJMlTDQu3z) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1533835137743) (:by |B1y7Rc-Zz) (:id |HJIpvXuhG) (:text |size) (:type :leaf)
                                  |r $ {} (:at 1524279231457) (:by |root) (:id |rJfDavmu3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279232432) (:by |root) (:id |rJfDavmu3Gleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1533835138984) (:by |B1y7Rc-Zz) (:id |ByLuavmu3M) (:text |size) (:type :leaf)
                                  |yT $ {} (:at 1524279259074) (:by |root) (:id |S1eXJd7_3G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279265891) (:by |root) (:id |S1eXJd7_3Gleaf) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1524279319762) (:by |root) (:id |S1WkQuQuhz) (:text |color) (:type :leaf)
          |css-status-color $ {} (:at 1657819584407) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819586131) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657819584407) (:by |B1y7Rc-Zz) (:text |css-status-color) (:type :leaf)
              |h $ {} (:at 1657819584407) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819587256) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1657819587546) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819588718) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |l $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:absolute) (:type :leaf)
                          |o $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:bottom) (:type :leaf)
                              |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |60) (:type :leaf)
                          |q $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:left) (:type :leaf)
                              |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |t $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text "|\"50%") (:type :leaf)
                          |u $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:opacity) (:type :leaf)
                              |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |0.6) (:type :leaf)
                          |v $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:pointer-events) (:type :leaf)
                              |b $ {} (:at 1657819589166) (:by |B1y7Rc-Zz) (:text |:none) (:type :leaf)
          |style-body $ {} (:at 1500541010211) (:by nil) (:id |ry965UlxRH-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |rkoaq8ge0BW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |Sk2p9UxgRBW) (:text |style-body) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |BJ66q8egCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1ApqUxg0B-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJJR9Ueg0HZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sye0cIle0B-) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkWR58eeCHZ) (:text "||8px 16px") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |B15IxeRH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |SJxc8xl0HZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |SkZcLgxAB-) (:text |cumulo-reel.app.comp.container) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SkCq8lx0rb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1Gxq8xgCB-) (:text |hsl.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |u $ {} (:at 1657819443260) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819444874) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657819445299) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657819445903) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540962164790) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |xT $ {} (:at 1584876145776) (:by |B1y7Rc-Zz) (:id |SJgBIzsVcf) (:text |>>) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                |xT $ {} (:at 1657819447054) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819448678) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657819450272) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819450577) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819451738) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |H1kGc8glRHW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1624106007135) (:by |B1y7Rc-Zz) (:id |B1-f5UgeABb) (:text |cumulo-reel.app.comp.navigation) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkzM98gxRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Bymz5LglArW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1523120276563) (:by |root) (:id |rkBfcLggCBb) (:text |comp-navigation) (:type :leaf)
                |yj $ {} (:at 1500541010211) (:by nil) (:id |HJ8M5UeeCS-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1624106009014) (:by |B1y7Rc-Zz) (:id |H1_fq8geCHb) (:text |cumulo-reel.app.comp.profile) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryFz9LglCHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |r1qfqUlxASb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H12z9LxxCHW) (:text |comp-profile) (:type :leaf)
                |yr $ {} (:at 1500541010211) (:by nil) (:id |Bypz9LxxRSW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1624106012304) (:by |B1y7Rc-Zz) (:id |Hkk7qUgxAr-) (:text |cumulo-reel.app.comp.login) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJg798xxAHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJ-m9Ueg0SW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1Qmq8gxCrW) (:text |comp-login) (:type :leaf)
                |yx $ {} (:at 1507828725931) (:by |root) (:id |BklAlV7a2Z) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507828730719) (:by |root) (:id |ry7AeNmT3b) (:text |cumulo-reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507828731528) (:by |root) (:id |H1bQW4762Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828731735) (:by |root) (:id |Sk-NbNmT3W) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507828733743) (:by |root) (:id |Bk44ZNXT2Z) (:text |comp-reel) (:type :leaf)
                |yyj $ {} (:at 1529230793085) (:by |root) (:id |B1Z0rnQWm) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1529230796079) (:by |root) (:id |rJGbRHh7W7) (:text |cumulo-reel.schema) (:type :leaf)
                    |r $ {} (:at 1529230796499) (:by |root) (:id |r1ZEAH2m-m) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529230797248) (:by |root) (:id |ByBAH37Zm) (:text |schema) (:type :leaf)
                |yyr $ {} (:at 1535564714854) (:by |B1y7Rc-Zz) (:id |62fxkh4Uk4) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1624107817456) (:by |B1y7Rc-Zz) (:id |9xYrE_G3ic) (:text |cumulo-reel.app.config) (:type :leaf)
                    |r $ {} (:at 1535564719687) (:by |B1y7Rc-Zz) (:id |ccmXGZ69Z1) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1535564721387) (:by |B1y7Rc-Zz) (:id |agsiaMgXOQ) (:text |config) (:type :leaf)
                |yyv $ {} (:at 1614332430274) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |respo-message.comp.messages) (:type :leaf)
                    |r $ {} (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1614332430274) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1614332430274) (:by |B1y7Rc-Zz) (:text |comp-messages) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1om9LgxCBZ) (:type :expr)
          :data $ {}
      |cumulo-reel.app.comp.login $ {}
        :defs $ {}
          |comp-login $ {} (:at 1500541010211) (:by nil) (:id |HkN1-cUxxRB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJBy-qUle0SW) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |S1LyWcUxe0rZ) (:text |comp-login) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkPy-qLxlRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Sy_yZ5LxlCBZ) (:text |states) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |ryK1bqLeg0rZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ry9JbqLlgRHb) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1j1WcUxxRSb) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584876236437) (:by |B1y7Rc-Zz) (:id |9WNHxfw6fF) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584876238993) (:by |B1y7Rc-Zz) (:id |9WNHxfw6fFleaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584876240666) (:by |B1y7Rc-Zz) (:id |rZI-zSoya-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584876244118) (:by |B1y7Rc-Zz) (:id |UXy9yIEw_) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584876244890) (:by |B1y7Rc-Zz) (:id |O8ySFtnffA) (:text |states) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HynkWcIee0Hb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkT1bqUxlASZ) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |Hy0yb98gxABW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614344810834) (:by |B1y7Rc-Zz) (:id |rkJxWc8lxCBW) (:text |either) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJllZ5Lle0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hy-eb9Uxx0HZ) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |S1GeZq8glCrW) (:text |states) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1Xeb9UleCrW) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1519368111046) (:by |root) (:id |HyxD3wVpvM) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1519368111912) (:by |root) (:id |rJZPnw4TvG) (:text |div) (:type :leaf)
                      |L $ {} (:at 1519368112156) (:by |root) (:id |SJXO3vNaDM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368113787) (:by |root) (:id |S1fd3wN6Dz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519368114295) (:by |root) (:id |SyGqhw46wG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519368116587) (:by |root) (:id |SJ-9hDETDf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519368119982) (:by |root) (:id |Byg6DV6wz) (:type :expr)
                                :data $ {}
                                  |5 $ {} (:at 1519368124581) (:by |root) (:id |H1lV6vNaPf) (:text |merge) (:type :leaf)
                                  |D $ {} (:at 1519368123630) (:by |root) (:id |BJxe6vNavM) (:text |ui/flex) (:type :leaf)
                                  |T $ {} (:at 1519368119197) (:by |root) (:id |rJlpnDVawM) (:text |ui/center) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |ryEx-5IxlRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJrgZ5Llg0Sb) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJIg-9Ule0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJvxZcIxlASZ) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJOg-5Igx0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1Fx-cUegRrb) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |ry5gWc8exRSZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkixZ9LxgRBZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJhlW5Ugl0rb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |r1Te-58xeAHb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |H1AgbqLleRrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1WZq8lgCS-) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkxZZ98xeCH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJWb-5UlxRrZ) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1M-WcUggRHZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hym-ZqLleAS-) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJNWb9UexCSZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |H1H-WqIle0rZ) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkU-bcUleASZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |S1wbZqLeeASW) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJObbc8leRS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJYWWcLxx0rW) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |H15Wb9Ugg0r-) (:text ||Username) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |SyoWb5UleCSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hy2bWqIlg0rW) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |HJpWZc8ggRH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkRZ-cIle0H-) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HyyM-9UglArZ) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1500541010211) (:by nil) (:id |rklGb9LxlRSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy-fW58glCSZ) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJGf-5Llx0SW) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJFis1lQM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302367311) (:by |root) (:id |H1_f-5UlxAr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |RfWFvLOby2) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |aIluILsKtw) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |bqT2lz3lrQ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |TdL6Wvn8Rq) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584876211461) (:by |B1y7Rc-Zz) (:id |xlZNQhxPj9) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |McAd1Q52ti) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584876214648) (:by |B1y7Rc-Zz) (:id |_rEIKBbnEW) (:text |d!) (:type :leaf)
                                                      |b $ {} (:at 1584876216153) (:by |B1y7Rc-Zz) (:id |1kKFYV7LE3) (:text |cursor) (:type :leaf)
                                                      |j $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |GkDVHAlb2u) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |gMjJju18US) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |IaqewR-T13) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584876220512) (:by |B1y7Rc-Zz) (:id |7uKhE713zO) (:text |:username) (:type :leaf)
                                                          |v $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |wCnT7hZbo8) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |_W1MSoWkDS) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584876206392) (:by |B1y7Rc-Zz) (:id |nEv5_IL6Lga) (:text |e) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |rJ6MW9IxgAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1RzbqIxl0Sb) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |Sy17-5Iex0SW) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |B1gQWqUxe0rZ) (:text |8) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |rybQZcLeeABW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkfm-5IxgASW) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJX7ZqIeeCB-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk4mZ5IxgASW) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |rJHQb58xxRBW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJU7Zc8xlCSW) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyPX-qIxxRBb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ry_XZ5UglRrZ) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyK7bcIexCS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Bk9XZqLglArZ) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |HkomWcUlxCBb) (:text ||Password) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1hmb98glRSZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H16XZc8ee0rb) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1C7bcLel0BZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BykV-cLlgAHW) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rylNWcLelArZ) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1500541010211) (:by nil) (:id |rkb4Zq8le0BW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1zEb9Leg0H-) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |r174W9LllRB-) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |S1Znooygmf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302370752) (:by |root) (:id |SkYEbqUleRr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |tJRpP1CmSB) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |ltQ1u921hT) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |DKAzMliiD6) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |a5FQ0bxgYf) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |AjFKp_Zt1U) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |8c7AQ9-X8S) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |21mEYxWQQ-) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |SytOI9-Es0) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |LGtQ5lbr40) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |TeeM5DwLki) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |y7RdqAp39O) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584876233616) (:by |B1y7Rc-Zz) (:id |HIcvWZP-2I) (:text |:password) (:type :leaf)
                                                          |v $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |_dixeO7v45) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |QvBx-20kMS) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584876229449) (:by |B1y7Rc-Zz) (:id |VKVpNeT6h7c) (:text |e) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |HkCEZcIegCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJyBZc8xgCSZ) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |BJlHZ98eg0SZ) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1WSZ58lxArb) (:text |8) (:type :leaf)
                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJfHW98egCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |ByXH-cLlx0S-) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1NBZ5Uxg0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyHSb58leCHb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJLSb9LxeASZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HkDrZqUlxRBb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1519368067092) (:by |root) (:id |SyGsFwVaDf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519368067501) (:by |root) (:id |HyWoFDNaDf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1519368135916) (:by |root) (:id |B1xl0wE6wf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519368141461) (:by |root) (:id |HyeAv4TPf) (:text |:text-align) (:type :leaf)
                                              |j $ {} (:at 1519368142240) (:by |root) (:id |B1I0wN6DG) (:text |:right) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BJtHWq8llRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367924372) (:by |root) (:id |HJ9BZcIeeCSb) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1sBZ98geRSW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkhSb5UleABb) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJTH-9UlgCHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ0SZ5Ilx0SW) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |HJyIZqUleAH-) (:text "||Sign up") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJeIW5Ugx0HZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1bIZ9IxxAHb) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |SkfLZ5UglArZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1519368006916) (:by |root) (:id |rJVIb58xe0B-) (:text |style/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Syxb3iJg7G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302375364) (:by |root) (:id |SkMP-cIgl0rb) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJ7wZ9Lxx0S-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy4PbcUxgRHZ) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |ryBvWcUgeCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkLPZ9Lgx0rW) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryPv-5UgxAHZ) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Byuw-cLxgCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyFvW5LglAH-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1qDZ98geRSW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |HkjwbqLxlAHb) (:text |true) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |B13wW9IgxCrb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJTPZc8xxAHW) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryCvbqIxlCHZ) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |HyyO-q8glAS-) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |Skg_WqIxx0S-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367939048) (:by |root) (:id |HkWu-qIgeRrW) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HkfdZ9IelABZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |S17d-5UgxCr-) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |Sk4_bq8leCHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkB_W98xxABZ) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1519368084428) (:by |root) (:id |Sk8OW5LexRrW) (:text "||Log in") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HywdZ9LeeRHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ_OZc8lx0Bb) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1gEIv46Df) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1519368006916) (:by |root) (:id |rJVIb58xe0B-) (:text |style/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |HJlw3skxQM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302381488) (:by |root) (:id |BJYF-5Uxe0S-) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rk9F-cUex0H-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyoKb98elRr-) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1hYZcIxxASb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Skptbq8xeCBb) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJRFWc8eeRr-) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sk15Z9LleCS-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Bkl9-5IlxRB-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |SJWq-58llAHW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |rJfq-9Lge0B-) (:text |false) (:type :leaf)
          |initial-state $ {} (:at 1500541010211) (:by nil) (:id |BkQcW5IlxCrb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJN9bcIlg0rW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1B9-9Uel0Hb) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H1IqZcLgg0BW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hyvq-qIllRrZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |Hkd9b5UxgCBW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryF5b9IgxRB-) (:text |:username) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJq5-qUll0rb) (:text ||) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJs5-qLel0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HyhcbqUggRHb) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |S16cbc8lx0Bb) (:text ||) (:type :leaf)
          |on-submit $ {} (:at 1500541010211) (:by nil) (:id |ryRox98ggCBW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |H1k3e58glCr-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SylnxqLgg0H-) (:text |on-submit) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Hk-2e9IglCrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkG2lqIxe0SW) (:text |username) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |r172xqLexCr-) (:text |password) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |SkEhlqIegRB-) (:text |signup?) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |SyB2gqIleArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJLhecIxg0rb) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJDne5LgxASZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |SJOnxqUxx0Sb) (:text |e) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BJK2xcLglCHZ) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |BJ93x98gg0rW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkshx5Lgx0HZ) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |By22eqIxxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkT3gqIlgArb) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |SJR3gqLegCr-) (:text |signup?) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |r11Te5UxgABZ) (:text |:user/sign-up) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |r1l6e5IgxCBb) (:text |:user/log-in) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |By-Tx58xgRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1GTxcIleAHb) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |Hy7ax5LexRHb) (:text |username) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |S1E6l9Lle0r-) (:text |password) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BySax58xgRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624104272166) (:by |B1y7Rc-Zz) (:id |rJ8Te9IgeABZ) (:text |.!setItem) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkPpe9IglASZ) (:text |js/localStorage) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |ryO6eq8ex0r-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1Kal58gl0HZ) (:text |:storage-key) (:type :leaf)
                          |j $ {} (:at 1527788909281) (:by |root) (:id |ry5alqLglAr-) (:text |config/site) (:type :leaf)
                      |v $ {} (:at 1614344131333) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1624104269958) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by nil) (:id |Hyj6eqIle0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkhaecLxlRBW) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |Hk6al98leAHZ) (:text |username) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |BJ0Te9LexCHZ) (:text |password) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |Hys_eqLgeAH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3Ox5LleArW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1510936619134) (:by |root) (:id |ry6_xqLxgCS-) (:text |cumulo-reel.app.comp.login) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SJ3YeqUlxABZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |r1-Yg5UelCSZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540962172090) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |r1HtxqIelASb) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |S189lq8leAHW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |rJc9g58xg0HZ) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |By6cgq8llCr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:id |HkWslq8eeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |ry4ie5IgeArW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |ry_sxqUeeAHZ) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW) (:text |cumulo-reel.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |SJdID4pPz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:id |H1Kie58xlAHb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368017028) (:by |root) (:id |BJ9sgqLxxABW) (:text |cumulo-reel.style) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368019779) (:by |root) (:id |r1niecUxlCrZ) (:text |style) (:type :leaf)
                |yj $ {} (:at 1527788911549) (:by |root) (:id |H1d_S2a1Q) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788911897) (:by |root) (:id |H1d_S2a1Qleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1624107822879) (:by |B1y7Rc-Zz) (:id |HJGd_rnakm) (:text |cumulo-reel.app.config) (:type :leaf)
                    |r $ {} (:at 1527788914516) (:by |root) (:id |S1IKdB3aJQ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788915188) (:by |root) (:id |rJouHhpkQ) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |Bkajg9LggCH-) (:type :expr)
          :data $ {}
      |cumulo-reel.app.comp.navigation $ {}
        :defs $ {}
          |comp-navigation $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-navigation) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJxuzcLle0S-) (:text |logged-in?) (:type :leaf)
                  |j $ {} (:at 1523120365880) (:by |root) (:id |r1W-lK_Lsz) (:text |count-members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |rkW_zqUxlCrZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJM_fc8elAHW) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1QdzqLge0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJNOG5LleABZ) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657819616885) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819620029) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657819620726) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819622269) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                              |b $ {} (:at 1657819625421) (:by |B1y7Rc-Zz) (:text |css/row-center) (:type :leaf)
                              |h $ {} (:at 1657819630683) (:by |B1y7Rc-Zz) (:text |css-nav) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |Bkj_M9LlxCHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |BJT_z5UgeRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BkxztoJgmz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584876155395) (:by |B1y7Rc-Zz) (:id |S-veoAf0Bn) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584876156032) (:by |B1y7Rc-Zz) (:id |xnbj6nYaX1) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584876156290) (:by |B1y7Rc-Zz) (:id |HSJR28bYkL) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876158008) (:by |B1y7Rc-Zz) (:id |aeyRINxuz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584876160431) (:by |B1y7Rc-Zz) (:id |e8VXuzkfy) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |HyloNmsVcf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876154821) (:by |B1y7Rc-Zz) (:id |B1iaGcIexAHZ) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |H126zqIglRB-) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |Sy6pz58llCrW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJk0zq8xxCr-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |SyWCG5IlgAS-) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByIFGc8leCBW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |BywKzqUegArW) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1BEXo45f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HydPGq8xeRBb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1FvfqIxgAS-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJ9wM98lg0B-) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkjwMc8xl0Sb) (:text |:pointer) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJYKf5Leg0BW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rycKz9UxxABZ) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1536561771096) (:by |B1y7Rc-Zz) (:id |PJz4UIM8Cy) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536561772481) (:by |B1y7Rc-Zz) (:id |SJsFG98lxASW) (:text |:title) (:type :leaf)
                              |j $ {} (:at 1536561776186) (:by |B1y7Rc-Zz) (:id |IpyFO2t-G) (:text |config/site) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |SyTtGq8xeASb) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |H10FM9IeeRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ByyqzcUglRHZ) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkl5GcLglABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HybqMqUge0SW) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BkfcMq8ge0HZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkX5G5Ueg0rW) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |SybUXoVcf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SyYjz9UgxCrZ) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1ciG9UlxRrW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJjozqIgl0Sb) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |BknsM58xxRrW) (:text ||pointer) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |SJeLFokgXG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1514302332444) (:by |root) (:id |Hkc5MqUgeCBb) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584876163159) (:by |B1y7Rc-Zz) (:id |yeLh1tzyZ) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584876163693) (:by |B1y7Rc-Zz) (:id |MGJxW8CNp5) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584876163906) (:by |B1y7Rc-Zz) (:id |u8Udch104k) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876164308) (:by |B1y7Rc-Zz) (:id |jQTvsdqO8c) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584876164963) (:by |B1y7Rc-Zz) (:id |WMlKBgsRkd) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |SkwUXjN5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876162735) (:by |B1y7Rc-Zz) (:id |HyvLfcIelAHb) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1_8fqLxgRHZ) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |S1KIfc8xx0Sb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJqIM5LexCH-) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |SyjIfc8ggAHZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJ3LM5LgxABb) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |rJT8GqIgxRr-) (:text |:profile) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |Hkhcfq8gx0Sb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SJ69McLelASZ) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByysG5UgxABb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SkesM9IllRBZ) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |H1bjz98xxRSb) (:text |logged-in?) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |Syziz98ggAS-) (:text ||Me) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by |root) (:id |Hk7izqLel0rb) (:text ||Guest) (:type :leaf)
                      |v $ {} (:at 1523120369216) (:by |root) (:id |BkeFgYdUif) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1523120369974) (:by |root) (:id |BkeFgYdUifleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1523120371053) (:by |root) (:id |S1lcgFd8if) (:text |8) (:type :leaf)
                          |r $ {} (:at 1523120371555) (:by |root) (:id |HyeogYO8jM) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1523120371997) (:by |root) (:id |Hk-2xtuUjf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1523120372630) (:by |root) (:id |Hk-2xtuUjfleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1523120373023) (:by |root) (:id |HkZpxFdIiM) (:text |count-members) (:type :leaf)
          |css-nav $ {} (:at 1657819631325) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819632474) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657819631325) (:by |B1y7Rc-Zz) (:text |css-nav) (:type :leaf)
              |h $ {} (:at 1657819634342) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1657819634880) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1657819635301) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1657819674944) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                              |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |48) (:type :leaf)
                          |h $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:justify-content) (:type :leaf)
                              |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:space-between) (:type :leaf)
                          |l $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text "||0 16px") (:type :leaf)
                          |o $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                              |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                          |q $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:border-bottom) (:type :leaf)
                              |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text "||1px solid ") (:type :leaf)
                                  |h $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |o $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |0.1) (:type :leaf)
                          |s $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |:font-family) (:type :leaf)
                              |b $ {} (:at 1657819634104) (:by |B1y7Rc-Zz) (:text |ui/font-fancy) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |cumulo-reel.app.comp.navigation) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1614311446932) (:by |B1y7Rc-Zz) (:id |HkY4z5IllCHb) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |t $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1657819640484) (:by |B1y7Rc-Zz) (:id |HkeBG5Lgl0SW) (:text |respo-ui.css) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1657819641773) (:by |B1y7Rc-Zz) (:id |S1GrG5LegAHZ) (:text |css) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:id |BkxlWtdUjM) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:id |By4XbFu8oG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:id |r1DWtdUjM) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                |xT $ {} (:at 1657819642688) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819644733) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657819645516) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819645761) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819646835) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |y $ {} (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |3JW2PGwjK4) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1624107805291) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn) (:text |cumulo-reel.app.config) (:type :leaf)
                    |r $ {} (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |cumulo-reel.app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {} (:at 1500541010211) (:by nil) (:id |HJHJG58xgASW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SyIkf9Uxx0Bb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1vkzqLgl0H-) (:text |comp-profile) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rkOyMqUexRSW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1KyfcUggCrb) (:text |user) (:type :leaf)
                  |j $ {} (:at 1524070827396) (:by |root) (:id |SJ-ntlBnM) (:text |members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |r19kz5Uxx0B-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyskGcUlxRSb) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJn1fqUgxABb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Skpkzc8xgAH-) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657819483804) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819486000) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657819487666) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |Bk0yG5IleRHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkJeG5UxlASW) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314674864) (:by |root) (:id |BklixPv3Pz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314675207) (:by |root) (:id |S1jxDD2vf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1519314675496) (:by |root) (:id |HyVigvwnPG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314677667) (:by |root) (:id |SymslwPhwG) (:text |:padding) (:type :leaf)
                                  |j $ {} (:at 1519314678341) (:by |root) (:id |HybAgPP2Pf) (:text |16) (:type :leaf)
                  |r $ {} (:at 1524070753023) (:by |root) (:id |HJbFwYlS2f) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070753742) (:by |root) (:id |SyfKPFxrhM) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070753977) (:by |root) (:id |BJG9DFxBnz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070754337) (:by |root) (:id |SkW9vFgS3f) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657819513878) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819516200) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657819718472) (:by |B1y7Rc-Zz) (:text |css/font-fancy) (:type :leaf)
                          |j $ {} (:at 1524070764197) (:by |root) (:id |HJ-VuKgBnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070764960) (:by |root) (:id |SkeV_KlBhM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070765167) (:by |root) (:id |BkNrOYlHnf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070765499) (:by |root) (:id |H17BOYeShG) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1524070772863) (:by |root) (:id |By6_YeS3M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070774437) (:by |root) (:id |By6_YeS3Mleaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1524070786249) (:by |root) (:id |B1EROKlShG) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1524070778614) (:by |root) (:id |SJXKFeHnM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070781489) (:by |root) (:id |SJXKFeHnMleaf) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1524070782585) (:by |root) (:id |Bk8KtgS2M) (:text |100) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |r1bxMcIleASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkflGc8leCHW) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hk4xfc8ex0BZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Syrxf9Uex0S-) (:text |str) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |Bk8ef9UggCH-) (:text "||Hello! ") (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |SyvgGc8ge0Hb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HkdlMqIleCBZ) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryteG9Lgg0Bb) (:text |user) (:type :leaf)
                  |t $ {} (:at 1524070801446) (:by |root) (:id |rygF9Yer2G) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070803450) (:by |root) (:id |rygF9Yer2Gleaf) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1524070804372) (:by |root) (:id |BJh5txHhz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1524070805591) (:by |root) (:id |r1p5KgH2z) (:text |16) (:type :leaf)
                  |u $ {} (:at 1524070806586) (:by |root) (:id |H1kotlHnM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070807601) (:by |root) (:id |H1kotlHnMleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1524070807801) (:by |root) (:id |rJZeiKlS2M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070808172) (:by |root) (:id |BkeesteS2G) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070882494) (:by |root) (:id |B1Zrlcer3z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819525002) (:by |B1y7Rc-Zz) (:id |Sye519lHhM) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1657819526426) (:by |B1y7Rc-Zz) (:id |rym0kqeB2z) (:text |css/row) (:type :leaf)
                      |r $ {} (:at 1524070808914) (:by |root) (:id |HkgZjKlHhz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070810352) (:by |root) (:id |HkgZjKlHhzleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1614440954439) (:by |B1y7Rc-Zz) (:id |r1bfoFgr3z) (:text "|\"Members:") (:type :leaf)
                      |t $ {} (:at 1524070907095) (:by |root) (:id |B1e7-cgShM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070907693) (:by |root) (:id |B1e7-cgShMleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1524071002316) (:by |root) (:id |BJeVbqlS2G) (:text |8) (:type :leaf)
                          |r $ {} (:at 1524070908955) (:by |root) (:id |HkSWqxB3f) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070813822) (:by |root) (:id |Syl8oKlB3M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070815507) (:by |root) (:id |Syl8oKlB3Mleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1524070815884) (:by |root) (:id |ByeuiFeH2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070816388) (:by |root) (:id |SkujYgS3f) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524070882494) (:by |root) (:id |BkW5yqxShM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819530607) (:by |B1y7Rc-Zz) (:id |Sye519lHhM) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1657819532579) (:by |B1y7Rc-Zz) (:id |rym0kqeB2z) (:text |css/row) (:type :leaf)
                          |r $ {} (:at 1524070817648) (:by |root) (:id |HkcsKlHhG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1619669149065) (:by |B1y7Rc-Zz) (:id |BJltsYgrhz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1524070823331) (:by |root) (:id |BJe2jFlShG) (:text |members) (:type :leaf)
                              |n $ {} (:at 1614345425234) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624104255207) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |r $ {} (:at 1524070849620) (:by |root) (:id |BJ96txShz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070853516) (:by |root) (:id |HkhaKeSnz) (:text |map) (:type :leaf)
                                  |j $ {} (:at 1524070854323) (:by |root) (:id |Bk-0aYxSnM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070854836) (:by |root) (:id |ByRaYxH3M) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1524070855268) (:by |root) (:id |By-JCtgrnM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1614311476200) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1614311463299) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1614311469012) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                                          |L $ {} (:at 1614311469411) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1614311469663) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                              |j $ {} (:at 1614311471563) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                          |P $ {} (:at 1614311473742) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |T $ {} (:at 1524070862172) (:by |root) (:id |SyW8CFeS3z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070862624) (:by |root) (:id |SyW8CFeS3zleaf) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1524070863576) (:by |root) (:id |SyWPAFgBhM) (:text |k) (:type :leaf)
                                              |r $ {} (:at 1524070863870) (:by |root) (:id |SyZuAKeB2z) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070935603) (:by |root) (:id |SJedAtxShG) (:text |div) (:type :leaf)
                                                  |b $ {} (:at 1524070935915) (:by |root) (:id |H1-eQ9eB3M) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070936321) (:by |root) (:id |ByegX5er2z) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1524070941378) (:by |root) (:id |r1MSX5xrhG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1657819744721) (:by |B1y7Rc-Zz) (:id |rJ-HX9eB3z) (:text |:class-name) (:type :leaf)
                                                          |b $ {} (:at 1657819749547) (:by |B1y7Rc-Zz) (:text |css-member-label) (:type :leaf)
                                                  |j $ {} (:at 1524070937486) (:by |root) (:id |ryM-XqxHnz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1524070939626) (:by |root) (:id |BJGm9xB3M) (:text |<>) (:type :leaf)
                                                      |T $ {} (:at 1524070866665) (:by |root) (:id |HyzFRtlBnz) (:text |username) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BkseG9Lxx0SW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkhlz5IglRr-) (:text |=<) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by |root) (:id |rkAefcIlgRrZ) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070799028) (:by |root) (:id |S1JuFlHhM) (:text |48) (:type :leaf)
                  |x $ {} (:at 1524070749088) (:by |root) (:id |S1rwteS2z) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070749878) (:by |root) (:id |BJlrDYxBhz) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070750119) (:by |root) (:id |H17IvYlrnf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070750478) (:by |root) (:id |HkMUvFeS2f) (:text |{}) (:type :leaf)
                      |P $ {} (:at 1536750075330) (:by |B1y7Rc-Zz) (:id |uOPXafTZdi) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536750077847) (:by |B1y7Rc-Zz) (:id |uOPXafTZdileaf) (:text |button) (:type :leaf)
                          |j $ {} (:at 1536750078116) (:by |B1y7Rc-Zz) (:id |54E1NydiPF) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536750084550) (:by |B1y7Rc-Zz) (:id |8ZynejYcOp) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1536750084800) (:by |B1y7Rc-Zz) (:id |WE9kL26nME) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819541291) (:by |B1y7Rc-Zz) (:id |FinL-2NIc_) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1657819543115) (:by |B1y7Rc-Zz) (:id |HDKedQiLPL) (:text |css/button) (:type :leaf)
                              |r $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |9KqNbw7POH) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Qzbn-LQgag) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Ap2ncP6Z17) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |yJAC369k1J) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |-EI5sPgdhJ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |0KsZOYBtdZ) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1536750196752) (:by |B1y7Rc-Zz) (:id |IjGXOjvOaT) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1536750149343) (:by |B1y7Rc-Zz) (:id |c1hzphaVoc) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1657819545719) (:by |B1y7Rc-Zz) (:id |Ns2_BydKNA) (:text |js/location.replace) (:type :leaf)
                                          |r $ {} (:at 1536750157447) (:by |B1y7Rc-Zz) (:id |YmX5Wzb78T) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536750157996) (:by |B1y7Rc-Zz) (:id |mbcbMGu8wf) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1536947568308) (:by |root) (:id |DbCo3fk6H) (:text |js/location.origin) (:type :leaf)
                                              |r $ {} (:at 1536947560142) (:by |root) (:id |JRYzWyR7y2) (:text "|\"?time=") (:type :leaf)
                                              |v $ {} (:at 1536750183293) (:by |B1y7Rc-Zz) (:id |oPd5dUr6pZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1536750183917) (:by |B1y7Rc-Zz) (:id |XjR6j7fCrg) (:text |.now) (:type :leaf)
                                                  |j $ {} (:at 1536750185350) (:by |B1y7Rc-Zz) (:id |lpXN4rI60T) (:text |js/Date) (:type :leaf)
                          |r $ {} (:at 1536750090761) (:by |B1y7Rc-Zz) (:id |wKN1OxLol) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536750091205) (:by |B1y7Rc-Zz) (:id |wKN1OxLolleaf) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1536750096637) (:by |B1y7Rc-Zz) (:id |El2yUaE7P) (:text "|\"Refresh") (:type :leaf)
                      |R $ {} (:at 1536750643074) (:by |B1y7Rc-Zz) (:id |f9W9pIt6P) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536750643562) (:by |B1y7Rc-Zz) (:id |f9W9pIt6Pleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1536750644286) (:by |B1y7Rc-Zz) (:id |yAaDQ5KQcm) (:text |8) (:type :leaf)
                          |r $ {} (:at 1536750644793) (:by |B1y7Rc-Zz) (:id |RMJuWthIzE) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |SyJ-M5IggAHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529343433304) (:by |root) (:id |S1gbfqIgl0Sb) (:text |button) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyWWz9UeeArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkMWGqUxlRHb) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1657819548818) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819551339) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1657819553278) (:by |B1y7Rc-Zz) (:text |css/button) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |SkmbM98xl0SZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1NbM9UllABW) (:text |:style) (:type :leaf)
                                  |b $ {} (:at 1529343455186) (:by |root) (:id |B1lNRPS-m) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529343455629) (:by |root) (:id |SkxvJAvS-m) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1529343457115) (:by |root) (:id |SkWFyCDHZ7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1529343457898) (:by |root) (:id |SkeYyCDBWX) (:text |:color) (:type :leaf)
                                          |j $ {} (:at 1529343458855) (:by |root) (:id |S1mckRvHWX) (:text |:red) (:type :leaf)
                                      |r $ {} (:at 1529343459158) (:by |root) (:id |rkXiyCPHbX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1529343463728) (:by |root) (:id |rkXiyCPHbXleaf) (:text |:border-color) (:type :leaf)
                                          |j $ {} (:at 1529343464475) (:by |root) (:id |rkZeeAwSbX) (:text |:red) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |B1edqskgQf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1514302350497) (:by |root) (:id |r1i-McLxeArW) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJxrymsN5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521951456454) (:by |root) (:id |SkICb9UgeRSb) (:text |fn) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HJ_C-q8llCSW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkK0W98geAHb) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |By5CZ5Uxx0BZ) (:text |dispatch!) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Sks0Z9Ulg0rW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkhRb5LllArW) (:text |dispatch!) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |BJaAW9UelCHb) (:text |:user/log-out) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by |root) (:id |SyARWqLegRrW) (:text |nil) (:type :leaf)
                                      |x $ {} (:at 1500541010211) (:by nil) (:id |HkJJfc8glCHb) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1657819559572) (:by |B1y7Rc-Zz) (:id |HkWyM9Uxx0BZ) (:text |js/localStorage.removeItem) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJGJG5UxgCBb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |SymJG5IelASb) (:text |:storage-key) (:type :leaf)
                                              |j $ {} (:at 1527788933957) (:by |root) (:id |HyNJG5LegRrb) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |Hy6bM58lg0r-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyC-MqUgeRHW) (:text |<>) (:type :leaf)
                              |r $ {} (:at 1536750140051) (:by |B1y7Rc-Zz) (:id |BylzzcUllAHZ) (:text "|\"Log out") (:type :leaf)
          |css-member-label $ {} (:at 1657819749898) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819751489) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657819749898) (:by |B1y7Rc-Zz) (:text |css-member-label) (:type :leaf)
              |h $ {} (:at 1657819749898) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819753128) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1657819753433) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819754552) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"0 8px") (:type :leaf)
                          |h $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:border) (:type :leaf)
                              |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"1px solid ") (:type :leaf)
                                  |h $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                          |l $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"16px") (:type :leaf)
                          |o $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text |:margin) (:type :leaf)
                              |b $ {} (:at 1657819754972) (:by |B1y7Rc-Zz) (:text "|\"0 4px") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |ByC9-5Lee0rW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1s-qLxlAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |ryljZqUglCrZ) (:text |cumulo-reel.app.comp.profile) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |HkCj-9IxgABb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |SyknZqIgxCBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |Bkx3W5LxeRHW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1614311487106) (:by |B1y7Rc-Zz) (:id |ryz2-98ggCrW) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1X3W58egRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |BJVhZcUelRrZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |Sk8h-5LgxRBW) (:text |hsl) (:type :leaf)
                |n $ {} (:at 1657819499399) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819501004) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657819502364) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819502578) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819504739) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |Byw3Z9IexAB-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1F2b98glCBb) (:text |cumulo-reel.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJq3Zc8xxCBb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |HyjhZ9UeeRrb) (:text |schema) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |HJ33Z9Ill0rW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547419785) (:by |root) (:id |H1R2Z58eeCBZ) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HyyaWqUee0rZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |SklpZqLgg0HZ) (:text |ui) (:type :leaf)
                |w $ {} (:at 1657819506357) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819508327) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657819508711) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657819509395) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |HyxIgc3JG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540962184094) (:by |root) (:id |BJHi-5UxxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |B1LsWcIeeArW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HkvjWqUlgRS-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |B1FjW9UegCSW) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1524070875244) (:by |root) (:id |BkllkcgSnz) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |ryqiZqUel0B-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SkooW9UgxRrb) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJ2obqIlgCB-) (:text |div) (:type :leaf)
                        |y $ {} (:at 1529343437918) (:by |root) (:id |HyaiWqIgxCrZ) (:text |button) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |ryTT-cLgxABZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJJRW5UegRrW) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1gAZc8llRrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hy-0b58xxCrW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1XCWcIxlRS-) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1527788936196) (:by |root) (:id |Skll5r3p1m) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1624107832244) (:by |B1y7Rc-Zz) (:id |rk-cB3pyQ) (:text |cumulo-reel.app.config) (:type :leaf)
                    |r $ {} (:at 1527788938747) (:by |root) (:id |H14fqShakX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788939786) (:by |root) (:id |B1zm9B3T1Q) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |rJ4RbcUxeCBZ) (:type :expr)
          :data $ {}
      |cumulo-reel.app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1545066604311) (:by |B1y7Rc-Zz) (:id |hkC8erVayY) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066604311) (:by |B1y7Rc-Zz) (:id |NfZ5Bmoul_) (:text |def) (:type :leaf)
              |j $ {} (:at 1545066604311) (:by |B1y7Rc-Zz) (:id |XaefMsQn_3) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1624108095805) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624108095805) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                  |j $ {} (:at 1624108095805) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                  |r $ {} (:at 1624108095805) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624108095805) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                      |j $ {} (:at 1624196018232) (:by |B1y7Rc-Zz) (:text "|\"mode") (:type :leaf)
          |site $ {} (:at 1500541255553) (:by nil) (:id |ryy9lUWg0BW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Syx9g8-l0B-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hy-9x8beASZ) (:text |site) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByG9eLZlAB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1Q5x8Zl0Hb) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |H1w9gIblRHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rydqx8blRHW) (:text |:port) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rJF9g8-gCHZ) (:text |5021) (:type :leaf)
                  |t $ {} (:at 1527867502467) (:by |root) (:id |BkeUud1ye7) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867504737) (:by |root) (:id |BkeUud1ye7leaf) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1527867511502) (:by |root) (:id |H1zKduykx7) (:text "|\"Cumulo") (:type :leaf)
                  |u $ {} (:at 1527867511986) (:by |root) (:id |r1gxKOykeQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867512819) (:by |root) (:id |r1gxKOykeQleaf) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1527867517723) (:by |root) (:id |B1SY_yJx7) (:text "|\"http://cdn.tiye.me/logo/cumulo.png") (:type :leaf)
                  |v $ {} (:at 1527615278481) (:by |root) (:id |rJ-8EyzsyQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527615280984) (:by |root) (:id |rJ-8EyzsyQleaf) (:text |:dev-ui) (:type :leaf)
                      |j $ {} (:at 1527615358738) (:by |root) (:id |HklSKJMi1m) (:text "|\"http://localhost:8100/main.css") (:type :leaf)
                  |x $ {} (:at 1527615281625) (:by |root) (:id |BJ5NJGsyX) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527615283846) (:by |root) (:id |BJ5NJGsyXleaf) (:text |:release-ui) (:type :leaf)
                      |j $ {} (:at 1527615339502) (:by |root) (:id |r1gz_kzjkQ) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf)
                  |x5 $ {} (:at 1528009883995) (:by |root) (:id |ByxEoNG-lQ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1528009886059) (:by |root) (:id |ByxEoNG-lQleaf) (:text |:cdn-url) (:type :leaf)
                      |j $ {} (:at 1584875932228) (:by |B1y7Rc-Zz) (:id |BkPo4GbeQ) (:text "|\"http://cdn.tiye.me/cumulo-reel/") (:type :leaf)
                  |yr $ {} (:at 1535565550489) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcw) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565552318) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcwleaf) (:text |:theme) (:type :leaf)
                      |j $ {} (:at 1535565554474) (:by |B1y7Rc-Zz) (:id |iZkrTQHtV) (:text "|\"#eeeeff") (:type :leaf)
                  |yt $ {} (:at 1545066625529) (:by |B1y7Rc-Zz) (:id |wHLQrXSaee) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066625529) (:by |B1y7Rc-Zz) (:id |U30E8Y7aFM) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1614311777207) (:by |B1y7Rc-Zz) (:id |0DRdftYQPp) (:text "|\"reel-storage") (:type :leaf)
                  |yv $ {} (:at 1545066623608) (:by |B1y7Rc-Zz) (:id |4Yh1oqWKaH) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066623608) (:by |B1y7Rc-Zz) (:id |kzldtzVTsd) (:text |:storage-file) (:type :leaf)
                      |j $ {} (:at 1614311769908) (:by |B1y7Rc-Zz) (:id |ouh_kTW5Th) (:text "|\"storage.cirru") (:type :leaf)
        :ns $ {} (:at 1527788708227) (:by |root) (:id |HJghs43Tk7) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788708227) (:by |root) (:id |HJb3jEn6kX) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788708227) (:by |root) (:id |BJfhoN3pym) (:text |cumulo-reel.app.config) (:type :leaf)
            |r $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |Xfr2SfqDZu) (:type :expr)
              :data $ {}
                |T $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |zaMusLVAc6) (:text |:require) (:type :leaf)
                |j $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |so3yv3GDjR) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |73QWIpLGA_) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |ceD4p4Wm1x) (:text |cumulo-util.core) (:type :leaf)
                    |r $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |NoN1NlPVQM) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |yQpF3TSui2) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |F1j2_vZuQo) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1545066784671) (:by |B1y7Rc-Zz) (:id |jQzBGIycv2) (:text |get-env!) (:type :leaf)
        :proc $ {} (:at 1527788708227) (:by |root) (:id |ByX2iV3p1m) (:type :expr)
          :data $ {}
      |cumulo-reel.app.server $ {}
        :defs $ {}
          |*client-caches $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |H2pKSXvsFZxa) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614313288806) (:by |B1y7Rc-Zz) (:id |JOeDN5nwxoCm) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |UrS8dS7juiCO) (:text |*client-caches) (:type :leaf)
              |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |HQNGcJ8lmVfG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |gsEvRKr-F6rJ) (:text |{}) (:type :leaf)
          |*initial-db $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |*initial-db) (:type :leaf)
              |h $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                      |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |w-log) (:type :leaf)
                          |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |h $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data") (:type :leaf)
                      |h $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                          |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
                          |h $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |read-file) (:type :leaf)
                                  |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |l $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |b $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text "|\"Found no data") (:type :leaf)
                      |h $ {} (:at 1657818812830) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
          |*reader-reel $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |e6T0fwiNBmI_) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614313282361) (:by |B1y7Rc-Zz) (:id |I0Yic53QaWzD) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |L0z3HyQ53OYh) (:text |*reader-reel) (:type :leaf)
              |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |i8efWS5sY6ED) (:text |@*reel) (:type :leaf)
          |*reel $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |iSJboDBUCQjM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614313269432) (:by |B1y7Rc-Zz) (:id |iQNhXuvwyxPp) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |HSGUUhxm99QX) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |ISK3e5p6L3Bw) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |tnzUsAS5ZSm7) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |siO_kNGjBkeD) (:text |reel-schema) (:type :leaf)
                  |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |p4kwgADNOIP1) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |u_dUkR80MkL8) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |NgoA7BcTOFKh) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |Phrq_ABhmw4Q) (:text |:base) (:type :leaf)
                          |j $ {} (:at 1614313372094) (:by |B1y7Rc-Zz) (:id |BjxNfk3rU3cX) (:text |@*initial-db) (:type :leaf)
                      |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |pP3pTf_uhnK1) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |p0ww-mpX6nca) (:text |:db) (:type :leaf)
                          |j $ {} (:at 1614313375609) (:by |B1y7Rc-Zz) (:id |sUGeV9EpH93F) (:text |@*initial-db) (:type :leaf)
          |dispatch! $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
              |l $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |generate-id!) (:type :leaf)
                      |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                          |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                              |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |.timestamp) (:type :leaf)
                  |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!") (:type :leaf)
                          |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |l $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                          |o $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |l $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |:effect/persist) (:type :leaf)
                      |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
                      |l $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                          |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                              |b $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                              |h $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                              |l $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |o $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |q $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |s $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |t $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                              |u $ {} (:at 1657818795487) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
          |get-backup-path! $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
              |h $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |.extract) (:type :leaf)
                              |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |h $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
                      |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |h $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text "|\"backups") (:type :leaf)
                      |l $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |:month) (:type :leaf)
                              |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                      |o $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |:day) (:type :leaf)
                              |b $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |h $ {} (:at 1657818889747) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru") (:type :leaf)
          |main! $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |l $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |o $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                          |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                              |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"port") (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |parse-float) (:type :leaf)
                                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |l $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |l $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:") (:type :leaf)
                          |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |q $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading") (:type :leaf)
                  |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |identity) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
              |s $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                  |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |t $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |600000) (:type :leaf)
                  |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |h $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |u $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |on-control-c) (:type :leaf)
                  |b $ {} (:at 1657818323586) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
          |on-exit! $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
              |h $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |o $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                  |b $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |h $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text "|\"exit code is...") (:type :leaf)
              |q $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |quit!) (:type :leaf)
                  |b $ {} (:at 1657818985210) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
          |persist-db! $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |h $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                          |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                              |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                                  |h $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |l $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                          |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                      |h $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                          |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
                  |h $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                      |h $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                  |l $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |b $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                      |h $ {} (:at 1657818854101) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
          |reload! $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |948kVm23xxfe) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |aiTQjq7_8WYa) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |qdyC_v7dAawu) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |5zhZvQ2ndVwQ) (:type :expr)
                :data $ {}
              |v $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |e6-0BvzKyanU) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |1zbOK2iVfWqb) (:text |println) (:type :leaf)
                  |j $ {} (:at 1624471131986) (:by |B1y7Rc-Zz) (:id |woGMd_9Q7_do) (:text "||Code updated.") (:type :leaf)
              |w $ {} (:at 1614227116494) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614227116119) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
              |x $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |m_Mato2valwJ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |jlkEu98SDbBx) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |2-Nn7Gq21BJy) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |04gWtG06qpr5) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |RuAOq9-3oydE) (:text |refresh-reel) (:type :leaf)
                      |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |KxQN7TllyuVu) (:text |@*reel) (:type :leaf)
                      |r $ {} (:at 1614313388352) (:by |B1y7Rc-Zz) (:id |79aKO4sIpvkY) (:text |@*initial-db) (:type :leaf)
                      |v $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |b0nSCZ13Mt2F) (:text |updater) (:type :leaf)
              |y $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |nw5P0YOtm6Rg) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |o3Shrv_d9bmk) (:text |sync-clients!) (:type :leaf)
                  |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |IMGhmDs08KQs) (:text |@*reader-reel) (:type :leaf)
          |render-loop! $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |h $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |l $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |b $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |b $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |identical?) (:type :leaf)
                          |b $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
                          |h $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |h $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                      |b $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
                      |h $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |l $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                      |b $ {} (:at 1657818920861) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |run-server! $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |UqeYWvMeziJ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |faOTw8IrGms) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |1DOh7oIXBKW) (:text |run-server!) (:type :leaf)
              |r $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |T9LtIASOb7O) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818299988) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |v $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                      |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |key-match) (:type :leaf)
                          |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:connect) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:session/connect) (:type :leaf)
                                      |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |l $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"New client.") (:type :leaf)
                          |l $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:message) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                              |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                          |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                              |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                                  |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"unknown action:") (:type :leaf)
                                          |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |l $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                          |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                              |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |l $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |o $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:disconnect) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"Client closed!") (:type :leaf)
                                  |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |:session/disconnect) (:type :leaf)
                                      |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |l $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |q $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |_) (:type :leaf)
                              |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |b $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text "|\"unknown data:") (:type :leaf)
                                  |h $ {} (:at 1657818281523) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |storage-file $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
              |h $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |empty?) (:type :leaf)
                      |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                  |h $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |h $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |l $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |h $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text "|\"/") (:type :leaf)
                      |l $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |b $ {} (:at 1657818699719) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
          |sync-clients! $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
              |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
              |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                          |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                          |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |@*client-caches) (:type :leaf)
                                          |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |o $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                              |q $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                      |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:key) (:type :leaf)
                                              |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                          |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                              |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text "|\"Changes for") (:type :leaf)
                                  |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                                  |o $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |q $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                          |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                                          |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                                              |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                                      |b $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
                                      |h $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |l $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |o $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
              |o $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657818952719) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
        :ns $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |tTK69PZSkr) (:type :expr)
          :data $ {}
            |T $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |1L1KfFRAOj) (:text |ns) (:type :leaf)
            |j $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |A1jmL_dZdl) (:text |cumulo-reel.app.server) (:type :leaf)
            |r $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818659026) (:by |B1y7Rc-Zz) (:text |cumulo-reel.schema) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818749874) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.updater) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                |l $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                        |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                        |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                |o $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818385667) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.config) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |q $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818387486) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.twig.container) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                |s $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |recollect.diff) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                |t $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss.core) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                        |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                        |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                |u $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |recollect.twig) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
                        |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
                |v $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818725651) (:by |B1y7Rc-Zz) (:text |cumulo-reel.$meta) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                |w $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.fs) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                        |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                |x $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.time) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                |y $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
                        |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                |z $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |calcit.std.path) (:type :leaf)
                    |b $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657818357489) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
        :proc $ {} (:at 1545066692604) (:by |B1y7Rc-Zz) (:id |vWduAIvA35y) (:type :expr)
          :data $ {}
      |cumulo-reel.app.twig.container $ {}
        :defs $ {}
          |twig-container $ {} (:at 1500541255553) (:by nil) (:id |ByY-eUZeAr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614226788452) (:by |B1y7Rc-Zz) (:id |BJ5bxLZlRBZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkibe8Wl0S-) (:text |twig-container) (:type :leaf)
              |n $ {} (:at 1500541255553) (:by nil) (:id |Sk-PI_qp1z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hkzzg8WlRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |ByXzxL-lCH-) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507828952210) (:by |root) (:id |rklw6NmanW) (:text |records) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ryl38_qaJf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |ByHzl8bgCSZ) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyUflIWgRrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HywGl8-gCHW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |H1_MlIbg0SW) (:text |logged-in?) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |B1FGxLWeRHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ry5fe8ZlRS-) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |BkiGlU-e0B-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJnGeLZlAHb) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJTMlI-eAB-) (:text |session) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |rJ0GgLZlCS-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BkkQeLZlCHW) (:text |router) (:type :leaf)
                          |j $ {} (:at 1614349567127) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1614349570579) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |T $ {} (:at 1500541255553) (:by nil) (:id |SkemlIWxRBb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJWmlLWeRHZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJzXlLWxAHZ) (:text |session) (:type :leaf)
                              |j $ {} (:at 1614349571178) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1614349571611) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1507830626848) (:by |root) (:id |ryowoQp2W) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830630278) (:by |root) (:id |ryowoQp2Wleaf) (:text |base-data) (:type :leaf)
                          |j $ {} (:at 1507830631302) (:by |root) (:id |r1lyujmp3b) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830631896) (:by |root) (:id |By1djQTnb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507830632113) (:by |root) (:id |ryGxdimT2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830641027) (:by |root) (:id |Sy-guiXp2b) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1507830639219) (:by |root) (:id |ByBusQ6hW) (:text |logged-in?) (:type :leaf)
                              |n $ {} (:at 1507830674443) (:by |root) (:id |ByecqsQ6nW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830677551) (:by |root) (:id |ByecqsQ6nWleaf) (:text |:session) (:type :leaf)
                                  |j $ {} (:at 1507830679311) (:by |root) (:id |BJlA5oXpn-) (:text |session) (:type :leaf)
                              |v $ {} (:at 1507830649968) (:by |root) (:id |SyxMtsm62Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830655148) (:by |root) (:id |SyxMtsm62Zleaf) (:text |:reel-length) (:type :leaf)
                                  |j $ {} (:at 1507830655987) (:by |root) (:id |B1xuKj7p3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830657551) (:by |root) (:id |S1dKjma2Z) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1507830658789) (:by |root) (:id |HkgcFsXT3b) (:text |records) (:type :leaf)
                  |r $ {} (:at 1507830661017) (:by |root) (:id |BkxpKj76h-) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507830661999) (:by |root) (:id |H1W6KoQ6hZ) (:text |merge) (:type :leaf)
                      |L $ {} (:at 1507830664014) (:by |root) (:id |rJVCFjmp2b) (:text |base-data) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HJQmlU-e0rW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |rJVmgLZlAr-) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |r1S7gUZlArb) (:text |logged-in?) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by nil) (:id |HJUQxIbx0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |rJPQl8ZgCHb) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |B107eU-lCHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hy1VxUbeCS-) (:text |:user) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by nil) (:id |HJlNxUbx0r-) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1614227198115) (:by |B1y7Rc-Zz) (:text |memof-call) (:type :leaf)
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyZVxIZeCS-) (:text |twig-user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyG4lIZlRHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |HkXVeL-l0Sb) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJ4Nx8WeCrb) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1500541255553) (:by nil) (:id |HkrVgLZg0B-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541255553) (:by |root) (:id |ByIEeLbxCHb) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1500541255553) (:by |root) (:id |H1v4xIWxArZ) (:text |:users) (:type :leaf)
                                              |r $ {} (:at 1500541255553) (:by nil) (:id |HJ_VxL-xRr-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJYNgUbgCBb) (:text |:user-id) (:type :leaf)
                                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryqNeLZeCHb) (:text |session) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |SJsEe8ZgCBZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJ2EeUWe0SZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1524070628251) (:by |root) (:id |ryh1FgBhM) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1524070634499) (:by |root) (:id |rJbWgKgBhz) (:text |assoc) (:type :leaf)
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJaEl8ZxCS-) (:text |router) (:type :leaf)
                                      |j $ {} (:at 1524070635855) (:by |root) (:id |rygQeYlH3G) (:text |:data) (:type :leaf)
                                      |r $ {} (:at 1524070636122) (:by |root) (:id |r1VNlFlHnz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1614344762404) (:by |B1y7Rc-Zz) (:id |BJ74eFlB2z) (:text |case) (:type :leaf)
                                          |j $ {} (:at 1524070641804) (:by |root) (:id |HybcgKxB2G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070642493) (:by |root) (:id |S1g9etlS2M) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1524070643351) (:by |root) (:id |HJilKgSnf) (:text |router) (:type :leaf)
                                          |n $ {} (:at 1525108994160) (:by |root) (:id |BJxq-bAE6z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1525108995413) (:by |root) (:id |BJxq-bAE6zleaf) (:text |:home) (:type :leaf)
                                              |j $ {} (:at 1525108999855) (:by |root) (:id |BkgzZ0NaG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525109002003) (:by |root) (:id |Hyh-ZCETz) (:text |:pages) (:type :leaf)
                                                  |j $ {} (:at 1525109002404) (:by |root) (:id |BkWzG-CVpM) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1524070643948) (:by |root) (:id |Bke3gKgB3z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070646898) (:by |root) (:id |Skb6etxBhG) (:text |:profile) (:type :leaf)
                                              |j $ {} (:at 1524070654495) (:by |root) (:id |ryLWFernz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1614227192882) (:by |B1y7Rc-Zz) (:text |memof-call) (:type :leaf)
                                                  |T $ {} (:at 1524070662619) (:by |root) (:id |B1zJ-teBnM) (:text |twig-members) (:type :leaf)
                                                  |j $ {} (:at 1524070665615) (:by |root) (:id |B1MzFxBhz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070670477) (:by |root) (:id |Bk-MYxShG) (:text |:sessions) (:type :leaf)
                                                      |j $ {} (:at 1524070672563) (:by |root) (:id |SyPMtxH2G) (:text |db) (:type :leaf)
                                                  |r $ {} (:at 1524070673171) (:by |root) (:id |HyWFMYxB3G) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070674094) (:by |root) (:id |HyWFMYxB3Gleaf) (:text |:users) (:type :leaf)
                                                      |j $ {} (:at 1524070675166) (:by |root) (:id |HyVcztlS2f) (:text |db) (:type :leaf)
                                          |v $ {} (:at 1614344755189) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1614344757294) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1614344756297) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1614344758337) (:by |B1y7Rc-Zz) (:text |router) (:type :leaf)
                                              |j $ {} (:at 1614344758835) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1614344759137) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |y $ {} (:at 1523120222572) (:by |root) (:id |H1DPud8iG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120223864) (:by |root) (:id |H1DPud8iGleaf) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120229051) (:by |root) (:id |rygpP_OUif) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1523120230136) (:by |root) (:id |HkaDOd8iM) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1523120230346) (:by |root) (:id |SJrAwd_8oM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1523120232122) (:by |root) (:id |rJVAwd_8if) (:text |:sessions) (:type :leaf)
                                          |j $ {} (:at 1523120232500) (:by |root) (:id |BJreO_d8of) (:text |db) (:type :leaf)
                              |yT $ {} (:at 1524279105545) (:by |root) (:id |rycrDmO2f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533834715393) (:by |B1y7Rc-Zz) (:id |rycrDmO2fleaf) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279111422) (:by |root) (:id |Hyx1LP7d3z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819084979) (:by |B1y7Rc-Zz) (:id |ryJUwQd2f) (:text |rand-hex-color!) (:type :leaf)
                          |v $ {} (:at 1507830683551) (:by |root) (:id |ryg7ssXahb) (:text |nil) (:type :leaf)
          |twig-members $ {} (:at 1524070676419) (:by |root) (:id |SkZ3zYeShG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614226775320) (:by |B1y7Rc-Zz) (:id |rJG3GYxHhG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1524070676419) (:by |root) (:id |rymhzFxH3G) (:text |twig-members) (:type :leaf)
              |r $ {} (:at 1524070676419) (:by |root) (:id |Hy4nzKerhG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524070680419) (:by |root) (:id |rygJQFlrnf) (:text |sessions) (:type :leaf)
                  |j $ {} (:at 1524070708862) (:by |root) (:id |r1-QYlSnf) (:text |users) (:type :leaf)
              |v $ {} (:at 1524070683188) (:by |root) (:id |SJxXQKlB2M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1619669137621) (:by |B1y7Rc-Zz) (:id |SJxXQKlB2Mleaf) (:text |->) (:type :leaf)
                  |j $ {} (:at 1524070692906) (:by |root) (:id |rk7F7txBnM) (:text |sessions) (:type :leaf)
                  |n $ {} (:at 1614345383041) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614345384889) (:by |B1y7Rc-Zz) (:text |to-pairs) (:type :leaf)
                  |r $ {} (:at 1524070693234) (:by |root) (:id |ByNpmYeS3M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070695660) (:by |root) (:id |Hy7T7KeH2z) (:text |map) (:type :leaf)
                      |j $ {} (:at 1524070696021) (:by |root) (:id |rkZg4tlH2M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070696334) (:by |root) (:id |r1gxVYgrnz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1524070696681) (:by |root) (:id |HyW4Flr2f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1614313228956) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                          |r $ {} (:at 1614313230182) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1614313233410) (:by |B1y7Rc-Zz) (:text |let[]) (:type :leaf)
                              |L $ {} (:at 1614313234192) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1614313234192) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                  |r $ {} (:at 1614313234192) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                              |P $ {} (:at 1614313236313) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                              |T $ {} (:at 1524070700350) (:by |root) (:id |B1WEVFer3z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070701520) (:by |root) (:id |B1WEVFer3zleaf) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1524070702142) (:by |root) (:id |BJxLVtgH3f) (:text |k) (:type :leaf)
                                  |r $ {} (:at 1524070702968) (:by |root) (:id |Hklw4FlH2G) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070705127) (:by |root) (:id |SkPEYxB3M) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1524070714762) (:by |root) (:id |BklA4FeS3G) (:text |users) (:type :leaf)
                                      |r $ {} (:at 1524070715457) (:by |root) (:id |rJZ7BKlBnf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070716715) (:by |root) (:id |r1eXHKxS2z) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1524070717257) (:by |root) (:id |HkMHSYxB2G) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070720176) (:by |root) (:id |SkbrHKeBhM) (:text |:user-id) (:type :leaf)
                                              |j $ {} (:at 1524070722292) (:by |root) (:id |rJMOBteH3f) (:text |session) (:type :leaf)
                                          |r $ {} (:at 1524070725752) (:by |root) (:id |r1ZiBKeB3G) (:text |:name) (:type :leaf)
                  |v $ {} (:at 1524070729744) (:by |root) (:id |r1eM8YlS2M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614313415844) (:by |B1y7Rc-Zz) (:id |r1eM8YlS2Mleaf) (:text |pairs-map) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rkSex8bg0S-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |SkIleLblAr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ByDelU-eRSZ) (:text |cumulo-reel.app.twig.container) (:type :leaf)
            |r $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |b $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819107869) (:by |B1y7Rc-Zz) (:text |cumulo-reel.app.twig.user) (:type :leaf)
                    |b $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |twig-user) (:type :leaf)
                |h $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |memof.alias) (:type :leaf)
                    |b $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |memof-call) (:type :leaf)
                |l $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |calcit.std.rand) (:type :leaf)
                    |b $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819093512) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1ubxLZx0SZ) (:type :expr)
          :data $ {}
      |cumulo-reel.app.twig.user $ {}
        :defs $ {}
          |twig-user $ {} (:at 1500541255553) (:by nil) (:id |SJxcQeIWxASZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1614226768213) (:by |B1y7Rc-Zz) (:id |S1ZqXeIblCH-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByzcXgUblRBW) (:text |twig-user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByuqXg8ZxArZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJY57eLWxAH-) (:text |user) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |Hk99QgIbxAHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkjc7xUZlCSW) (:text |dissoc) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJ3qXeIbxRHW) (:text |user) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |rk6cXgLZx0HZ) (:text |:password) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rJ7t7eU-lRrZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |rkVF7xUWgASZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |rkrFQxUZxRBb) (:text |cumulo-reel.app.twig.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |By8K7xL-eArW) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |HyvKQx8WlRHW) (:text |:require) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1JqQxLblABb) (:type :expr)
          :data $ {}
      |cumulo-reel.app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1500541255553) (:by nil) (:id |Hk7nmeIbx0SZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SkV3Qe8WlRHb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkrn7xI-gASZ) (:text |updater) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk82mlUZxRB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Byw3XlIZg0B-) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1_hme8WxAr-) (:text |op) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ByY2QgLbxArZ) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1517930722619) (:by |root) (:id |H1537x8-gABW) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hksn7xL-gASW) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by |root) (:id |SJ22mx8ZeRBb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1517930695338) (:by |root) (:id |rykROrP8f) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1517930698044) (:by |root) (:id |rklROHw8z) (:text |let) (:type :leaf)
                  |T $ {} (:at 1517930701054) (:by |root) (:id |SJlBRdSPUz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930698683) (:by |root) (:id |H1X0OSD8f) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517930699996) (:by |root) (:id |r14RdHv8M) (:text |f) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |BJ6hmlU-lASb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624104927768) (:by |B1y7Rc-Zz) (:id |SJ0h7eUbg0rb) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJyaXeU-gRBZ) (:text |op) (:type :leaf)
                              |n $ {} (:at 1624104940609) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624104940609) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1624104940609) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624104940609) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1624104940609) (:by |B1y7Rc-Zz) (:text "||Unknown op:") (:type :leaf)
                                      |r $ {} (:at 1624104940609) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                                  |r $ {} (:at 1624104944017) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624104944342) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1624104945372) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1624104960432) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                          |T $ {} (:at 1624104947660) (:by |B1y7Rc-Zz) (:text |&) (:type :leaf)
                                          |j $ {} (:at 1624104948356) (:by |B1y7Rc-Zz) (:text |args) (:type :leaf)
                                      |r $ {} (:at 1624104957449) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HygpXe8Ze0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJZ6XxLWe0HW) (:text |:session/connect) (:type :leaf)
                                  |j $ {} (:at 1517930788022) (:by |root) (:id |SksmtSP8z) (:text |session/connect) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |r1KaQgU-xRrW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1cTQlUWlASW) (:text |:session/disconnect) (:type :leaf)
                                  |j $ {} (:at 1517930783929) (:by |root) (:id |r1_7FBPIM) (:text |session/disconnect) (:type :leaf)
                              |w $ {} (:at 1529231445104) (:by |root) (:id |Bkx1qO2QZm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529231483623) (:by |root) (:id |rJ-aIO2Q-Qleaf) (:text |:session/remove-message) (:type :leaf)
                                  |j $ {} (:at 1529231491015) (:by |root) (:id |BkrY_h7ZQ) (:text |session/remove-message) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |r1fCQxUWe0rb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkm0mgLZx0S-) (:text |:user/log-in) (:type :leaf)
                                  |j $ {} (:at 1517930780888) (:by |root) (:id |BkBmtrD8M) (:text |user/log-in) (:type :leaf)
                              |y $ {} (:at 1500541255553) (:by nil) (:id |rksRmlIZlCSW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |ry3Cmx8blABb) (:text |:user/sign-up) (:type :leaf)
                                  |j $ {} (:at 1517930777757) (:by |root) (:id |Bke-QtSDUM) (:text |user/sign-up) (:type :leaf)
                              |yT $ {} (:at 1500541255553) (:by nil) (:id |B1V1Nl8Zx0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1rJ4eIblRr-) (:text |:user/log-out) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryvkVgIbg0rW) (:text |user/log-out) (:type :leaf)
                              |yr $ {} (:at 1500541255553) (:by nil) (:id |HyUe4gLbxCr-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJDxEeLWgASb) (:text |:router/change) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1tl4lIZx0SW) (:text |router/change) (:type :leaf)
                  |j $ {} (:at 1517930704255) (:by |root) (:id |HyxOAOHDUM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930704937) (:by |root) (:id |HyxOAOHDUMleaf) (:text |f) (:type :leaf)
                      |j $ {} (:at 1517930706635) (:by |root) (:id |SkcC_SvLM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1517930709018) (:by |root) (:id |HJ2RdSPUf) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1517930725426) (:by |root) (:id |r1JytHD8G) (:text |sid) (:type :leaf)
                      |x $ {} (:at 1517930717948) (:by |root) (:id |S1z4JKSDLG) (:text |op-id) (:type :leaf)
                      |y $ {} (:at 1517930719120) (:by |root) (:id |BkGLkYrDUz) (:text |op-time) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |BJR97lLZlRSZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |ry1omxI-g0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryxjmgIZgArZ) (:text |cumulo-reel.app.updater) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |SJ-o7eUZlRBZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |SkGj7eUZgCrZ) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |S1momeUWgRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rkEsmx8Wg0rZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1624106171732) (:by |B1y7Rc-Zz) (:id |BySiQgUZxCS-) (:text |cumulo-reel.app.updater.session) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1Ismg8blABW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |BkDsme8-l0H-) (:text |session) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |S1uoQlLWe0HW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |r1FoXeI-e0BZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1624106167894) (:by |B1y7Rc-Zz) (:id |H19oXxI-xAH-) (:text |cumulo-reel.app.updater.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |HyojQg8WeCH-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |SJ2o7eIWeAHb) (:text |user) (:type :leaf)
                |v $ {} (:at 1500541255553) (:by nil) (:id |BkTsXxUbg0S-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |Sy0sXlLbxRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1624106169909) (:by |B1y7Rc-Zz) (:id |B1J3XgIZe0SZ) (:text |cumulo-reel.app.updater.router) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |HkZ3XxLZlCSW) (:text |router) (:type :leaf)
                |y $ {} (:at 1529231005993) (:by |root) (:id |Ske8iUnXWm) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231006285) (:by |root) (:id |Ske8iUnXWmleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231007723) (:by |root) (:id |BJXLiI2Qb7) (:text |cumulo-reel.schema) (:type :leaf)
                    |r $ {} (:at 1529231008972) (:by |root) (:id |SyGuiI3QWX) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529231009860) (:by |root) (:id |HkZtj8hXZQ) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1529231108810) (:by |root) (:id |rkpWDhQW7) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231110305) (:by |root) (:id |rkpWDhQW7leaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231113905) (:by |root) (:id |HyE0bP3mWQ) (:text |respo-message.updater) (:type :leaf)
                    |r $ {} (:at 1529231114617) (:by |root) (:id |SJ7GMD27bX) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1529231114849) (:by |root) (:id |rJG7Mvn7Z7) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1529231116379) (:by |root) (:id |B1-XMPnX-7) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529231118760) (:by |root) (:id |SyWVGD2XZQ) (:text |update-messages) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SkfhmgLbxRHb) (:type :expr)
          :data $ {}
      |cumulo-reel.app.updater.router $ {}
        :defs $ {}
          |change $ {} (:at 1500541255553) (:by nil) (:id |ryQxUbg0B-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy4gLZgABZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByBlIWg0S-) (:text |change) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkIxIWgAHZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |BkhgI-xCrb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1al8ZxAB-) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1ClU-xRB-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Hk1geLWx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HklggLbxRB-) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hk-xxUbeRSZ) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |HyzlgIZgCSb) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |rkQgxU-l0Bb) (:text |:router) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B14gg8WxCrb) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |S1eLbxASW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |S1eeUbeCrZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |r1-l8We0BW) (:text |cumulo-reel.app.updater.router) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |HJzeUWeAr-) (:type :expr)
          :data $ {}
      |cumulo-reel.app.updater.session $ {}
        :defs $ {}
          |connect $ {} (:at 1500541255553) (:by nil) (:id |HyQ1WeI-xABW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJ4ybe8-g0Sb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |B1SyWx8bxABW) (:text |connect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ry8k-eUbgCr-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJv1Wl8WgRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |Hk_JWeLZg0Hb) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ryYkWl8Wx0SZ) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HyqJ-l8-lCBZ) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |r1jk-lIWlASb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJhyZe8blCHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rka1blIZeRrW) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |B1Ry-lIZgRrZ) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |r1klbeIWeRSZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJgeZeLbe0HZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HkWeWlLbl0rb) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |SyfgWx8WeAHW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ7xbgI-eAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkNeWeUWx0HW) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |BkBxWxIZxArW) (:text |schema/session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |HkUxZeLZxRrb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Skwebg8-gArb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |BkdxZxL-l0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ryKxZl8-x0SZ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |r19ebe8WeArW) (:text |sid) (:type :leaf)
          |disconnect $ {} (:at 1500541255553) (:by nil) (:id |HJsgZx8-lCr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Bknx-g8-gASW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByalZeUblRB-) (:text |disconnect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkCxZl8WxCH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJ4ZWeUWeArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkrbZe8blCrZ) (:text |update) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HyL-Wx8WgABb) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |H1v-Wx8ZlCBb) (:text |:sessions) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ_-ZgUbx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyKZZxUbxRBb) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyqWZlU-lCHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyjWWlLWe0HW) (:text |session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |Syh-WgIZxCHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Bka-Zg8beAS-) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJAZZl8ZgABZ) (:text |session) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by |root) (:id |S1yMbeI-e0BW) (:text |sid) (:type :leaf)
          |remove-message $ {} (:at 1529231499908) (:by |root) (:id |S1Z4cd3X-7) (:type :expr)
            :data $ {}
              |T $ {} (:at 1529231499908) (:by |root) (:id |rkMV9_nQZQ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1529231499908) (:by |root) (:id |HymV5_27ZX) (:text |remove-message) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk5cu3XWm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1529231506714) (:by |root) (:id |H1icunXWQ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529231507936) (:by |root) (:id |H1icunXWQleaf) (:text |update-in) (:type :leaf)
                  |j $ {} (:at 1529231509725) (:by |root) (:id |r1TcOh7Z7) (:text |db) (:type :leaf)
                  |r $ {} (:at 1529231509958) (:by |root) (:id |H1QCcOnQ-X) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529231510376) (:by |root) (:id |SyMC9_2XZQ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1529231511756) (:by |root) (:id |SkIRq_nmWm) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1529231512509) (:by |root) (:id |HkGejd2QZX) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1529231515700) (:by |root) (:id |BJZj_hQ-m) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1529231534326) (:by |root) (:id |H1bU2_hmZQ) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529231534991) (:by |root) (:id |Syv3_27ZX) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1529231535248) (:by |root) (:id |HJXvh_3XWX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231536189) (:by |root) (:id |BkfPhun7bQ) (:text |messages) (:type :leaf)
                      |T $ {} (:at 1529231516827) (:by |root) (:id |r1Bi_2XZX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231517957) (:by |root) (:id |r1Bi_2XZXleaf) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1529231519342) (:by |root) (:id |S1m8sOh7ZQ) (:text |messages) (:type :leaf)
                          |r $ {} (:at 1529231521395) (:by |root) (:id |ryXYs_hXb7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529231522521) (:by |root) (:id |HyvvoO2QWQ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1529231524125) (:by |root) (:id |rJxjjdnQZQ) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |Sy_0leLZgCrW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1t0llUZg0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryq0ee8Wl0BZ) (:text |cumulo-reel.app.updater.session) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |rJs0xxI-g0rZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |B12AggIZl0rW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |SyaAlgIZeCSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rJ00glL-xAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BkyJbxUWxCH-) (:text |cumulo-reel.schema) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1xyWgUWlRHb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |By-J-xU-gABb) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJGJZgL-x0rZ) (:type :expr)
          :data $ {}
      |cumulo-reel.app.updater.user $ {}
        :defs $ {}
          |log-in $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |log-in) (:type :leaf)
              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |o $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                              |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |o $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                          |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                          |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                      |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                      |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                                  |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ") (:type :leaf)
                                                          |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                  |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                          |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                          |l $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                  |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                      |b $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text "|\"No user named: ") (:type :leaf)
                                                      |h $ {} (:at 1657819046746) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
          |log-out $ {} (:at 1500541255553) (:by nil) (:id |Bk8TlgU-xAHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BJPaegIWgAHZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |HkuTeeIbxAB-) (:text |log-out) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |BkFael8ZgRrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJ9pxxIZeRHW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |BkjpegUbxArZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |Hk3peeU-e0BW) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |H16agxUbx0r-) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HyRpllIblRSb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rkyRlxUZxCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1gRge8WeCBb) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1WAxxIWlAS-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |BkzRglUWgCHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HymReg8WgRBZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |H1V0ggLZgCB-) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rJBRgeUbxCHZ) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |HJL0egLbe0H-) (:text |:user-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJvCgxLbeRB-) (:text |nil) (:type :leaf)
          |sign-up $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sign-up) (:type :leaf)
              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |o $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                      |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                          |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ") (:type :leaf)
                                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                      |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |h $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |l $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:nickname) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |o $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                  |q $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |:avatar) (:type :leaf)
                                      |b $ {} (:at 1657819035007) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |SyuRgL-x0HZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1KCx8bgAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |Sk5AgLWlRrb) (:text |cumulo-reel.app.updater.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |ryi0xL-lCH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r13AgIWlAS-) (:text |:require) (:type :leaf)
                |r $ {} (:at 1657819056477) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |calcit.std.hash) (:type :leaf)
                    |b $ {} (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819056477) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819056477) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |B141llLbeCBW) (:type :expr)
          :data $ {}
      |cumulo-reel.comp.reel $ {}
        :defs $ {}
          |comp-reel $ {} (:at 1507828615828) (:by |root) (:id |Bklx97QThZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1507828638117) (:by |root) (:id |ByZg5mmpn-) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1507828615828) (:by |root) (:id |BkzxqXma2b) (:text |comp-reel) (:type :leaf)
              |r $ {} (:at 1507828615828) (:by |root) (:id |HyXl9XXa2W) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1619669798298) (:by |B1y7Rc-Zz) (:id |Bkevjm7ahb) (:text |size) (:type :leaf)
                  |j $ {} (:at 1507828806687) (:by |root) (:id |SyxAH4m6hZ) (:text |addional-styles) (:type :leaf)
              |v $ {} (:at 1507828642014) (:by |root) (:id |rkgcjQm6hW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507828644047) (:by |root) (:id |rkgcjQm6hWleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1507828644307) (:by |root) (:id |B1m3oXXpnb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507828645447) (:by |root) (:id |rJz2sm76hb) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657819344542) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819347279) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657819348902) (:by |B1y7Rc-Zz) (:text |css-reel) (:type :leaf)
                      |j $ {} (:at 1507828787656) (:by |root) (:id |rJh4E76hW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507828788612) (:by |root) (:id |HyxiEV7T2-) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1507828820509) (:by |root) (:id |SyxnLEmphW) (:text |addional-styles) (:type :leaf)
                  |r $ {} (:at 1507828646137) (:by |root) (:id |Hke0sXXahZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507828647130) (:by |root) (:id |Hke0sXXahZleaf) (:text |<>) (:type :leaf)
                      |r $ {} (:at 1507830487639) (:by |root) (:id |Syg1jQp2-) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1507830489506) (:by |root) (:id |rygxkjQTh-) (:text |str) (:type :leaf)
                          |L $ {} (:at 1507830563403) (:by |root) (:id |B1MJsXa2Z) (:text ||Length:) (:type :leaf)
                          |T $ {} (:at 1619669800619) (:by |B1y7Rc-Zz) (:id |rJ-2mQp2b) (:text |size) (:type :leaf)
                      |v $ {} (:at 1507828651981) (:by |root) (:id |S1xQ3XQThW) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1507828652616) (:by |root) (:id |rkS3QQpnZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507828654134) (:by |root) (:id |rkS3QQpnZleaf) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1507828656265) (:by |root) (:id |ryWU277ahb) (:text |8) (:type :leaf)
                      |r $ {} (:at 1507828656797) (:by |root) (:id |SJ-d2Q7p3b) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1507828657608) (:by |root) (:id |B19hX76hW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507830450172) (:by |root) (:id |B19hX76hWleaf) (:text |span) (:type :leaf)
                      |j $ {} (:at 1507828660058) (:by |root) (:id |ByQhn77a3Z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507828660406) (:by |root) (:id |H1z327Qph-) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1507828660655) (:by |root) (:id |ByxpnmQa2-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507828662301) (:by |root) (:id |BJpnQX6nb) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1507828665664) (:by |root) (:id |HkVCnX7T2Z) (:text ||Reset) (:type :leaf)
                          |n $ {} (:at 1507828771973) (:by |root) (:id |HyxnXN763W) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819301235) (:by |B1y7Rc-Zz) (:id |HyxnXN763Wleaf) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1657819298353) (:by |B1y7Rc-Zz) (:id |S1O4C9XT2-) (:text |css-click) (:type :leaf)
                          |r $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                              |b $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |b $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |h $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |b $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |:reel/reset) (:type :leaf)
                                      |h $ {} (:at 1657819308390) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                  |xT $ {} (:at 1507828690995) (:by |root) (:id |B1go07QThW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507828691717) (:by |root) (:id |B1go07QThWleaf) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1507828692530) (:by |root) (:id |Syg2AXmT2-) (:text |8) (:type :leaf)
                      |r $ {} (:at 1507828693029) (:by |root) (:id |Byl6CXXahZ) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1507828657608) (:by |root) (:id |Syxm07XpnZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507830455176) (:by |root) (:id |B19hX76hWleaf) (:text |span) (:type :leaf)
                      |j $ {} (:at 1507828660058) (:by |root) (:id |ByQhn77a3Z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507828660406) (:by |root) (:id |H1z327Qph-) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1507828660655) (:by |root) (:id |ByxpnmQa2-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507828662301) (:by |root) (:id |BJpnQX6nb) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1507828686464) (:by |root) (:id |HkVCnX7T2Z) (:text ||Merge) (:type :leaf)
                          |n $ {} (:at 1657819327758) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819327758) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657819327758) (:by |B1y7Rc-Zz) (:text |css-click) (:type :leaf)
                          |t $ {} (:at 1507828670352) (:by |root) (:id |HkWUpQ76hW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819311985) (:by |B1y7Rc-Zz) (:id |ryeLp7m6hW) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1507828672178) (:by |root) (:id |HyVdTQmanW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828672472) (:by |root) (:id |SymOamm62Z) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1507828673101) (:by |root) (:id |rkeF6mQTnb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828673612) (:by |root) (:id |B1tpQQT2W) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1507828674547) (:by |root) (:id |H1g9T7Q63Z) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1507828675771) (:by |root) (:id |HygnamXpnb) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828676567) (:by |root) (:id |HygnamXpnbleaf) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1507828689327) (:by |root) (:id |rklppQQpn-) (:text |:reel/merge) (:type :leaf)
                                      |r $ {} (:at 1507828680980) (:by |root) (:id |r14l0m7ph-) (:text |nil) (:type :leaf)
                  |yD $ {} (:at 1507828690995) (:by |root) (:id |HyZ8J9Bf9M) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507828691717) (:by |root) (:id |B1go07QThWleaf) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1507828692530) (:by |root) (:id |Syg2AXmT2-) (:text |8) (:type :leaf)
                      |r $ {} (:at 1507828693029) (:by |root) (:id |Byl6CXXahZ) (:text |nil) (:type :leaf)
                  |yT $ {} (:at 1507828657608) (:by |root) (:id |r1EkqBMqG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507830455176) (:by |root) (:id |B19hX76hWleaf) (:text |span) (:type :leaf)
                      |j $ {} (:at 1507828660058) (:by |root) (:id |ByQhn77a3Z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507828660406) (:by |root) (:id |H1z327Qph-) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1507828660655) (:by |root) (:id |ByxpnmQa2-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507828662301) (:by |root) (:id |BJpnQX6nb) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1521797627988) (:by |root) (:id |HkVCnX7T2Z) (:text ||Persist) (:type :leaf)
                          |n $ {} (:at 1657819329109) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819329109) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657819329109) (:by |B1y7Rc-Zz) (:text |css-click) (:type :leaf)
                          |t $ {} (:at 1507828670352) (:by |root) (:id |HkWUpQ76hW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819319007) (:by |B1y7Rc-Zz) (:id |ryeLp7m6hW) (:text |:on-click) (:type :leaf)
                              |r $ {} (:at 1584876337457) (:by |B1y7Rc-Zz) (:id |SKfuroWm7T) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584876338074) (:by |B1y7Rc-Zz) (:id |E9K1VvUv_w) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584876338556) (:by |B1y7Rc-Zz) (:id |MeCyL-2OuJ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876338883) (:by |B1y7Rc-Zz) (:id |aKcKeQjKWZ) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584876339471) (:by |B1y7Rc-Zz) (:id |yegpSeO2om) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1521797602013) (:by |root) (:id |rJcycSfcM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584876336821) (:by |B1y7Rc-Zz) (:id |rJcycSfcMleaf) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1521797612607) (:by |root) (:id |SkZe9Hf5z) (:text |:effect/persist) (:type :leaf)
                                      |r $ {} (:at 1521797613900) (:by |root) (:id |BJxSxqrM5z) (:text |nil) (:type :leaf)
          |css-click $ {} (:at 1507830476140) (:by |root) (:id |r1gE05762-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819288670) (:by |B1y7Rc-Zz) (:id |BybEAq762b) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1657819287252) (:by |B1y7Rc-Zz) (:text |css-click) (:type :leaf)
              |r $ {} (:at 1657819289631) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1657819290424) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1657819290885) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1657819292339) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1507830476140) (:by |root) (:id |rkQ4R5XT3b) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830476140) (:by |root) (:id |HyVNA9Q63b) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1507830476140) (:by |root) (:id |HJrNCcXan-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830476140) (:by |root) (:id |HkIE0qQp3-) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1507830476140) (:by |root) (:id |ryPVCc7p3W) (:text |:pointer) (:type :leaf)
                          |r $ {} (:at 1507830503241) (:by |root) (:id |B1x1loQpnW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830504703) (:by |root) (:id |B1x1loQpnWleaf) (:text |:color) (:type :leaf)
                              |j $ {} (:at 1507830505262) (:by |root) (:id |Bkz-xi7T2W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830505953) (:by |root) (:id |Bybbli7anZ) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1507830508223) (:by |root) (:id |HkzMgjQT2-) (:text |200) (:type :leaf)
                                  |r $ {} (:at 1507830508713) (:by |root) (:id |SJZVeima3b) (:text |80) (:type :leaf)
                                  |v $ {} (:at 1507830514472) (:by |root) (:id |Bk-HljQahZ) (:text |80) (:type :leaf)
                          |v $ {} (:at 1507830515446) (:by |root) (:id |rJbixo7T3W) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830517136) (:by |root) (:id |rJbixo7T3Wleaf) (:text |:font-size) (:type :leaf)
                              |j $ {} (:at 1507830534305) (:by |root) (:id |SJmpxiXT2W) (:text |:12) (:type :leaf)
                          |x $ {} (:at 1507830521076) (:by |root) (:id |rJbZbjXa3-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830524822) (:by |root) (:id |rJbZbjXa3-leaf) (:text |:text-decoration) (:type :leaf)
                              |j $ {} (:at 1507830529129) (:by |root) (:id |rkMrbjm6hZ) (:text |:underline) (:type :leaf)
          |css-reel $ {} (:at 1657819349775) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657819351131) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657819349775) (:by |B1y7Rc-Zz) (:text |css-reel) (:type :leaf)
              |h $ {} (:at 1657819349775) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657819352886) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1657819354212) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657819357596) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |h $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:absolute) (:type :leaf)
                          |l $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:bottom) (:type :leaf)
                              |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |o $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:right) (:type :leaf)
                              |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |q $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                              |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |12) (:type :leaf)
                          |s $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                              |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                  |l $ {} (:at 1657819358068) (:by |B1y7Rc-Zz) (:text |60) (:type :leaf)
        :ns $ {} (:at 1507828612052) (:by |root) (:id |Bkl3FQ7a3W) (:type :expr)
          :data $ {}
            |T $ {} (:at 1507828612052) (:by |root) (:id |B1bnKQ763Z) (:text |ns) (:type :leaf)
            |j $ {} (:at 1507828612052) (:by |root) (:id |ByG2tQQa2Z) (:text |cumulo-reel.comp.reel) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1614311744065) (:by |B1y7Rc-Zz) (:id |HkY4z5IllCHb) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |n $ {} (:at 1657819370728) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819374829) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657819375336) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657819375951) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547434475) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rJyPgqhJM) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540962188403) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |w $ {} (:at 1507828743963) (:by |root) (:id |SJkM4X63-) (:text |button) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                |xT $ {} (:at 1657819380160) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657819381967) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657819383720) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657819383920) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657819385267) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |y $ {} (:at 1507828750778) (:by |root) (:id |BJDMV7T3b) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507828759087) (:by |root) (:id |BkMDMNmT2-) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507828759839) (:by |root) (:id |HyQyXVmp2Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828760096) (:by |root) (:id |BymgX4Q63-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507828761860) (:by |root) (:id |HJZZX47T2-) (:text |=<) (:type :leaf)
        :proc $ {} (:at 1507828612052) (:by |root) (:id |H172KQ7T3-) (:type :expr)
          :data $ {}
      |cumulo-reel.core $ {}
        :defs $ {}
          |ReelState $ {} (:at 1624195889172) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1624195891799) (:by |B1y7Rc-Zz) (:text |defrecord) (:type :leaf)
              |j $ {} (:at 1624195889172) (:by |B1y7Rc-Zz) (:text |ReelState) (:type :leaf)
              |r $ {} (:at 1624195893458) (:by |B1y7Rc-Zz) (:text |:base) (:type :leaf)
              |v $ {} (:at 1624195895208) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
              |x $ {} (:at 1624195898729) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
              |y $ {} (:at 1624195901174) (:by |B1y7Rc-Zz) (:text |:merged?) (:type :leaf)
          |play-records $ {} (:at 1507807777029) (:by |root) (:id |HkWFmGChhZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1507807777029) (:by |root) (:id |S1fFXMA3nW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1507807777029) (:by |root) (:id |SJXF7GA3nW) (:text |play-records) (:type :leaf)
              |r $ {} (:at 1507807777029) (:by |root) (:id |HyVKmfRn2W) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507807852850) (:by |root) (:id |ByZq7zAh2-) (:text |db) (:type :leaf)
                  |j $ {} (:at 1507807782382) (:by |root) (:id |BJM6mfC22Z) (:text |records) (:type :leaf)
                  |r $ {} (:at 1507807783430) (:by |root) (:id |B18A7fC33b) (:text |updater) (:type :leaf)
              |v $ {} (:at 1507807786831) (:by |root) (:id |BkeXNMRh3b) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507807787293) (:by |root) (:id |BkeXNMRh3bleaf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1507807788493) (:by |root) (:id |B14NNGC23b) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624104902155) (:by |B1y7Rc-Zz) (:id |Skm7NMR2hZ) (:text |&list:empty?) (:type :leaf)
                      |j $ {} (:at 1507807791910) (:by |root) (:id |B1eSEMR3hW) (:text |records) (:type :leaf)
                  |p $ {} (:at 1507808288838) (:by |root) (:id |rJOQE0nh-) (:text |db) (:type :leaf)
                  |v $ {} (:at 1507807796352) (:by |root) (:id |r1VhEMAnh-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614345816972) (:by |B1y7Rc-Zz) (:id |S1X2VfCnn-) (:text |let-sugar) (:type :leaf)
                      |j $ {} (:at 1507807831985) (:by |root) (:id |SJlPM0h3-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507807804774) (:by |root) (:id |SyHSM0n2W) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507807804933) (:by |root) (:id |S1xrBz033b) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507807805634) (:by |root) (:id |HJzVBGAhhZ) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1507807806577) (:by |root) (:id |r1b8BzChnZ) (:text |op) (:type :leaf)
                                  |r $ {} (:at 1507807809537) (:by |root) (:id |ByWwHMR3nZ) (:text |op-data) (:type :leaf)
                                  |v $ {} (:at 1507807810527) (:by |root) (:id |Ske5BG02nW) (:text |sid) (:type :leaf)
                                  |x $ {} (:at 1507807812164) (:by |root) (:id |S1lsSzCn3b) (:text |op-id) (:type :leaf)
                                  |y $ {} (:at 1507807814137) (:by |root) (:id |BkaSzAn2W) (:text |op-time) (:type :leaf)
                              |j $ {} (:at 1507807815913) (:by |root) (:id |H1lxLM022b) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507807821680) (:by |root) (:id |Byg8fA2hZ) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1507808245880) (:by |root) (:id |BJZL8G0h3-) (:text |records) (:type :leaf)
                          |j $ {} (:at 1507807833581) (:by |root) (:id |HyMwz0nhW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507807850908) (:by |root) (:id |HyMwz0nhWleaf) (:text |next-db) (:type :leaf)
                              |j $ {} (:at 1507807844750) (:by |root) (:id |B1gTwM0h3b) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507807845576) (:by |root) (:id |Hk6DzA32Z) (:text |updater) (:type :leaf)
                                  |j $ {} (:at 1507807849172) (:by |root) (:id |SkxRvMC3h-) (:text |db) (:type :leaf)
                                  |r $ {} (:at 1507807858780) (:by |root) (:id |B1sOGAhnb) (:text |op) (:type :leaf)
                                  |v $ {} (:at 1507807859973) (:by |root) (:id |ByzidGR3nW) (:text |op-data) (:type :leaf)
                                  |x $ {} (:at 1507807860721) (:by |root) (:id |S1m3_GC3hW) (:text |sid) (:type :leaf)
                                  |y $ {} (:at 1507807862424) (:by |root) (:id |SkWTOGA22b) (:text |op-id) (:type :leaf)
                                  |yT $ {} (:at 1507807864755) (:by |root) (:id |Bk1KzCnh-) (:text |op-time) (:type :leaf)
                      |r $ {} (:at 1507807867422) (:by |root) (:id |BkfmKMR2hZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507807869747) (:by |root) (:id |BkfmKMR2hZleaf) (:text |recur) (:type :leaf)
                          |j $ {} (:at 1507807873195) (:by |root) (:id |rJwKGRhhZ) (:text |next-db) (:type :leaf)
                          |r $ {} (:at 1507807873961) (:by |root) (:id |rJcKM0n3W) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507808240025) (:by |root) (:id |SJGFtG0nhb) (:text |rest) (:type :leaf)
                              |j $ {} (:at 1507807875952) (:by |root) (:id |SJ-sFz023Z) (:text |records) (:type :leaf)
                          |v $ {} (:at 1507807877826) (:by |root) (:id |ryx6YGAhhb) (:text |updater) (:type :leaf)
          |reel-reducer $ {} (:at 1507807571921) (:by |root) (:id |r1gnUZR3nZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1507807571921) (:by |root) (:id |SJW2LW032b) (:text |defn) (:type :leaf)
              |j $ {} (:at 1507807571921) (:by |root) (:id |HyGh8-CnnW) (:text |reel-reducer) (:type :leaf)
              |r $ {} (:at 1507807571921) (:by |root) (:id |ByQh8bRnhb) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507808567695) (:by |root) (:id |Hy1HSAh2b) (:text |reel) (:type :leaf)
                  |T $ {} (:at 1507807899128) (:by |root) (:id |Hy0cMA2h-) (:text |updater) (:type :leaf)
                  |r $ {} (:at 1507807901735) (:by |root) (:id |S1z4szC3nZ) (:text |op) (:type :leaf)
                  |v $ {} (:at 1507807909927) (:by |root) (:id |rk3ifA2hW) (:text |op-data) (:type :leaf)
                  |x $ {} (:at 1507807911186) (:by |root) (:id |BymCszC2n-) (:text |sid) (:type :leaf)
                  |y $ {} (:at 1507807913048) (:by |root) (:id |HkGJ3f0hnb) (:text |op-id) (:type :leaf)
                  |yT $ {} (:at 1507807916081) (:by |root) (:id |BJ--hzA22b) (:text |op-time) (:type :leaf)
                  |yj $ {} (:at 1624107662759) (:by |B1y7Rc-Zz) (:text |?) (:type :leaf)
                  |yr $ {} (:at 1624107664091) (:by |B1y7Rc-Zz) (:text |dev?) (:type :leaf)
              |v $ {} (:at 1507807917563) (:by |root) (:id |BJIhzAn3Z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507807935016) (:by |root) (:id |BJIhzAn3Zleaf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1507807935250) (:by |root) (:id |ByGPpMCh3-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614312322478) (:by |B1y7Rc-Zz) (:id |HybwaMAnnW) (:text |starts-with?) (:type :leaf)
                      |j $ {} (:at 1507807943117) (:by |root) (:id |HJbyAGC23-) (:text |op) (:type :leaf)
                      |r $ {} (:at 1636714022767) (:by |B1y7Rc-Zz) (:id |B1eERf0nnZ) (:text |:reel/) (:type :leaf)
                  |r $ {} (:at 1507807958585) (:by |root) (:id |r1kJXA23b) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807959398) (:by |root) (:id |r1kJXA23bleaf) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1507807960851) (:by |root) (:id |rkx1QR3h-) (:text |reel) (:type :leaf)
                      |r $ {} (:at 1507808089496) (:by |root) (:id |HJWWDXR23-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1624104684783) (:by |B1y7Rc-Zz) (:id |ryxWwXCh2Z) (:text |case-default) (:type :leaf)
                          |j $ {} (:at 1507808117022) (:by |root) (:id |BkeqdmAnn-) (:text |op) (:type :leaf)
                          |n $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                              |j $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:text "||Unknown op:") (:type :leaf)
                                  |r $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |r $ {} (:at 1624104685647) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                          |r $ {} (:at 1507808117325) (:by |root) (:id |ry7Tu7CnnZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507808122298) (:by |root) (:id |SJzT_XRh2-) (:text |:reel/reset) (:type :leaf)
                              |j $ {} (:at 1507808145301) (:by |root) (:id |BkZtcm033Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507808146428) (:by |root) (:id |Syxtc7R3hb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1507808149920) (:by |root) (:id |BklR57C2n-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507808152469) (:by |root) (:id |rJR5X02h-) (:text |:records) (:type :leaf)
                                      |j $ {} (:at 1507808153153) (:by |root) (:id |rylWsXChnb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1507808153345) (:by |root) (:id |S1Wim0n2b) (:text |[]) (:type :leaf)
                                  |r $ {} (:at 1507808155583) (:by |root) (:id |SyNsQAhn-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507808157622) (:by |root) (:id |SyNsQAhn-leaf) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1507808157976) (:by |root) (:id |HJZIsQAnnW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1507808161024) (:by |root) (:id |B1gLo7R3h-) (:text |:base) (:type :leaf)
                                          |j $ {} (:at 1507808163136) (:by |root) (:id |HJmKsmCn2b) (:text |reel) (:type :leaf)
                          |v $ {} (:at 1507808122933) (:by |root) (:id |Bkx7tQCnhZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507808129848) (:by |root) (:id |Bkx7tQCnhZleaf) (:text |:reel/merge) (:type :leaf)
                              |j $ {} (:at 1507808164979) (:by |root) (:id |BkWTsmAn3W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507808166682) (:by |root) (:id |Skl6iX02nW) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1507808167423) (:by |root) (:id |HJMJ3Q022b) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507808168948) (:by |root) (:id |SkZknQR2n-) (:text |:records) (:type :leaf)
                                      |j $ {} (:at 1507808169302) (:by |root) (:id |HkNZ3QAh2W) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1507808169516) (:by |root) (:id |BJ7-3QR3h-) (:text |[]) (:type :leaf)
                                  |r $ {} (:at 1507808170611) (:by |root) (:id |SkmnQA22W) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507808175078) (:by |root) (:id |SkmnQA22Wleaf) (:text |:base) (:type :leaf)
                                      |j $ {} (:at 1507808176231) (:by |root) (:id |HyluhQRnhZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1507808177447) (:by |root) (:id |BJd3Q0nhW) (:text |:db) (:type :leaf)
                                          |j $ {} (:at 1507808178557) (:by |root) (:id |S192mChhb) (:text |reel) (:type :leaf)
                                  |v $ {} (:at 1525016595808) (:by |root) (:id |r1xhzOvmTG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525016599243) (:by |root) (:id |r1xhzOvmTGleaf) (:text |:merged?) (:type :leaf)
                                      |j $ {} (:at 1525016599965) (:by |root) (:id |Bk-1mdw7pz) (:text |true) (:type :leaf)
                  |v $ {} (:at 1507807961659) (:by |root) (:id |SyfyXC32W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807966627) (:by |root) (:id |SyfyXC32Wleaf) (:text |let) (:type :leaf)
                      |j $ {} (:at 1507808005428) (:by |root) (:id |Hkp-Q03nb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507808005565) (:by |root) (:id |By0WQRn2Z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507808010547) (:by |root) (:id |B1ePJXR2nZ) (:text |msg-pack) (:type :leaf)
                              |j $ {} (:at 1507808010979) (:by |root) (:id |B1ZQfX02nb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507808011370) (:by |root) (:id |HJe7fmA3hZ) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1507808012306) (:by |root) (:id |BkNMQCnnW) (:text |op) (:type :leaf)
                                  |r $ {} (:at 1507808015291) (:by |root) (:id |BJHf7R23W) (:text |op-data) (:type :leaf)
                                  |v $ {} (:at 1507808016704) (:by |root) (:id |H17wG7022-) (:text |sid) (:type :leaf)
                                  |x $ {} (:at 1507808017548) (:by |root) (:id |rJetGQ0hn-) (:text |op-id) (:type :leaf)
                                  |y $ {} (:at 1507808018926) (:by |root) (:id |SJeqGmRn3W) (:text |op-time) (:type :leaf)
                      |r $ {} (:at 1507808021414) (:by |root) (:id |SkgTfXR22Z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507808022031) (:by |root) (:id |SkgTfXR22Zleaf) (:text |->) (:type :leaf)
                          |j $ {} (:at 1507808023769) (:by |root) (:id |HyW0fXAnhW) (:text |reel) (:type :leaf)
                          |r $ {} (:at 1507808024071) (:by |root) (:id |r1mgmXA3hb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507808024885) (:by |root) (:id |BJfx7XA2hb) (:text |update) (:type :leaf)
                              |j $ {} (:at 1507808027711) (:by |root) (:id |Hkz-77C2hb) (:text |:records) (:type :leaf)
                              |r $ {} (:at 1507808028155) (:by |root) (:id |SkZNQXRn2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507808028588) (:by |root) (:id |BJl4mQR33-) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1507808028861) (:by |root) (:id |HyWr7XRn2b) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507808029976) (:by |root) (:id |B1eHmmAnnb) (:text |records) (:type :leaf)
                                  |r $ {} (:at 1521911568720) (:by |root) (:id |HkgKGvWE5z) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1521911569290) (:by |root) (:id |Bk-FGwW4qG) (:text |if) (:type :leaf)
                                      |L $ {} (:at 1521911570068) (:by |root) (:id |SJVKMwZVqz) (:text |dev?) (:type :leaf)
                                      |T $ {} (:at 1507808030991) (:by |root) (:id |S1DQQ032W) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1507808031959) (:by |root) (:id |S1DQQ032Wleaf) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1507808300376) (:by |root) (:id |rJxOQQAnhZ) (:text |records) (:type :leaf)
                                          |r $ {} (:at 1507808036781) (:by |root) (:id |S197XCnhb) (:text |msg-pack) (:type :leaf)
                                      |j $ {} (:at 1521911573499) (:by |root) (:id |SkifvZEqM) (:text |records) (:type :leaf)
                          |v $ {} (:at 1507808039342) (:by |root) (:id |B1WkE7032-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507808047479) (:by |root) (:id |rJv47R23W) (:text |assoc) (:type :leaf)
                              |j $ {} (:at 1507808049717) (:by |root) (:id |Hku4Q02nb) (:text |:db) (:type :leaf)
                              |r $ {} (:at 1507808056967) (:by |root) (:id |B1x-B7Ch3W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507808057996) (:by |root) (:id |r1WSmR3hZ) (:text |updater) (:type :leaf)
                                  |j $ {} (:at 1507808059894) (:by |root) (:id |S1xVBXRnhZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1624195972864) (:by |B1y7Rc-Zz) (:id |ry7HmR3hZ) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1507808061864) (:by |root) (:id |B1SB7Rh2b) (:text |reel) (:type :leaf)
                                      |r $ {} (:at 1624104794110) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                  |r $ {} (:at 1507808063495) (:by |root) (:id |SkePSQAh2Z) (:text |op) (:type :leaf)
                                  |v $ {} (:at 1507808065417) (:by |root) (:id |HyOHm0nhb) (:text |op-data) (:type :leaf)
                                  |x $ {} (:at 1507808066276) (:by |root) (:id |rkIFSmAh2-) (:text |sid) (:type :leaf)
                                  |y $ {} (:at 1507808068339) (:by |root) (:id |Byz5S7An2b) (:text |op-id) (:type :leaf)
                                  |yT $ {} (:at 1507808069665) (:by |root) (:id |B1aBQAh2-) (:text |op-time) (:type :leaf)
          |reel-schema $ {} (:at 1507807587733) (:by |root) (:id |BJx2PZCh2b) (:type :expr)
            :data $ {}
              |T $ {} (:at 1507807589878) (:by |root) (:id |HkZ3PW0hnZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1507807587733) (:by |root) (:id |ByG3DbC3n-) (:text |reel-schema) (:type :leaf)
              |r $ {} (:at 1507807587733) (:by |root) (:id |SkX2vb03n-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624195884697) (:by |B1y7Rc-Zz) (:id |HJy_WAnh-) (:text |%{}) (:type :leaf)
                  |V $ {} (:at 1624195887635) (:by |B1y7Rc-Zz) (:text |ReelState) (:type :leaf)
                  |X $ {} (:at 1507807600445) (:by |root) (:id |SkZdOWChnb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807601764) (:by |root) (:id |SkZdOWChnbleaf) (:text |:base) (:type :leaf)
                      |j $ {} (:at 1507807603679) (:by |root) (:id |Hy-5OZ022b) (:text |nil) (:type :leaf)
                  |b $ {} (:at 1507807595904) (:by |root) (:id |ryNObRnnZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507808188063) (:by |root) (:id |ryNObRnnZleaf) (:text |:db) (:type :leaf)
                      |j $ {} (:at 1507807599626) (:by |root) (:id |B1I_W022Z) (:text |nil) (:type :leaf)
                  |j $ {} (:at 1507807592228) (:by |root) (:id |BJZe_bC32b) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807593749) (:by |root) (:id |B1fy_WAhnZ) (:text |:records) (:type :leaf)
                      |j $ {} (:at 1507807594535) (:by |root) (:id |rJXubRnnW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507807674382) (:by |root) (:id |Hy-GObA3hW) (:text |[]) (:type :leaf)
                  |r $ {} (:at 1507807605053) (:by |root) (:id |S1-pdbR22W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807606629) (:by |root) (:id |S1-pdbR22Wleaf) (:text |:merged?) (:type :leaf)
                      |j $ {} (:at 1507807608050) (:by |root) (:id |Hyx1F-AnhW) (:text |false) (:type :leaf)
          |refresh-reel $ {} (:at 1507807585218) (:by |root) (:id |S1eKPWAn2Z) (:type :expr)
            :data $ {}
              |T $ {} (:at 1507807585218) (:by |root) (:id |ryWFw-Ch2W) (:text |defn) (:type :leaf)
              |j $ {} (:at 1507807585218) (:by |root) (:id |HkztP-R2nZ) (:text |refresh-reel) (:type :leaf)
              |r $ {} (:at 1507807585218) (:by |root) (:id |r1XFPbRnnW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507807707677) (:by |root) (:id |SylfJfRn3Z) (:text |reel) (:type :leaf)
                  |j $ {} (:at 1507807708866) (:by |root) (:id |SygV1G02hW) (:text |base) (:type :leaf)
                  |r $ {} (:at 1507807711602) (:by |root) (:id |rkxHyf023-) (:text |updater) (:type :leaf)
              |v $ {} (:at 1507807713224) (:by |root) (:id |HJY1GC23b) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507807713873) (:by |root) (:id |HJY1GC23bleaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1507807714088) (:by |root) (:id |BkQcJM023W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807716280) (:by |root) (:id |rkG2yzCh2Z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507807720593) (:by |root) (:id |SyM9yfC33-) (:text |next-base) (:type :leaf)
                          |j $ {} (:at 1507807722030) (:by |root) (:id |BJxGez033Z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507807722454) (:by |root) (:id |S1fgfRn3Z) (:text |if) (:type :leaf)
                              |j $ {} (:at 1507807722676) (:by |root) (:id |HkQeMRn2Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1624470595986) (:by |B1y7Rc-Zz) (:id |HymGxMC2n-) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1507807724899) (:by |root) (:id |ByeNeMA22b) (:text |reel) (:type :leaf)
                                  |r $ {} (:at 1624104824681) (:by |B1y7Rc-Zz) (:text |:merged?) (:type :leaf)
                              |r $ {} (:at 1507807726560) (:by |root) (:id |SJvgMAnn-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507807727417) (:by |root) (:id |Hkl8xMChhb) (:text |:base) (:type :leaf)
                                  |j $ {} (:at 1507807728386) (:by |root) (:id |HyOlMAhnb) (:text |reel) (:type :leaf)
                              |v $ {} (:at 1507807730618) (:by |root) (:id |B1eYeM0nhW) (:text |base) (:type :leaf)
                  |r $ {} (:at 1507807733505) (:by |root) (:id |HJZpgGC22W) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507807734158) (:by |root) (:id |HJZpgGC22Wleaf) (:text |->) (:type :leaf)
                      |j $ {} (:at 1507807735188) (:by |root) (:id |Sk-AlGR22Z) (:text |reel) (:type :leaf)
                      |r $ {} (:at 1507807735526) (:by |root) (:id |Skg-M022Z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507807736798) (:by |root) (:id |HkXJZzA23-) (:text |assoc) (:type :leaf)
                          |j $ {} (:at 1507807737680) (:by |root) (:id |Hkl--GR33-) (:text |:base) (:type :leaf)
                          |r $ {} (:at 1507807741059) (:by |root) (:id |BybGWGRn2Z) (:text |next-base) (:type :leaf)
                      |v $ {} (:at 1507807741935) (:by |root) (:id |BkxUZfC2hb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507807743274) (:by |root) (:id |BkxUZfC2hbleaf) (:text |assoc) (:type :leaf)
                          |j $ {} (:at 1507808074280) (:by |root) (:id |B1MP-fRh2b) (:text |:db) (:type :leaf)
                          |r $ {} (:at 1507807746971) (:by |root) (:id |SJXjZGC23W) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507807749581) (:by |root) (:id |H1fsZGR3h-) (:text |play-records) (:type :leaf)
                              |j $ {} (:at 1507807755170) (:by |root) (:id |rJ--zfCh3b) (:text |next-base) (:type :leaf)
                              |r $ {} (:at 1507807763798) (:by |root) (:id |BkgnzGCn2b) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507807765879) (:by |root) (:id |SkYfMCn3Z) (:text |:records) (:type :leaf)
                                  |j $ {} (:at 1507807767222) (:by |root) (:id |Syf0fM03nZ) (:text |reel) (:type :leaf)
                              |v $ {} (:at 1507807769477) (:by |root) (:id |r1ggmfRnh-) (:text |updater) (:type :leaf)
        :ns $ {} (:at 1507807568560) (:by |root) (:id |B1eF8-Ah2Z) (:type :expr)
          :data $ {}
            |T $ {} (:at 1507807568560) (:by |root) (:id |HkZtLWC33b) (:text |ns) (:type :leaf)
            |j $ {} (:at 1507807568560) (:by |root) (:id |S1fFU-02h-) (:text |cumulo-reel.core) (:type :leaf)
        :proc $ {} (:at 1507807568560) (:by |root) (:id |S1QY8b0n3Z) (:type :expr)
          :data $ {}
      |cumulo-reel.schema $ {}
        :defs $ {}
          |database $ {} (:at 1500541255553) (:by nil) (:id |S1c5lLblCBZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BkjcxUbgAH-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ryhqlIZxRSb) (:text |database) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |S169e8WeAH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJCqxL-gASW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |SJJolIbeArb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkgjlUZxArb) (:text |:sessions) (:type :leaf)
                      |j $ {} (:at 1538886498428) (:by |root) (:id |RC6TbFtiBd) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886499001) (:by |root) (:id |u-mi7TeZu) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886500387) (:by |root) (:id |DUAFs31KF4) (:text |session) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |H1WsxIbeCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |r1GseIWx0S-) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Symjg8bg0BZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ4ix8beAB-) (:text |:users) (:type :leaf)
                      |j $ {} (:at 1538886501540) (:by |root) (:id |Rx2kJHudR) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886502106) (:by |root) (:id |-QMTWQpKkD) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886502625) (:by |root) (:id |2DKXhsjt7P) (:text |user) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |r1BieLbe0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |BJUjl8bg0SW) (:text |{}) (:type :leaf)
          |router $ {} (:at 1500541255553) (:by nil) (:id |BJaugUbeABb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJR_lI-xRBZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |BJyFl8-l0B-) (:text |router) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |HyeKlU-gCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJbYl8bxCr-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyzFe8blRHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJQtlI-x0rW) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Bk4teL-lRS-) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |SyrYlL-lRBZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1IYxUWlCBW) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |SJPKlIbeCBZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |Hy_tgU-eAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rJtFx8ZeRr-) (:text |:data) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |SJ9KlUZeCSb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |HJstxIbeAS-) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |Sk2YxIbg0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1aYe8Wg0rW) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1CteIWlCrZ) (:text |nil) (:type :leaf)
          |session $ {} (:at 1500541255553) (:by nil) (:id |HyiseLZlCB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |S1hseLZlCBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |rJpslIZxAHW) (:text |session) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkCilU-eCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B11neI-gAH-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |Byx2e8-e0rZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rybnxUWe0BZ) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryf2xIbxAHZ) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1m2eIbxAHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S143xIblCrZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |S1ShgL-l0rZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |HJU2gU-lRrb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyPheIZxCSZ) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1_hx8ZeRrW) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |rkthlU-gCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HycngIbeCrb) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1538886507054) (:by |root) (:id |6GeGDz-Mrh) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1538886507646) (:by |root) (:id |sM5ZFH9Ojs) (:text |do) (:type :leaf)
                          |L $ {} (:at 1538886508475) (:by |root) (:id |Ot9nzPxAuB) (:text |router) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |HyjhgL-xArW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy23gUZgRH-) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |H1T2eUZeAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1C3lUWgCHb) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJkalLZxArW) (:text |:home) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HyxTeL-gRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1baxLZeCr-) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |SyGpe8WgAHZ) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |rk7TlUWl0SW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bk4pe8ZgCBZ) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJB6l8-g0H-) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |SyL6eIbgRr-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529230759501) (:by |root) (:id |HyPTeIZx0SZ) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1529230760396) (:by |root) (:id |HJGlhSh7Z7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529230760716) (:by |root) (:id |SyWg2HnQZQ) (:text |{}) (:type :leaf)
          |user $ {} (:at 1500541255553) (:by nil) (:id |BJKwxIbx0rZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy9weU-x0SW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1jDx8bx0SZ) (:text |user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkhPxUWx0r-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkpPl8ZlRrW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HkAPxIZxRB-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |ryJul8beCrb) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJlOxIWgRBW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |HkbdlLZlRSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |r1M_gIWxCSZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rk7_eIbxRB-) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |B14ug8bg0rb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HySOgLWeASW) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ByIue8Ze0B-) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |H1PulIbx0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyudlUWeCBW) (:text |:avatar) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rJYdlLbe0BW) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |HJcOxIbgAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1jOeUbxArW) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hynug8bxCSZ) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |B1Swe8bxAr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |Bk8PgIbeCr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |SyDDxIWeRrb) (:text |cumulo-reel.schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SJuPg8bxRH-) (:type :expr)
          :data $ {}
      |cumulo-reel.style $ {}
        :defs $ {}
          |link $ {} (:at 1519367966237) (:by |root) (:id |B1eU7P4avf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1519367970413) (:by |root) (:id |SyWUQP46vz) (:text |def) (:type :leaf)
              |j $ {} (:at 1519367966237) (:by |root) (:id |H1MImvEaPG) (:text |link) (:type :leaf)
              |r $ {} (:at 1519367966237) (:by |root) (:id |BkX8QDNpPM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519367974187) (:by |root) (:id |HJAQwV6Df) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1519367974501) (:by |root) (:id |rkQAmw4pPG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367980887) (:by |root) (:id |B1M0QDE6Dz) (:text |:text-decoration) (:type :leaf)
                      |j $ {} (:at 1519367984967) (:by |root) (:id |BkQSEDNTwf) (:text |:underline) (:type :leaf)
                  |r $ {} (:at 1519367985371) (:by |root) (:id |S1QYVP4pPG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367998049) (:by |root) (:id |S1QYVP4pPGleaf) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1519367996458) (:by |root) (:id |HkzfrDEaPf) (:text |:pointer) (:type :leaf)
                  |v $ {} (:at 1519368028360) (:by |root) (:id |Bk-Nvv4aPz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368029579) (:by |root) (:id |Bk-Nvv4aPzleaf) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1519368031142) (:by |root) (:id |SylwPvNTvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368031562) (:by |root) (:id |rygIwwV6Df) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1519368032307) (:by |root) (:id |rkx_wPNTPz) (:text |240) (:type :leaf)
                          |r $ {} (:at 1519368032737) (:by |root) (:id |B1NOvw4pwM) (:text |80) (:type :leaf)
                          |v $ {} (:at 1519368033240) (:by |root) (:id |By-FwDEaPG) (:text |80) (:type :leaf)
                  |x $ {} (:at 1519368217607) (:by |root) (:id |SkfXu46vf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368219848) (:by |root) (:id |SkfXu46vfleaf) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1519368227853) (:by |root) (:id |rJWVXuV6wG) (:text |ui/font-fancy) (:type :leaf)
        :ns $ {} (:at 1519367963533) (:by |root) (:id |HygVXDNTvf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1519367963533) (:by |root) (:id |rkbV7wETvz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1519367963533) (:by |root) (:id |BkfNmPV6wG) (:text |cumulo-reel.style) (:type :leaf)
            |r $ {} (:at 1519368036923) (:by |root) (:id |S1fTDw4pDf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1519368038192) (:by |root) (:id |BJWpwDNavz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1519368038575) (:by |root) (:id |S1ydDETwM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368038764) (:by |root) (:id |BJSADvEpPz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1614311497578) (:by |B1y7Rc-Zz) (:id |HyfJOwN6Pf) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1519368041713) (:by |root) (:id |rkXWdwEavf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1519368041918) (:by |root) (:id |H1GzdP46Pz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1519368042785) (:by |root) (:id |HkWf_w46wf) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1519368043289) (:by |root) (:id |ryxQdvEpDM) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1519368236509) (:by |root) (:id |HJZV4OEavG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368236979) (:by |root) (:id |HJZV4OEavGleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368258261) (:by |root) (:id |BJ-HV_VTPz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1519368241627) (:by |root) (:id |Bkm_4d4pvG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368242073) (:by |root) (:id |SyW5N_46wG) (:text |ui) (:type :leaf)
        :proc $ {} (:at 1519367963533) (:by |root) (:id |SyXN7PVpPM) (:type :expr)
          :data $ {}
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
