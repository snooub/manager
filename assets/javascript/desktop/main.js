define(function(require) {
    var $         = require("jquery");
    var container = require("container");
    var define    = require("define");

    container.fixSizeChild();
    container.registerWindowOnResize();
});