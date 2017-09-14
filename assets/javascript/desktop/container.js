define(function(require) {
    var jquery   = require("jquery");
    var define   = require("define");
    var selector = require("selector");
    var scroll   = require("scroll");
    var delay    = 1;

    return {
        fixSizeChild: function() {
            // Get window size
            var windowWidth  = jquery(window).width();
            var windowHeight = jquery(window).height();

            // Get header, sidebar size
            var headerHeight = selector.header.height();
            var sidebarWidth = selector.sidebar.width();

            // Css fix
            var cssFix = {
                display: "block",
                height: (windowHeight - headerHeight) + "px",
            };

            // Fix height
            selector.container.css(cssFix);
            selector.sidebar.css(cssFix);
            selector.sidebarFile.css(cssFix);
            selector.sidebarDatabase.css(cssFix);
            selector.loading.css(cssFix);
            selector.content.css(cssFix);
            selector.content.css({ width: (windowWidth - sidebarWidth) + "px", left: sidebarWidth + "px" });
            selector.header.css({ display: "block" });
            selector.container.css({ top: headerHeight + "px" });

            scroll.emulator(define.sidebarFileSelector);

            selector.loading.delay(100).fadeOut("slow", function() {
                selector.loading.css({
                    display: "none"
                });
            });
        },

        registerWindowOnResize: function() {
            var self = this;

            jquery(window).resize(function(handler) {
                self.fixSizeChild();
            });
        }
    };
});