---
title: "Cumulo Reel state and replay"
summary: "Use a deterministic reel reducer for realtime server state, reload-safe refresh, and development-time record replay"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "reel"
  - "reel-reducer"
  - "refresh-reel"
  - "time travel"
  - "replay records"
  - "realtime state"
entry_for:
  - "cumulo-reel.core/reel-reducer"
  - "cumulo-reel.core/refresh-reel"
  - "cumulo-reel.core/play-records"
---

# Cumulo Reel state and replay

`cumulo-reel` keeps the application database, a stable base state, and optional development records in one explicit value. It is the state-transition boundary for a realtime server: the updater stays pure, while WebSocket delivery, persistence, and projections remain outside the reducer.

## Create and reduce state

Start from `reel-schema`, merge in an application database, and store the result in an atom. Each dispatched operation goes through `reel-reducer` with the same updater used by replay.

```cirru.no-check
defatom *reel $ merge cumulo-reel.core/reel-schema
  {} (:base initial-db) (:db initial-db)

reset! *reel $ cumulo-reel.core/reel-reducer
  @*reel updater op op-data sid op-id op-time dev?
```

`dev?` controls record collection only. It must not change the updater's business result. Give every operation a stable id and time so logs, replay, and client observations can be correlated.

## Reload and replay

On server reload, call `refresh-reel` with the current reel, the newly loaded initial database, and the updater. This preserves the live database/replay relationship instead of replacing it with a fresh base indiscriminately.

```cirru.no-check
reset! *reel $ cumulo-reel.core/refresh-reel @*reel initial-db updater
```

Use `play-records` only for deterministic diagnostics or tests. Production recovery should load a validated persisted database first, then rebuild transient sessions and connections separately.

## Realtime application boundary

- Keep updaters pure: `(db ...) -> next-db`.
- Persist only durable application data; omit runtime sessions, socket handles, timers, and caches.
- Build per-client twigs/projections after reducing state, then calculate diff/patch outside the reducer.
- Treat revision acknowledgement and resync as transport policy, not reducer semantics.

For a complete server/client workflow, search `calcium workflow` in the application template. For persistence helpers, search `atomic write` in the `cumulo-util.calcit` module.
