define(function(require) {
    var jquery   = require("jquery");
    var selector = require("selector");

    return {
        maxShow: 5,

        type: {
            danger:  "danger",
            success: "success",
            info:    "info",
            warning: "warning"
        },

        arrays: [],

        init: function() {
            this.listenShow();
        },

        add: function(message, type) {
            if (!type)
                type = this.type.danger;

            this.arrays.push({
                message: message,
                type:    type
            });

            this.notifyChange();
        },

        notifyChange: function() {

        },

        listenShow: function() {
            var self = this;

            setInterval(function() {
                if (typeof self.arrays === "undefined")
                    return;

                var elementAlert     = selector.alert;
                var elementAlertList = selector.alertList;
                var lengthArray      = self.arrays.length;
                var lengthElement    = elementAlertList.childElementCount;

                if (lengthArray > 0) {
                    var entryArray  = self.arrays[0];
                    var buffer      = "<li class=\"" + entryArray.type + "\">";
                        buffer     += "<span>" + entryArray.message + "</span>";
                        buffer     += "</li>";

                    if (elementAlertList.get(0).scrollHeight > elementAlert.outerHeight()) {
                        var elementFist = elementAlertList.find("li:first-child");

                        elementFist.css({
                            display: "block",
                            width: elementFist.width(),
                            height: elementFist.height()
                        }).animate({
                            opacity: 0,
                            marginLeft: elementAlert.width() + "px",
                            marginTop:  "-" + elementFist.height() + "px",
                        }, 100, function() {
                            elementFist.remove();
                        });
                    }

                    elementAlertList.append(buffer);
                    elementAlert.css({ display: "block" });
                    self.arrays.splice(0, 1);
                }
            }, 1000);
        }
    };
});