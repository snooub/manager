define([
    "ajax",
    "jquery",
    "container",
    "define",
    "selector"
], function(
    ajax,
    jquery,
    container,
    define,
    selector
) {
    return {
        init: function() {
            var self    = this;
            var request = ajax.open({
                url: ajax.script.login,

                end: function(status, xhr) {
                    container.stopLoading();
                },

                success: function(data) {
                    if (self.check(data) != false);
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
            selector.login.stop().css({ display: "block", opacity: 0 }).animate({ opacity: 1 }, "slow", function() {
                var form     = selector.login.find("form");
                var username = form.find("input[name=username]");
                var password = form.find("input[name=password]");

                form.unbind("submit").bind("submit", function() {

                });
            });
        },

        hidden: function() {
            selector.login.stop().animate({ opacity: 0 }, function() {
                selector.login.css({ display: none });
            });
        }
    };
});