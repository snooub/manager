define(function(require) {
    var jquery = require("jquery");

    return {
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
        },

        bindScrollThumb: function(selector) {
            var element = selector;

            if (typeof element === "string")
                element = jquery(element);

            var scrollMin        = 10;
            var scrollVertical   = element.find("div.scroll-vertical");
            var scrollHorizontal = element.find("div.scroll-horizontal");
            var windowElement    = jquery(window);

            if (!scrollVertical || !scrollHorizontal)
                this.addScrollThumb(element);

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

            var elementWidth  = scrollContent.width();
            var elementHeight = scrollContent.height();

            var scrollVerticalRatio = (elementScrollHeight - elementHeight) / elementHeight;
            var scrollVerticalThumb = (elementHeight * scrollVerticalRatio) / 5;

            console.log(elementHeight);
            console.log(elementScrollHeight);
            console.log(scrollVerticalRatio);
            console.log(scrollVerticalThumb);

            var scrollVerticalSize   = (elementScrollHeight / elementHeight) * elementHeight;
            var scrollHorizontalSize = (elementScrollWidth / elementWidth) * elementWidth;

            scrollVertical.unbind("mousedown").bind("mousedown", function(e) {
                e.preventDefault();

                $(document).unbind("mouseup").bind("mouseup", function(e) {
                    e.preventDefault();
                    windowElement.unbind("mousemove");
                    scrollVertical.unbind("mouseup");
                });

                windowElement.unbind("mousemove").bind("mousemove", function(e) {
                    scrollVertical.css({
                        top: (e.pageY - 100) + "px"
                    });
                });
            });
        }
    };
});