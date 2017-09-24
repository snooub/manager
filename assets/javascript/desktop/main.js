define([
    "jquery",
    "container",
    "define",
    "lang"
], function(
    jquery,
    container,
    define,
    lang
) {
    return {
        init: function() {
            container.fixSizeChild();
            container.registerWindowOnResize();
            container.registerDocumentOnMouseMove();
            lang.init(this);

            return this;
        }
    }.init();
});