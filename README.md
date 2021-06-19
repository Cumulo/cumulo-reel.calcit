
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

; "action update"
cumulo-reel.core/reel-reducer @*reel updater op op-data sid op-id op-time

; "do this on reload"
reset! *reel (cumulo-reel.core/refresh-reel @*reel initial-db updater)
```

Client side:

```cirru
cumulo-reel.comp.reel/comp-reel (:reel-length store) ({})
```

### Workflow

https://github.com/Cumulo/cumulo-workflow

### License

MIT
