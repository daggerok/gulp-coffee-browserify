{gulp, srcDir, server, port} = require './common'

gulp.task 'server', ->
  gulp.src(srcDir)
    .pipe server
      port: port
      open: true
      log: 'debug'
      livereload:
        clientConsole: true