{handle}        = require './error-hendler'
srcDir          = '.'
mainCss         = 'main.css'
vendorDir       = 'node_modules'
module.exports  =
  gulp:           require 'gulp'
  browserify:     require 'browserify'
  sources:        require 'vinyl-source-stream'
  cssnano:        require 'gulp-cssnano'
  concat:         require 'gulp-concat'
  livereload:     require 'gulp-livereload'
  handle:         handle
  debug:          true
  srcDir:         srcDir
  buildDir:       'dist'
  mainCss:        mainCss
  mainCoffee:     'main.coffee'
  bundleCss:      'bundle.css'
  bundleCoffee:   'bundle.js'
  vendorDir:      vendorDir
  cssFiles: [
    "#{vendorDir}/bootstrap/dist/css/bootstrap.css"
    "#{srcDir}/#{mainCss}"
  ]