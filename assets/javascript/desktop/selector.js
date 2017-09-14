define(function(require) {
    var jquery = require("jquery");
    var define = require("define");

    return {
        containerFull: jquery(define.containerFullSelector),
        container:     jquery(define.containerSelector),
        header:        jquery(define.headerSelector),
        sidebar:       jquery(define.sidebarSelector),
        content:       jquery(define.contentSelector),
        loading:       jquery(define.loadingSelector),

        sidebarFile:     jquery(define.sidebarFileSelector),
        sidebarDatabase: jquery(define.sidebarDatabaseSelector)
    };
});