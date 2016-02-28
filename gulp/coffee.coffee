{gulp, browserify, srcDir, mainCoffee, bundleCoffee, debug, sources, handle, buildDir, livereload} = require './common'

gulp.task 'coffee', ->
  browserify
      debug: debug
      extensions: ['.coffee']
    .add("#{srcDir}/#{mainCoffee}")
    .transform "coffeeify",
      sourceMaps: debug,
      bare: false
    .bundle()
    .on('error', handle)
    .pipe(sources bundleCoffee)
    .pipe(gulp.dest buildDir)
    .pipe(do livereload)