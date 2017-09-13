define(function(require) {
    var jquery = require("jquery");
    var define = require("define");

    return {
        container_full: jquery(define.container_full_selector),
        container:      jquery(define.container_selector),
        header:         jquery(define.header_selector),
        sidebar:        jquery(define.sidebar_selector),
        content:        jquery(define.content_selector),
        loading:        jquery(define.loading_selector)
    };
});