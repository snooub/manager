define(function(require) {
    return {
        code: {
            is_login:         1,
            is_not_login:     2,
            is_login_already: 4
        },

        time: {
            animate_show:   200,
            animate_hidden: 200
        },

        containerFullSelector: "div#container-full",
        containerSelector:     "div#container",
        headerSelector:        "div#header",
        sidebarSelector:       "div#sidebar",
        contentSelector:       "div#content",
        loadingSelector:       "div#loading",
        loadingNoticeSelector: "div#loading span.notice",
        alertSelector:         "div#alert",
        alertListSelector:     "div#alert > ul",
        loginSelector:         "div#login",

        sidebarFileSelector:     "div#sidebar div.sidebar-file",
        sidebarDatabaseSelector: "div#sidebar div.sidebar-database"
    };
});