gulp = require 'gulp'
jade = require 'gulp-jade'
coffee = require 'gulp-coffee'

gulp.task 'jade', ->
	gulp.src 'jade/*.jade'
		.pipe do jade
		.pipe gulp.dest 'dist'

gulp.task 'coffee', ->
	gulp.src 'coffee/*.coffee'
		.pipe do coffee
		.pipe gulp.dest 'js'


gulp.task 'watch', ->
	gulp.watch 'jade/*.jade',['jade']


gulp.task 'default', ['jade','watch']