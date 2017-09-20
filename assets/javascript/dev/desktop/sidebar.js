define([
    "ajax",
    "jquery",
    "selector"
], function(
    ajax,
    jquery,
    selector
) {
    return {
        initFile: function() {
            var request = ajax.open({
                url: ajax.script.index + "?directory=F:/"
            });
        },

        initDatabase: function() {

        }
    };
});