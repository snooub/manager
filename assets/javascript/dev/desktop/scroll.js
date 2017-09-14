define(function(require) {
    var jquery = require("jquery");

    return {
        scrollMargin: 11,
        scrollMin:    30,

        emulator: function(selector) {
            var element = jquery(selector);
            var parent  = element.parent();

            this.addScrollThumb(parent);
            this.bindScrollThumb(parent);
        },

        addScrollThumb: function(selector) {
            var element = selector;

            if (typeof element === "string")
                element = jquery(element);

            var scrollVertical   = element.find("div.scroll-vertical");
            var scrollHorizontal = element.find("div.scroll-horizontal");

            if (!scrollVertical.length || scrollVertical.length <= 0)
                element.append("<div class=\"scroll-vertical\"></div>");

            if (!scrollHorizontal.length || scrollHorizontal.length <= 0)
                element.append("<div class=\"scroll-horizontal\"></div>");

            var scrollVertical   = element.find("div.scroll-vertical");
            var scrollHorizontal = element.find("div.scroll-horizontal");

            var scrollWrapper = element.find("div.scroll-wrapper");
            var scrollContent = element.find("div.scroll-content");

            if (!scrollContent)
                return false;

            var elementScrollWidth  = scrollContent.get(0);
            var elementScrollHeight = scrollContent.get(0);

            if (elementScrollWidth.scrollWidth)
                elementScrollWidth = elementScrollWidth.scrollWidth;
            else
                elementScrollWidth = scrollMin;

            if (elementScrollHeight.scrollHeight)
                elementScrollHeight = elementScrollHeight.scrollHeight;
            else
                elementScrollHeight = scrollMin;

            var elementWidth  = element.width()  || scrollContent.width();
            var elementHeight = element.height() || scrollContent.height();

            var scrollHorizontalRatio = elementScrollWidth / elementWidth;
            var scrollVerticalRatio   = elementScrollHeight / elementHeight;

            var scrollHorizontalThumb = Math.ceil(elementWidth / scrollHorizontalRatio);
            var scrollVerticalThumb   = Math.ceil(elementHeight / scrollVerticalRatio);

            scrollHorizontal.css({
                left:  this.scrollMargin,
                width: scrollHorizontalThumb + "px"
            });

            scrollVertical.css({
                top:    this.scrollMargin,
                height: scrollVerticalThumb + "px"
            });
        },

        bindScrollThumb: function(selector) {
            var element = selector;

            if (typeof element === "string")
                element = jquery(element);

            var self                   = this;
            var elementWidth           = element.width();
            var elementHeight          = element.height();
            var scrollVertical         = element.find("div.scroll-vertical");
            var scrollHorizontal       = element.find("div.scroll-horizontal");
            var scrollContent          = element.find("div.scroll-content");
            var scrollContentWidth     = scrollContent.get(0);
            var scrollContentHeight    = scrollContent.get(0);
            var windowElement          = jquery(window);
            var windowPageXCurrent     = 0;
            var windowPageXPrev        = 0;
            var windowPageYCurrent     = 0;
            var windowPageYPrev        = 0;
            var scrollHorizontalOffset = 0;
            var scrollHorizontalBegin  = 0;
            var scrollHorizontalEnd    = 0;
            var scrollVerticalOffset   = 0;
            var scrollVerticalBegin    = 0;
            var scrollVerticalEnd      = 0;
            var scrollHorizontalDown   = false;
            var scrollVerticalDown     = false;

            if (!scrollVertical || !scrollHorizontal)
                this.addScrollThumb(element);

            scrollContentWidth  = scrollContentWidth.scrollWidth   - elementWidth;
            scrollContentHeight = scrollContentHeight.scrollHeight - elementHeight;

            scrollHorizontal.unbind("mousedown").bind("mousedown", function(e) {
                e.preventDefault();

                $(document).unbind("mouseup").bind("mouseup", function(e) {
                    e.preventDefault();
                    windowElement.unbind("mousemove");
                    scrollHorizontal.unbind("mouseup");

                    windowPageXCurrent   = 0;
                    windowPageXPrev      = 0;
                    scrollHorizontalDown = false;
                });

                scrollHorizontalDown = true;

                windowElement.unbind("mousemove").bind("mousemove", function(e) {

                    windowPageXCurrent     = e.pageX;
                    scrollHorizontalOffset = scrollHorizontal.css("left");
                    scrollHorizontalBegin  = self.scrollMargin;
                    scrollHorizontalEnd    = elementWidth - scrollHorizontal.width() - self.scrollMargin;

                    if (scrollHorizontalOffset.indexOf("px") !== -1)
                        scrollHorizontalOffset = scrollHorizontalOffset.substr(0, scrollHorizontalOffset.length - 2);

                    if (windowPageXPrev === 0)
                        windowPageXPrev = windowPageXCurrent;

                    scrollHorizontalOffset = parseInt(scrollHorizontalOffset);

                    if (windowPageXCurrent < windowPageXPrev)
                        scrollHorizontalOffset -= windowPageXPrev - windowPageXCurrent;
                    else if (windowPageXCurrent > windowPageXPrev)
                        scrollHorizontalOffset += windowPageXCurrent - windowPageXPrev;

                    if (scrollHorizontalOffset < scrollHorizontalBegin)
                        scrollHorizontalOffset = scrollHorizontalBegin;

                    if (scrollHorizontalOffset > scrollHorizontalEnd)
                        scrollHorizontalOffset = scrollHorizontalEnd;

                    scrollHorizontal.css({ left: scrollHorizontalOffset + "px" });
                    scrollContent.scrollLeft(((scrollHorizontalOffset - self.scrollMargin) / scrollHorizontalEnd) * scrollContentWidth);

                    windowPageXPrev = windowPageXCurrent;
                });
            });

            scrollVertical.unbind("mousedown").bind("mousedown", function(e) {
                e.preventDefault();

                $(document).unbind("mouseup").bind("mouseup", function(e) {
                    e.preventDefault();
                    windowElement.unbind("mousemove");
                    scrollVertical.unbind("mouseup");

                    windowPageYCurrent = 0;
                    windowPageYPrev    = 0;
                    scrollVerticalDown = false;
                });

                scrollVerticalDown = true;

                windowElement.unbind("mousemove").bind("mousemove", function(e) {
                    windowPageYCurrent   = e.pageY;
                    scrollVerticalOffset = scrollVertical.css("top");
                    scrollVerticalBegin  = self.scrollMargin;
                    scrollVerticalEnd    = elementHeight - scrollVertical.height() - self.scrollMargin;

                    if (scrollVerticalOffset.indexOf("px") !== -1)
                        scrollVerticalOffset = scrollVerticalOffset.substr(0, scrollVerticalOffset.length - 2);

                    if (windowPageYPrev === 0)
                        windowPageYPrev = windowPageYCurrent;

                    scrollVerticalOffset = parseInt(scrollVerticalOffset);

                    if (windowPageYCurrent < windowPageYPrev)
                        scrollVerticalOffset -= windowPageYPrev - windowPageYCurrent;
                    else if (windowPageYCurrent > windowPageYPrev)
                        scrollVerticalOffset += windowPageYCurrent - windowPageYPrev;

                    if (scrollVerticalOffset < scrollVerticalBegin)
                        scrollVerticalOffset = scrollVerticalBegin;

                    if (scrollVerticalOffset > scrollVerticalEnd)
                        scrollVerticalOffset = scrollVerticalEnd;

                    scrollVertical.css({ top: scrollVerticalOffset + "px" });
                    scrollContent.scrollTop(((scrollVerticalOffset - self.scrollMargin) / scrollVerticalEnd) * scrollContentHeight);

                    windowPageYPrev = windowPageYCurrent;
                });
            });

            scrollContent.scroll(function() {
                if (scrollHorizontalDown == false) {
                    var scrollHorizontalOffset    = scrollContent.scrollLeft() / scrollContentWidth;
                    var scrollHorizontalEnd       = elementWidth - scrollHorizontal.width() - (self.scrollMargin << 1);

                    scrollHorizontal.css({ left: (scrollHorizontalOffset * scrollHorizontalEnd + self.scrollMargin) + "px" });
                }

                if (scrollVerticalDown == false) {
                    var scrollVerticalOffset    = scrollContent.scrollTop() / scrollContentHeight;
                    var scrollVerticalEnd       = elementHeight - scrollVertical.height() - (self.scrollMargin << 1);

                    scrollVertical.css({ top: (scrollVerticalOffset * scrollVerticalEnd + self.scrollMargin) + "px" });
                }
            });
        }
    };
});