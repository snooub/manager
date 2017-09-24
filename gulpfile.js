var gulp        = require("gulp");
var gutil       = require("gulp-util");
var sass        = require("gulp-sass");
var plumber     = require("gulp-plumber");
var concat      = require("gulp-concat");
var rename      = require("gulp-rename");
var livereload  = require("gulp-livereload");
var minifyCss   = require("gulp-cssnano");
var minifyJs    = require("gulp-uglify");
var cssbeautify = require("gulp-cssbeautify");

gulp.task("compress_js", function() {
    gutil.log("Js is change");

    return gulp.src("assets/javascript/dev/**/*.js")
               .pipe(gulp.dest("assets/javascript"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               // .pipe(minifyJs())
               // .pipe(plumber({
               //      errorHandler: function(error) {
               //          gutil.log(error.toString());
               //          this.emit("end");
               //      }
               // }))
               // .pipe(rename({
               //      extname: ".min.js"
               // }))
               // .pipe(gulp.dest("assets/javascript"))
               .pipe(livereload());
});

gulp.task("sass", function() {
    gutil.log("Css is change");

    return gulp.src("assets/theme/default/sass/theme.scss")
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(sass())
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(cssbeautify())
               .pipe(rename("theme.css"))
               .pipe(gulp.dest("assets/theme/default"))
               // .pipe(minifyCss())
               // .pipe(rename("theme.min.css"))
               // .pipe(gulp.dest("assets/theme/default"))
               .pipe(livereload());
});

gulp.task("sass_desktop", function() {
    gutil.log("Css desktop is change");

    return gulp.src("assets/theme/default/sass/desktop/theme.scss")
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(sass())
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(cssbeautify())
               .pipe(rename("theme_desktop.css"))
               .pipe(gulp.dest("assets/theme/default"))
               // .pipe(minifyCss())
               // .pipe(rename("theme_desktop.min.css"))
               // .pipe(gulp.dest("assets/theme/default"))
               .pipe(livereload());
});

gulp.task("clone_icomoon_font", function() {
    gutil.log("Font icomoon is change");

    return gulp.src("assets/theme/default/sass/icomoon/fonts/*.*")
               .pipe(gulp.dest("assets/theme/default/fonts"))
               .pipe(livereload());
});

gulp.task("watch", function() {
    gutil.log("Gulp watch");
    livereload.listen();

    gulp.watch([ "assets/theme/default/sass/*.scss", "assets/theme/default/sass/icomoon/*.scss" ], [ "sass" ]);
    gulp.watch([ "assets/theme/default/sass/desktop/*.scss" ], [ "sass_desktop" ]);
    gulp.watch([ "assets/javascript/dev/**/*.js" ], [ "compress_js" ]);
    gulp.watch([ "assets/theme/default/sass/icomoon/fonts/*.*"], [ "clone_icomoon_font" ]);
});

gulp.task("default", [
    "sass",
    "sass_desktop",
    "compress_js",
    "clone_icomoon_font",
    "watch"
]);