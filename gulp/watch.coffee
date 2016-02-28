{gulp, srcDir} = require './common'

gulp.task 'watch', ['default', 'server'], ->
  gulp.watch "#{srcDir}/**/*.css", ['css']
  gulp.watch "#{srcDir}/**/*.html", ['default']
  gulp.watch "#{srcDir}/**/*.coffee", ['coffee']