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
var prettify     = require("gulp-js-prettify");
var wait         = require("gulp-wait");
var color        = require("gulp-color");
var notifier     = require("node-notifier").WindowsBalloon;
var del          = require("del");

var notifier = new notifier({
  withFallback: false, // Use Growl Fallback if <= 10.8
  customPath: void 0 // Relative/Absolute path to binary if you want to use your own fork of terminal-notifier
});

var listSass = {
    basic: [
        "default",
        "pink",
        "purpe",
        "transparent"
    ],

    desktop: [
        "default"
    ]
};

function notify(options) {
    gutil.log(options.message);

    if (!options.time)
        options.time = 3;

    if (!options.type)
        options.type = "info";

    notifier.notify({
        title: options.title,
        message: options.message.replace(/[\u001b\u009b][[()#;?]*(?:[0-9]{1,4}(?:;[0-9]{0,4})*)?[0-9A-ORZcf-nqry=><]/g, ''),
        sound: true,
        wait: false,
        time: options.time,
        type: options.type
    });
}

gulp.task("compress-javascript-basic", function() {
    var isSuccess = true;

    return gulp.src("assets/javascript/dev/*.js")
               .pipe(rename({
                    extname: ".unmin.js"
               }))
               .pipe(gulp.dest("assets/tmp"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        isSuccess = false;

                        notify({
                            title: "Error compress javascript basic",
                            message: error.toString(),
                            type: "error",
                            time: 2
                        });

                        this.emit("end");
                    }
               }))
               .pipe(livereload())
               .pipe(minifyJs())
               .pipe(plumber({
                    errorHandler: function(error) {
                        isSuccess = false;

                        notify({
                            title: "Error compress javascript basic minify",
                            message: error.toString(),
                            type: "error",
                            time: 2
                        });

                        this.emit("end");
                    }
               }))
               .pipe(rename({
                    extname: ".minify.js"
               }))
               .pipe(gulp.dest("assets/tmp"))
               .pipe(livereload())
               .on("end", function() {
                    if (isSuccess) {
                        notify({
                            title: "Compress javascript basic",
                            message: "Javascript basic is change"
                        });
                    }
               });
});

gulp.task("compress-javascript-lib-basic", function() {
    var isSuccess = true;

    return gulp.src("assets/javascript/dev/lib/**/*.js")
               .pipe(rename({
                    extname: ".js"
               }))
               .pipe(gulp.dest("assets/javascript/lib"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        isSuccess = false;

                        notify({
                            title: "Error compress javascript lib basic",
                            message: error.toString(),
                            type: "error",
                            time: 2
                        });

                        this.emit("end");
                    }
               }))
               .pipe(livereload())
               .pipe(minifyJs())
               .pipe(plumber({
                    errorHandler: function(error) {
                        isSuccess = false;

                        notify({
                            title: "Error compress javascript lib minify basic",
                            message: error.toString(),
                            type: "error",
                            time: 2
                        });

                        this.emit("end");
                    }
               }))
               .pipe(rename({
                    extname: ".min.js"
               }))
               .pipe(gulp.dest("assets/javascript/lib"))
               .pipe(livereload())
               .on("end", function() {
                    if (isSuccess) {
                        notify({
                            title: "Compress javascript lib basic",
                            message: "Javascript lib basic is change"
                        });
                    }
               });
});

gulp.task("compress-javascript-desktop", function() {
    var isSuccess = true;

    return gulp.src("assets/javascript/dev/desktop/**/*.js")
               .pipe(rename({
                    extname: ".js"
               }))
               .pipe(gulp.dest("assets/javascript/desktop"))
               .pipe(plumber({
                    errorHandler: function(error) {
                        isSuccess = false;

                        notify({
                            title: "Error compress javascript desktop",
                            message: error.toString(),
                            type: "error",
                            time: 2
                        });

                        this.emit("end");
                    }
               }))
               .pipe(livereload())
               .on("end", function() {
                    if (isSuccess) {
                        notify({
                            title: "Compress javascript desktop",
                            message: "Javascript desktop is change"
                        });
                    }
               });
});

