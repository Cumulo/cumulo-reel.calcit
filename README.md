
Cumulo Reel in calcit-js
------

> Reel library for Cumulo

### Usage

Server side:

```cirru
; create reel state
defatom *reel $ merge cumulo-reel.core/reel-schema
  {}
    :base initial-db
    :db initial-db

; "action update, `dev?` is optional, turn it on to record states"
cumulo-reel.core/reel-reducer @*reel updater op op-data sid op-id op-time dev?

; "do this on reload"
reset! *reel (cumulo-reel.core/refresh-reel @*reel initial-db updater)
```

Client side:

```cirru
cumulo-reel.comp.reel/comp-reel (:reel-length store) ({})
```

use `env=dev` to enable dev mode:

```bash
env=dev node js-out/bundle.js
```

### Workflow

https://github.com/Cumulo/cumulo-workflow

### License

MIT
