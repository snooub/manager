define([
    "ajax",
    "jquery",
    "container",
    "define"
], function(
    ajax,
    jquery,
    container,
    define
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
            if ((data.code_sys & define.code.is_not_login) !== 0) {
                console.log("is_not_login");
            }
            console.log(data);
        },

        show: function() {

        },

        hidden: function() {

        }
    };
});