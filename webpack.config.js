var path = require('path');
var ManifestRevisionPlugin = require('manifest-revision-webpack-plugin');

var rootAssetPath = './assets';
var buildOutputPath = './static';

module.exports = {
  entry: {
    app_js: [
      `${rootAssetPath}/index.js`,
    ]
  },
  output: {
    // path: path.resolve(__dirname + '/static'),
    path: buildOutputPath,
    publicPath: `/static/`,
    filename: '[name].js',
    chunkFilename: '[id].[chunkhash].js',
  },
  module: {
    rules: [
      {
        test: /\.html$/,
        exclude: /node_modules/,
        loader: 'file-loader?name=[name].[ext]',
      },
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: 'elm-webpack-loader?verbose=true&warn=true',
      }
    ],
    noParse: /\.elm$/,
  },
  plugins: [
    new ManifestRevisionPlugin(path.join('build', 'manifest.json'), {
      rootAssetPath: rootAssetPath,
    }),
  ],

  devServer: {
    inline: true,
    stats: { colors: true },
  }
};
