
import { main_$x_, reload_$x_ } from "./js-out/cumulo-reel.app.server.js"

main_$x_();

if (module.hot) {
  module.hot.accept('./js-out/cumulo-reel.app.server.js', (main) => {
    console.log("Reload server")
    reload_$x_();
  })
}
