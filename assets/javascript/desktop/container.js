define([
    "jquery",
    "define",
    "selector",
    "scroll"
], function(
    jquery,
    define,
    selector,
    scroll
) {
    return {
        isInitFixSizeChild: false,

        fixSizeChild: function() {
            var self         = this;

            // Get window size
            var windowWidth  = jquery(window).width();
            var windowHeight = jquery(window).height();

            // Get header, sidebar size
            var headerHeight = selector.header.height();
            var sidebarWidth = selector.sidebar.width();

            // Css fix
            var cssFix = {
                display: self.isInitFixSizeChild == false ? "none" : "block",
                height: (windowHeight - headerHeight) + "px",
            };

            // Fix height
            selector.container.css(cssFix);
            selector.sidebar.css(cssFix);
            selector.sidebarFile.css(cssFix);
            selector.sidebarDatabase.css(cssFix);

            if (self.isInitFixSizeChild == false)
                selector.loading.css(cssFix).css({ display: "block" });

            selector.content.css(cssFix);
            selector.content.css({ width: (windowWidth - sidebarWidth) + "px", left: sidebarWidth + "px" });
            selector.header.css({ display: "block" });
            selector.container.css({ display: "block", top: headerHeight + "px" });

            scroll.emulator(define.sidebarFileSelector);

            if (self.isInitFixSizeChild)
                self.stopLoading();

            self.isInitFixSizeChild = true;
        },

        registerWindowOnResize: function() {
            var self = this;

            jquery(window).resize(function(handler) {
                self.fixSizeChild();
            });
        },

        startLoading: function(notice) {
            if (selector.loading.css("display") === "block") {
                if (typeof notice === "string")
                    selector.loadingNotice.html(notice);

                return;
            }

            if (typeof notice === "string")
                selector.loadingNotice.html(notice);

            selector.loading.css({ display: "block", opacity: 0 }).animate({ opacity: 1 }, define.time.animate_show);
        },

        stopLoading: function() {
            if (selector.loading.css("display") === "none") {
                selector.loadingNotice.html("");
                return;
            }

            selector.loading.animate({ opacity: 0 }, define.time.animate_hidden, function() {
                selector.loadingNotice.html("");

                selector.loading.css({
                    display: "none"
                });
            });
        },

        show: function() {
            var css  = { display: "block", opacity: 0 };
            var anim = { opacity: 1 };

            selector.sidebar.stop().css(css).animate(anim, define.time.time_show);
            selector.sidebarFile.stop().css(css).animate(anim, define.time.time_show);
            selector.sidebarDatabase.stop().css(css).animate(anim, define.time.time_show);
            selector.content.stop().css(css).animate(anim, define.time.time_show);

            scroll.emulator(define.sidebarFileSelector);
        },

        hidden: function() {
            var css  = { display: "none" };
            var anim = { opacity: 0 };

            selector.sidebar.stop().animate(anim, define.time.time_show, function() {
                $(this).css(css);
            });

            selector.sidebarFile.stop().animate(anim, define.time.time_show, function() {
                $(this).css(css);
            });

            selector.sidebarDatabase.stop().animate(anim, define.time.time_show, function() {
                $(this).css(css);
            });

            selector.content.stop().animate(anim, define.time.time_show, function() {
                $(this).css(css);
            });
        }
    };
});