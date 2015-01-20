gulp = require 'gulp'
coffee = require 'gulp-coffee'
gutil = require 'gulp-util'
sourcemap = require 'gulp-sourcemaps'

gulp.task 'build', ->
  gulp.src './src/**/*.coffee'
    .pipe sourcemap.init()
    .pipe coffee({ bare: true }).on('error', gutil.log)
    .pipe sourcemap.write('../sourcemap')
    .pipe gulp.dest 'lib/'

gulp.task 'watch', ->
  gulp.watch './src/**/*.coffee', ['build']
