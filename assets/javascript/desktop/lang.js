define([
    "ajax",
    "login"
], function(
    ajax,
    login
) {
    return {
        datas:  [],
        caches: [],

        init: function() {
            var self = this;

            ajax.open({
                url: ajax.script.asset + "?lang",

                error: function(xhr, status) {
                    console.log(status);
                },

                success: function(data, status) {
                    self.datas = data;

                    self.render();
                    login.init();
                }
            });
        },

        render: function() {
            var self = this;

            $("*[lng*=\".\"]").each(function() {
                var element  = $(this);
                var lngValue = element.attr("lng");
                var tagName  = element.get(0).tagName.toLowerCase();

                if (tagName === "input") {
                    var type = element.attr("type");

                    if (type == "submit" || type == "radio" || type == "checkbox")
                        element.attr("value", self.get(lngValue));
                    else if (typeof element.attr("set") !== "undefined")
                        element.attr("value", self.get(lngValue));
                    else
                        element.attr("placeholder", self.get(lngValue));
                }  else {
                    element.html(self.get(lngValue));
                }
            });
        },

        get: function(name) {
            if (name == null || name.length <= 0 || name.indexOf(".") === -1) {
                console.log("Name is null");

                return null;
            }

            if (name.match(/^[a-zA-Z0-9_]+\s*\..+?$/)) {
                var keyCurrent = name;
                var prefixKey  = null;

                if (prefixKey != null)
                    keyCurrent = keyCurrent.substr(prefixKey.length);

                if (keyCurrent.indexOf(".") === 0)
                    keyCurrent = keyCurrent.substr(1);

                this.datas.forEach(function(entry) {
                    console.log(entry);
                });
            }

            return "Test";
        }
    };
});