
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

use `mode=dev` to enable dev mode:

```bash
mode=dev node js-out/bundle.js
```

### Workflow

https://github.com/Cumulo/cumulo-workflow

### Development and dependency policy

Install released Calcit modules and validate both entries before sending a PR:

```bash
caps --ci
corepack enable
yarn install --immutable
calcit --check-only
calcit --entry server --check-only
calcit test
yarn compile-page
yarn vite build
yarn compile-server
```

`deps.cirru :calcit-version` and `package.json @calcit/procs` must stay on the
same Calcit release. Actions use the maintained `calcit-lang/setup-calcit@v1`
tag with explicit `calcit,caps` tools; application workflows should not pin an
opaque action commit unless they are temporarily testing an unreleased fix.

开发时先从正式 tag 安装 Calcit 模块，并同时验证 client/server entry。必须保持
`deps.cirru :calcit-version` 与 `package.json @calcit/procs` 使用同一个 Calcit
版本。Actions 通过可审计、可升级的 `calcit-lang/setup-calcit@v1` tag 安装
`calcit,caps`；除非临时验证尚未发布的修复，业务项目不应固定不透明的 commit
hash。

`caps --strict --ci` is useful for detecting stale transitive pins. A strict
failure caused by two released modules requesting different versions must be
fixed and released in those upstream modules; regular `caps --ci` reports the
same divergence and selects the highest compatible SemVer for local migration
work.

`caps --strict --ci` 用于发现传递依赖中的旧版本固定。如果两个已发布模块请求
不同版本，应在对应上游模块升级并发版；迁移期间普通 `caps --ci` 会报告同一
分歧，并选择兼容的最高 SemVer 继续验证。

### License

MIT
