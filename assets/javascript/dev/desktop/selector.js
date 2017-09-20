define([
    "jquery",
    "define"
], function(
    jquery,
    define
) {
    return {
        containerFull: jquery(define.containerFullSelector),
        container:     jquery(define.containerSelector),
        header:        jquery(define.headerSelector),
        sidebar:       jquery(define.sidebarSelector),
        content:       jquery(define.contentSelector),
        loading:       jquery(define.loadingSelector),
        login:         jquery(define.loginSelector),

        sidebarFile:     jquery(define.sidebarFileSelector),
        sidebarDatabase: jquery(define.sidebarDatabaseSelector)
    };
});