gulp = require 'gulp'
coffee = require 'gulp-coffee'
karma = require('karma').server


gulp.task 'coffee', ->
  gulp.src 'coffee/**/*.coffee'
    .pipe(coffee())
    .pipe(gulp.dest('coffee/compiled'))


gulp.task 'cover', ['coffee'], (done) ->
  karma.start
    configFile: __dirname + "/karma.conf.coffee"
    singleRun: true
    autoWatch: false
  , done