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

            this.bindHoverFile();
        },

        initDatabase: function() {

        },

        bindHoverFile: function() {
            selector.sidebarFileCursor.css({ display: "none" });

            selector.sidebarFileListEntry.find("p").each(function() {
                var element = $(this);

                element.unbind("mouseenter").bind("mouseenter", function() {
                    console.log("hover");
                }).unbind("mouseover").bind("mouseover", function() {
                    console.log("unhover");
                });
            });
        },

        fixCursorHoverFile: function() {

        }
    };
});