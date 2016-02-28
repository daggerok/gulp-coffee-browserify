{gulp, cssFiles, bundleCss, concat, buildDir} = require './common'

console.log cssFiles

gulp.task 'css', ->
  gulp.src(cssFiles)
    .pipe(concat bundleCss)
    .pipe(gulp.dest buildDir)