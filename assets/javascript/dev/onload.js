var OnLoad = {
    funcs: [],
    reloads: [],

    add: function(func) {
        OnLoad.funcs.push(func);
    },

    addReload: function(func) {
        OnLoad.reloads.push(func);
    },

    execute: function() {
        var self = OnLoad;

        window.onload = function() {
            self.reonload();
        };
    },

    reonload: function() {
        var self    = OnLoad;
        var removes = [];

        for (var i = 0; i < self.funcs.length; ++i) {
            var func = self.funcs[i];

            if (typeof func === "function") {
                // Result is remove element, false = remove
                var res = func();

                if (typeof res !== "undefined" && res == false)
                    removes.push(i);
            }
        }

        if (removes.length <= 0)
            return;

        for (var i = removes.length - 1; i >= 0; --i)
            self.funcs.splice(removes[i], 1);
    },

    reload: function() {
        var self    = OnLoad;
        var removes = [];

        for (var i = 0; i < self.reloads.length; ++i) {
            var func = self.reloads[i];

            if (typeof func === "function") {
                // Result is remove element, false = remove
                var res = func();

                if (typeof res !== "undefined" && res == false)
                    removes.push(i);
            }
        }

        if (removes.length <= 0)
            return;

        for (var i = removes.length - 1; i >= 0; --i)
            self.funcs.splice(removes[i], 1);
    }
};

OnLoad.execute();