{gulp, srcDir, livereload} = require './common'

gulp.task 'watch', ['default'], ->
  livereload.listen basePath: srcDir
  gulp.watch "#{srcDir}/**/*.css", ['css']
  gulp.watch "#{srcDir}/**/*.html", ['default']
  gulp.watch "#{srcDir}/**/*.coffee", ['coffee']