var gulp = require('gulp');
var concat = require('gulp-concat');
var sourcemaps = require('gulp-sourcemaps');
var notify = require('gulp-notify');


/**
 * Not all tasks need to use streams
 * A gulpfile is just another node program and you can use any package available on npm
 */
var del = require('del');
gulp.task('clean', function() {
  // You can use multiple globbing patterns as you would with `gulp.src`
  return del(['build']);
});
/* End */


/**
 * SCSS & Lint
 */
var scsslint   = require('gulp-scss-lint');
var minifyCss  = require('gulp-minify-css');
var sass    = require('gulp-sass');
// Path
var scssSrc = './public/resources/themes/simrace/src/sass/**/*',
  cssDst1  = './public/resources/themes/simrace/css';
  cssDst2  = './public/resources/themes/simrace/css';
// Lint SCSS (For Ordering CSS property)
gulp.task('scss-lint', function() {
  return gulp.src(scssSrc)
  .pipe(scsslint({
    'config': 'scss-lint.yml'
  }));
});
// Generate css & minify it
gulp.task('sass', function () {
  return gulp.src(scssSrc)
  .pipe(sass().on('error', sass.logError))
  .pipe(minifyCss({compatibility: 'ie8'}))
  .pipe(gulp.dest(cssDst1))
  .pipe(gulp.dest(cssDst2))
  .pipe(notify({message: 'SCSS compiled'}));
});
'use strict';
 
var gulp = require('gulp'),
    sassLint = require('gulp-sass-lint');
 
gulp.task('default', function () {
  return gulp.src('sass/**/*.s+(a|c)ss')
    .pipe(sassLint())
    .pipe(sassLint.format())
    .pipe(sassLint.failOnError())
});
/* End */


/**
 * jQuery & Coffee scripts
 */
var coffee = require('gulp-coffee');
var uglify = require('gulp-uglify');
// Path
var coffeeSrc = '../src/js/**/*.coffee.js',
  coffeeDst   = '../coffee-scripts';
var jsSrc = '../src/js/**/*.js',
  jsDst   = '../js';
gulp.task('coffeescripts', ['clean'], function() {
  // Minify and copy all JavaScript (except vendor scripts)
  // with sourcemaps all the way down
  return gulp.src(coffeeSrc)
  .pipe(sourcemaps.init())
    .pipe(coffee())
    .pipe(uglify())
    .pipe(concat('all.min.coffee.js'))
  // .pipe(sourcemaps.write())
  .pipe(gulp.dest(coffeeDst))
  .pipe(notify({message: 'Coffee Scripts compiled'}));
});
gulp.task('scripts', ['clean'], function() {
  return gulp.src(jsSrc)
  .pipe(sourcemaps.init())
    .pipe(uglify())
    .pipe(concat('all.min.js'))
  // .pipe(sourcemaps.write())
  .pipe(gulp.dest(jsDst))
  .pipe(notify({message: 'JS compiled'}));
});
/* End */


/**
 * Image minify
 */
var imagemin = require('gulp-imagemin');
// Path
var imgSrc  = '../src/images/*',
  imgDst  = '../images';
// Copy all static images
gulp.task('images', ['clean'], function() {
  return gulp.src(imgSrc)
  // Pass in options to the task
  .pipe(imagemin({optimizationLevel: 10}))
  .pipe(gulp.dest(imgDst))
  .pipe(notify({message: 'Images compiled'}));
});
/* End */


/**
 * Rerun the task when a file changes
 */
gulp.task('watch', function() {
  gulp.watch(coffeeSrc, ['coffeescripts']);
  gulp.watch(jsSrc, ['scripts']);
  gulp.watch(imgSrc, ['images']);
  gulp.watch(scssSrc, ['sass']);
  gulp.watch(scssSrc, ['scss-lint']);
});
/* End */


// The default task (called when you run `gulp` from cli)
gulp.task('default', ['watch','coffeescripts', 'scripts', 'sass']); // 'images',