gulp.task("concat-javascript", function() {
    return gulp.src([ "assets/tmp/main.unmin.js" ])
               .pipe(concat("app.js"))
               .pipe(gulp.dest("assets/javascript"))
               .pipe(livereload())
               .on("end", function() {
                    if (isSuccess) {
                        notify({
                            title: "Concat javascript",
                            message: "Javascript basic is change"
                        });
                    }
               });
});

gulp.task("concat-javascript-min", function() {
    return gulp.src([ "assets/tmp/main.unmin.minify.js" ])
               .pipe(concat("app.min.js"))
               .pipe(minifyJs())
               // .pipe(prettify({ collapseWhitespace: true }))
               .pipe(gulp.dest("assets/javascript"))
               .pipe(livereload())
               .on("end", function() {
                    notify({
                        title: "Concat javascript minify",
                        message: "Javascript minify basic is change"
                    });
               });
});

// Sass theme
(function(lists) {
    gutil.log(color("+ Create task sass theme basic", "cyan"));

    for (var i = 0; i < lists.length; ++i) {
        var key = lists[i];

        gutil.log("- Create task sass theme " + color(key, "green") + " basic");
        gulp.task("sass-theme-" + key, function() {
            var name      = this.seq[0];
            var lastIndex = name.lastIndexOf("-");
            var lastName  = name.substring(lastIndex + 1);
            var isSuccess = true;

            return gulp.src("assets/theme/" + lastName + "/sass/theme.scss")
                       .pipe(wait(500))
                       .pipe(plumber({
                            errorHandler: function(error) {
                                isSuccess = false;

                                notify({
                                    title: "Error sass theme " + lastName + " basic",
                                    message: error.toString(),
                                    type: "error",
                                    time: 2
                                });

                                this.emit("end");
                            }
                       }))
                       .pipe(sass())
                       .pipe(plumber({
                            errorHandler: function(error) {
                                isSuccess = false;

                                notify({
                                    title: "Error sass theme " + lastName + " basic",
                                    message: error.toString(),
                                    type: "error",
                                    time: 2
                                });

                                this.emit("end");
                            }
                       }))
                       .pipe(cssbeautify())
                       .pipe(rename("theme.css"))
                       .pipe(gulp.dest("assets/theme/" + lastName))
                       .pipe(livereload())
                       .pipe(minifyCss())
                       .pipe(rename("theme.min.css"))
                       .pipe(gulp.dest("assets/theme/" + lastName))
                       .pipe(livereload())
                       .on("end", function() {
                            if (isSuccess) {
                                notify({
                                    title: "Sass theme " + lastName + " basic",
                                    message: "Theme " + color(lastName, "green") + " basic is change"
                                });
                            }
                       });
        });
    }
})(listSass.basic);

(function(lists) {
    gutil.log(color("+ Create task sass theme desktop", "cyan"));

    for (var i = 0; i < lists.length; ++i) {
        var key = lists[i];

        gutil.log("- Create task sass theme " + color(key, "green") + " desktop");
        gulp.task("sass-theme-desktop-" + key, function() {
            var name      = this.seq[0];
            var lastIndex = name.lastIndexOf("-");
            var lastName  = name.substring(lastIndex + 1);
            var isSuccess = true;

            return gulp.src("assets/theme/desktop/" + lastName + "/sass/theme.scss")
                       .pipe(wait(500))
                       .pipe(plumber({
                            errorHandler: function(error) {
                                isSuccess = false;

                                notify({
                                    title: "Error sass theme " + lastName + " desktop",
                                    message: error.toString(),
                                    type: "error",
                                    time: 2
                                });

                                this.emit("end");
                            }
                       }))
                       .pipe(sass())
                       .pipe(plumber({
                            errorHandler: function(error) {
                                isSuccess = false;

                                notify({
                                    title: "Error sass theme " + lastName + " desktop",
                                    message: error.toString(),
                                    type: "error",
                                    time: 2
                                });

                                this.emit("end");
                            }
                       }))
                       .pipe(cssbeautify())
                       .pipe(rename("theme_desktop.css"))
                       .pipe(gulp.dest("assets/theme/" + lastName))
                       .pipe(livereload())
                       .pipe(minifyCss())
                       .pipe(rename("theme_desktop.min.css"))
                       .pipe(gulp.dest("assets/theme/" + lastName))
                       .pipe(livereload())
                       .on("end", function() {
                            if (isSuccess) {
                                notify({
                                    title: "Sass theme " + lastName + " desktop",
                                    message: "Theme " + lastName + " desktop is change"
                                });
                            }
                       });
        });
    }
})(listSass.desktop);

