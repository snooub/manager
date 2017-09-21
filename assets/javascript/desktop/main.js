define([
    "jquery",
    "container",
    "define",
    "lang"
], function(
    jquery,
    container,
    define,
    lang,
    login
) {
    container.fixSizeChild();
    container.registerWindowOnResize();
    lang.init();
});