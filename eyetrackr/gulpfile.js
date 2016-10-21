var gulp = require('gulp'),
    sass = require('gulp-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    jshint = require('gulp-jshint'),
    uglify = require('gulp-uglify'),
    imagemin = require('gulp-imagemin'),
    pngcrush = require('imagemin-pngcrush'),
    pngquant = require('imagemin-pngquant'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    notify = require('gulp-notify'),
    cache = require('gulp-cache'),
    livereload = require('gulp-livereload'),
    del = require('del'),
    browserSync = require('browser-sync').create();

gulp.task('default', ['clean'], function() {
    gulp.start('watch');
});

gulp.task('browserSync', function() {
  browserSync.init({
    server: {
      baseDir: 'public'
    },
    logConnections: true
  })
});

gulp.task('sass', function(){
  return gulp.src('app/css/scss/**/*.scss')
    .pipe(sass({
      "sourcemap=none": true // hack to allow auto-prefixer to work
    }))
    .pipe(autoprefixer('last 2 version'))
    .pipe(gulp.dest('public/css'))
    .pipe(gulp.dest('public/css'))
    .pipe(browserSync.reload({
      stream: true
    }));
});

gulp.task('vendorcss', function() {
  return gulp.src('app/css/vendor/**')
    .pipe(gulp.dest('public/css/vendor'))
});

gulp.task('scripts', function() {
  return gulp.src([ '!app/js/vendor/**','app/js/**/*.js' ])
    .pipe(jshint('.jshintrc'))
    .pipe(jshint.reporter('default'))
    .pipe(concat('main.js'))
    .pipe(gulp.dest('public/js'))
    .pipe(uglify())
    .pipe(gulp.dest('public/js'))
    .pipe(browserSync.reload({
      stream: true
    }))
    .pipe(notify({ message : 'Style Compiled, Browser Refreshed'}));
});

gulp.task('vendorscripts', function() {
  return gulp.src('app/js/vendor/**')
    .pipe(gulp.dest('public/js/vendor'))
});

gulp.task('images', function() {
  return gulp.src('app/img/**/*')
    .pipe(cache(imagemin([ imagemin.gifsicle(), imagemin.jpegtran(), imagemin.optipng(), imagemin.svgo(), pngcrush(),pngquant() ], { optimizationLevel: 5, progressive: true, interlaced: true })))
    .pipe(gulp.dest('public/img'));
});

gulp.task('copyHtml', function() {
  gulp.src('app/**/*.html').pipe(gulp.dest('public'))
});

gulp.task('fonts', function() {
  return gulp.src('app/fonts/**/*')
  .pipe(gulp.dest('public/fonts'));
});

gulp.task('clean', function() {
    return del(['public/css', 'public/js', 'public/*.html']);
});

gulp.task('cleanhtml', function(){
  return del('public/**/*.html')
});

gulp.task('watch', [ 'browserSync', 'clean','sass', 'vendorcss', 'scripts', 'vendorscripts', 'copyHtml', 'fonts'], function() {
  gulp.watch('app/**/*.html', ['copyHtml']);
  gulp.watch('app/css/**/*.scss', ['sass'], browserSync.reload);
  gulp.watch('app/css/vendor/**', ['vendorcss']);
  gulp.watch('app/js/**/*.js', ['scripts'], browserSync.reload);
  // gulp.watch('app/img/**/*', ['images']);
  livereload.listen();
  gulp.watch(['app/**']).on('change', livereload.changed);
});