// Clone icomoon font theme basic
(function(lists) {
    gutil.log(color("+ Create task clone icomoon font theme basic", "cyan"));

    gulp.task("clone-icomoon-font-theme-basic", function() {
        var res = gulp.src("assets/theme/include/sass/icomoon/fonts/*.*");

        for (var i = 0; i < lists.length; ++i)
            res = res.pipe(gulp.dest("assets/theme/" + lists[i] + "/fonts")).pipe(livereload());

        return res.on("end", function() {
            notify({
                title: "Clone icomoon theme basic",
                message: "Font icomoon theme basic is change"
            });
        });
    });
})(listSass.basic);

// Clone icomoon font theme desktop
(function(lists) {
    gutil.log(color("+ Create task clone icomoon font theme desktop", "cyan"));

    gulp.task("clone-icomoon-font-theme-desktop", function() {
        var res = gulp.src("assets/theme/desktop/include/icomoon/fonts/*.*");

        for (var i = 0; i < lists.length; ++i)
            res = res.pipe(gulp.dest("assets/theme/" + lists[i] + "/desktop-fonts")).pipe(livereload());

        return res.on("end", function() {
            notify({
                title: "Clone icomoon theme desktop",
                message: "Font icomoon theme desktop is change"
            });
        });
    });
})(listSass.desktop);

gulp.task("default", function() {
    notify({
        title: "Gulp",
        message: "Watch start"
    });
    livereload.listen();

    (function(lists) {
        for (var i = 0; i < lists.length; ++i) {
            gutil.log("* Watch sass theme basic " + color(lists[i], "green") + " basic");

            gulp.watch([
                "assets/theme/" + lists[i] + "/sass/*.scss",
                "assets/theme/include/*.scss",
                "assets/theme/include/sass/icomoon/*.scss"
            ], [
                "sass-theme-" + lists[i]
            ]);
        }
    })(listSass.basic);

    (function(lists) {
        for (var i = 0; i < lists.length; ++i) {
            gutil.log("* Watch sass theme desktop " + color(lists[i], "green") + " basic");

            gulp.watch([
                "assets/theme/desktop/" + lists[i] + "/sass/*.scss",
                "assets/theme/desktop/include/*.scss",
                "assets/theme/desktop/include/icomoon/*.scss"
            ], [
                "sass-theme-desktop-" + lists[i]
            ]);
        }
    })(listSass.desktop);

    (function() {
        gutil.log("* Watch clone icomoon font theme " + color("basic", "green"));
        gutil.log("* Watch clone icomoon font theme " + color("desktop", "green"));

        gulp.watch([ "assets/theme/include/sass/icomoon/fonts/*.*"    ], [ "clone-icomoon-font-theme-basic" ]);
        gulp.watch([ "assets/theme/desktop/include/icomoon/fonts/*.*" ], [ "clone-icomoon-font-theme-desktop" ]);
    })();

    (function() {
        gutil.log("* Watch javascript on change");
        gulp.watch([ "assets/javascript/dev/*.js"            ], [ "compress-javascript-basic" ]);
        gulp.watch([ "assets/javascript/dev/lib/**/*.js"     ], [ "compress-javascript-lib-basic" ]);
        gulp.watch([ "assets/javascript/dev/desktop/**/*.js" ], [ "compress-javascript-desktop" ]);

        gutil.log("* Watch javascript is change and concat");
        gulp.watch([ "assets/tmp/*.unmin.js"        ], [ "concat-javascript" ]);
        gulp.watch([ "assets/tmp/*.unmin.minify.js" ], [ "concat-javascript-min" ]);
    })();
});