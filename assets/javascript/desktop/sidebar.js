define([
    "ajax",
    "jquery",
    "selector"
], function(
    ajax,
    jquery,
    selector
) {
    return {
        initFile: function() {
            // var request = ajax.open({
            //     url: ajax.script.index + "?directory=F:/"
            // });

            this.fixPaddingListEntry();
        },

        initDatabase: function() {

        },

        fixPaddingListEntry: function() {
            selector.sidebarFileListEntry.find("p").each(function() {
                var element     = $(this);
                var parent      = element.parent().parent().parent();
                var paddingLeft = element.css("paddingLeft");

                if (typeof paddingLeft === "undefined")
                    paddingLeft = 5;
                else if (paddingLeft.indexOf("px") !== -1)
                    paddingLeft = parseInt(paddingLeft.substr(0, paddingLeft.length - 2));
                else
                    paddingLeft = 10;

                if (typeof element.attr("class") === "undefined" || element.attr("class").indexOf("root") === -1)
                    paddingLeft += 30;
                else
                    paddingLeft += 10;

                if (typeof parent !== "undefined" && parent.get(0).tagName.toLowerCase() === "li") {
                    var elementLabel      = parent.find("p:first-child");
                    var parentPaddingLeft = elementLabel.css("paddingLeft");

                    if (typeof parentPaddingLeft === "undefined")
                        parentPaddingLeft = 5;
                    else if (parentPaddingLeft.indexOf("px") !== -1)
                        parentPaddingLeft = parseInt(parentPaddingLeft.substr(0, parentPaddingLeft.length - 2));
                    else
                        parentPaddingLeft = 10;

                    paddingLeft += parentPaddingLeft;
                }

                element.css({
                    paddingLeft: paddingLeft + "px"
                });
            });
        }
    };
});