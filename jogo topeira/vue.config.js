const { defineConfig } = require("@vue/cli-service");

const modeIndex = process.argv.indexOf("--mode");
const stage =
  modeIndex == -1 || process.argv.length == modeIndex
    ? "dev"
    : process.argv[modeIndex + 1];

module.exports = defineConfig({
  transpileDependencies: true,
  publicPath: "./",
  configureWebpack: {
    devtool: "source-map",
  },
  chainWebpack: (config) => {
    config.plugin("html").tap((args) => {
      args[0].stage = stage;
      return args;
    });
  },
});
