define([
    "jquery",
    "container",
    "define",
    "login"
], function(
    jquery,
    container,
    define,
    login
) {
    container.fixSizeChild();
    container.registerWindowOnResize();
    login.init();
});