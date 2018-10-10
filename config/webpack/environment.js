const { environment } = require('@rails/webpacker')

// Bootstrap 3 has a dependency over jQuery:
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
      module: {
    rules: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: 'babel-loader'
    }]
  }

  })
)



module.exports = environment
