
import { main_$x_ } from "./js-out/cumulo-reel.app.client.mjs"

main_$x_()

if (import.meta.hot) {
  import.meta.hot.accept('./js-out/cumulo-reel.app.client.mjs', (main) => {
    main.reload_$x_()
  })
}
