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
        headerAction:  jquery(define.headerActionSelector),
        sidebar:       jquery(define.sidebarSelector),
        content:       jquery(define.contentSelector),
        loading:       jquery(define.loadingSelector),
        loadingNotice: jquery(define.loadingNoticeSelector),
        alert:         jquery(define.alertSelector),
        alertList:     jquery(define.alertListSelector),
        login:         jquery(define.loginSelector),

        sidebarFile:     jquery(define.sidebarFileSelector),
        sidebarDatabase: jquery(define.sidebarDatabaseSelector)
    };
});