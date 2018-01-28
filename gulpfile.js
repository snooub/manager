var gulp         = require("gulp");
var gutil        = require("gulp-util");
var sass         = require("gulp-sass");
var plumber      = require("gulp-plumber");
var concat       = require("gulp-concat");
var rename       = require("gulp-rename");
var livereload   = require("gulp-livereload");
var minifyCss    = require("gulp-cssnano");
var minifyJs     = require("gulp-uglify");
var cssbeautify  = require("gulp-cssbeautify");
var del          = require("del");
var prettify     = require("gulp-js-prettify");

gulp.task("compress_js", function() {
    gutil.log("Js is change");

    return gulp.src("assets/javascript/dev/*.js")
               .pipe(rename({
                    extname: ".unmin.js"
               }))
               .pipe(gulp.dest("assets/tmp"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(livereload())
               .pipe(minifyJs())
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(rename({
                    extname: ".minify.js"
               }))
               .pipe(gulp.dest("assets/tmp"))
               .pipe(livereload());
});

gulp.task("compress_js_lib", function() {
    gutil.log("Js desktop is change");

    return gulp.src("assets/javascript/dev/lib/**/*.js")
               .pipe(rename({
                    extname: ".js"
               }))
               .pipe(gulp.dest("assets/javascript/lib"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(livereload())
               .pipe(minifyJs())
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(rename({
                    extname: ".min.js"
               }))
               .pipe(gulp.dest("assets/javascript/lib"))
               .pipe(livereload());
});

gulp.task("compress_js_desktop", function() {
    gutil.log("Js desktop is change");

    return gulp.src("assets/javascript/dev/desktop/**/*.js")
               .pipe(rename({
                    extname: ".js"
               }))
               .pipe(gulp.dest("assets/javascript/desktop"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(livereload())
               .pipe(minifyJs())
               .pipe(plumber({
                    errorHandler: function(error) {
                        gutil.log(error.toString());
                        this.emit("end");
                    }
               }))
               .pipe(rename({
                    extname: ".min.js"
               }))
               .pipe(gulp.dest("assets/javascript/desktop"))
               .pipe(livereload());
});

gulp.task("concat_js", function() {
    gutil.log("Concat file js");

    return gulp.src([ "assets/tmp/main.unmin.js" ])
               .pipe(concat("app.js"))
               .pipe(gulp.dest("assets/javascript"))
               .pipe(livereload());
});

gulp.task("concat_js_min", function() {
    gutil.log("Concat file js min");

    return gulp.src([ "assets/tmp/main.unmin.minify.js" ])
               .pipe(concat("app.min.js"))
               .pipe(minifyJs())
               // .pipe(prettify({ collapseWhitespace: true }))
               .pipe(gulp.dest("assets/javascript"))
               .pipe(livereload());
});

gulp.task("sass_default", function() {
    gutil.log("Css default is change");

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
               .pipe(livereload())
               .pipe(minifyCss())
               .pipe(rename("theme.min.css"))
               .pipe(gulp.dest("assets/theme/default"))
               .pipe(livereload());
});

gulp.task("sass_purpe", function() {
    gutil.log("Css purpe is change");

    return gulp.src("assets/theme/purpe/sass/theme.scss")
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
               .pipe(gulp.dest("assets/theme/purpe"))
               .pipe(livereload())
               .pipe(minifyCss())
               .pipe(rename("theme.min.css"))
               .pipe(gulp.dest("assets/theme/purpe"))
               .pipe(livereload());
});

gulp.task("sass_pink", function() {
    gutil.log("Css pink is change");

    return gulp.src("assets/theme/pink/sass/theme.scss")
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
               .pipe(gulp.dest("assets/theme/pink"))
               .pipe(livereload())
               .pipe(minifyCss())
               .pipe(rename("theme.min.css"))
               .pipe(gulp.dest("assets/theme/pink"))
               .pipe(livereload());
});

gulp.task("sass_transparent", function() {
    gutil.log("Css transparent is change");

    return gulp.src("assets/theme/transparent/sass/theme.scss")
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
               .pipe(gulp.dest("assets/theme/transparent"))
               .pipe(livereload())
               .pipe(minifyCss())
               .pipe(rename("theme.min.css"))
               .pipe(gulp.dest("assets/theme/transparent"))
               .pipe(livereload());
});

gulp.task("sass_deafult_desktop", function() {
    gutil.log("Css desktop default is change");

    return gulp.src("assets/theme/desktop/default/sass/theme.scss")
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
               .pipe(livereload())
               .pipe(minifyCss())
               .pipe(rename("theme_desktop.min.css"))
               .pipe(gulp.dest("assets/theme/default"))
               .pipe(livereload());
});

gulp.task("clone_icomoon_font", function() {
    gutil.log("Font icomoon is change");

    return gulp.src("assets/theme/include/sass/icomoon/fonts/*.*")
               .pipe(gulp.dest("assets/theme/default/fonts"))
               .pipe(livereload())
               .pipe(gulp.dest("assets/theme/transparent/fonts"))
               .pipe(livereload());
});

gulp.task("watch", function() {
    gutil.log("Gulp watch");
    livereload.listen();

    gulp.watch([ "assets/theme/default/sass/*.scss", "assets/theme/include/*.scss", "assets/theme/include/sass/icomoon/*.scss" ], [ "sass_default" ]);
    gulp.watch([ "assets/theme/purpe/sass/*.scss", "assets/theme/include/*.scss", "assets/theme/include/sass/icomoon/*.scss" ], [ "sass_purpe" ]);
    gulp.watch([ "assets/theme/pink/sass/*.scss", "assets/theme/include/*.scss", "assets/theme/include/sass/icomoon/*.scss" ], [ "sass_pink" ]);
    gulp.watch([ "assets/theme/transparent/sass/*.scss", "assets/theme/include/*.scss", "assets/theme/include/sass/icomoon/*.scss" ], [ "sass_transparent" ]);
    gulp.watch([ "assets/theme/desktop/default/sass/*.scss" ], [ "sass_deafult_desktop" ]);
    gulp.watch([ "assets/javascript/dev/*.js" ], [ "compress_js" ]);
    gulp.watch([ "assets/javascript/dev/lib/**/*.js" ], [ "compress_js_lib" ]);
    gulp.watch([ "assets/javascript/dev/desktop/**/*.js" ], [ "compress_js_desktop" ]);
    gulp.watch([ "assets/tmp/*.unmin.js" ], [ "concat_js" ]);
    gulp.watch([ "assets/tmp/*.unmin.minify.js" ], [ "concat_js_min" ]);
    gulp.watch([ "assets/theme/include/sass/icomoon/fonts/*.*"], [ "clone_icomoon_font_default" ]);
});

gulp.task("default", [
    "sass_default",
    "sass_transparent",
    "sass_pink",
    "sass_purpe",
    "sass_deafult_desktop",
    "compress_js",
    "compress_js_lib",
    "compress_js_desktop",
    "concat_js",
    "concat_js_min",
    "clone_icomoon_font",
    "watch"
]);