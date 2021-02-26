let path = require("path");

let bundleTarget = process.env.target === "node" ? "node" : "web";
console.log("Bundle target:", bundleTarget);

let entry = process.env.entry ?? '"./client.js"';
console.log("Entry:", entry);

module.exports = {
  entry: entry,
  target: bundleTarget,
  mode: "development",
  devtool: "hidden-source-map",
  externals: {
    ws: "commonjs ws",
    shortid: "commonjs shortid",
  },
  output: {
    path: path.resolve(__dirname, "js-out/"),
    filename: "bundle.js",
  },
};
