define(function(require) {
    var ajax     = require("ajax");
    var jquery   = require("jquery");
    var selector = require("selector");

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