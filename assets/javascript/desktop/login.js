define([
    "ajax",
    "jquery",
    "container",
    "define",
    "selector",
    "alert",
    "contextmenu",
    "sidebar",
    "content"
], function(
    ajax,
    jquery,
    container,
    define,
    selector,
    alert,
    contextmenu,
    sidebar,
    content
) {
    return {
        lang: null,

        init: function(lang) {
            this.lang = lang;

            var self    = this;
            var request = ajax.open({
                url: ajax.script.login,

                data: {
                    init: true
                },

                begin: function(xhr) {
                    container.startLoading(lang.get("user.login.alert.loging_check"));
                },

                end: function(xhr) {
                    container.stopLoading();
                },

                success: function(data) {
                    if (self.check(data))
                        self.run(self);
                }
            });
        },

        check: function(data) {
            if ((data.code_sys & define.code.is_not_login) !== 0)
                this.show();
            else
                return true;

            return false;
        },

        show: function() {
            var self = this;

            container.hidden();
            alert.add(this.lang.get("user.login.alert.not_login"));

            selector.login.stop().css({ display: "block", opacity: 0 }).animate({ opacity: 1 }, define.time.animate_show, function() {
                var form     = selector.login.find("form");
                var username = form.find("input[name=username]");
                var password = form.find("input[name=password]");
                var submit   = form.find("button[type=submit]");

                form.unbind("submit").bind("submit", function() {
                    ajax.open({
                        url: ajax.script.login,

                        data: {
                            username: username.val(),
                            password: password.val(),
                            submit:   submit.val()
                        },

                        begin: function() {
                            container.startLoading(self.lang.get("user.login.alert.loging"));
                        },

                        end: function() {
                            container.stopLoading();
                        },

                        success: function(data) {
                            if (self.check(data)) {
                                self.hidden();
                                self.run(self);
                            }
                        }
                    });
                });
            });
        },

        hidden: function() {
            selector.login.stop().animate({ opacity: 0 }, define.time.animate_hidden, function() {
                selector.login.css({ display: "none" });
            });
        },

        run: function(instance) {
            if (typeof instance === "undefined")
                instance = this;

            container.show();
            contextmenu.init(instance.lang, instance);
            sidebar.file.init(instance.lang, instance, content);
            content.file.init(instance.lang, instance);
        }
    };
});