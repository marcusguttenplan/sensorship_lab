#EYETRACKER

A really, really stupid boilerplate for bootstrapping and scaffolding new front end projects. Snap it onto an existing `rails`, `flask`, `whatever` back end, and AJAX the rest.

Upgraded to bootstrap 4; with SCSS, Modernizr, Normalize. Running on Gulp; Gulp will concat, min, and copy all files from the development `app` folder to the production `public` folder, serve and reload using `browserify`. Easy as pie.

##USAGE

```
npm install
```

move bootstrap, jquery, and required tether library files installed by `npm` from `node_modules/bootstrap/..`, `node_modules/jquery/..` and `node_modules/tether/..` into app folder. Choose the `.min` or un`.min`'ed version of the `.css` or `.js` to use in the project -- it doesn't really matter. Currently `gulp` ignores the vendor file directories because I was having issues with the order that it was minifying and concatenating. Change the gulp tasks here:

```
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
```

Open terminal, run
```
gulp
```

You can now see changes live at `localhost:3000` in your browser. This will work with AJAX referrer issues as well, so you can work on JS projects that use local data.


##TODO
* ~~better styles, all around~~
* ~~add modular jquery for quick dev~~
* add boilerplate examples for interactions -- dropdowns, filters, etc
* suss out `npm` bootstrap issues, implement `require('bootstrap')`
