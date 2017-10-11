var ButtonSaveOnJavascript = {
    buttonElement: null,

    isKeyCtrl: true,
    isKeyS:    false,

    WHICH_KEY_CTRL: 17,
    WHICH_KEY_S:    83,

    addEventSave: function() {
        var self           = ButtonSaveOnJavascript;
        self.buttonElement = document.getElementById("button-save-on-javascript");

        if (self.buttonElement === null || typeof self.buttonElement === "undefined" || typeof self.buttonElement.click === "undefined")
            return;

        var keydown = function(event) {
            if (event.which) {
                if (event.which === self.WHICH_KEY_S && event.ctrlKey && event.ctrlKey == true) {
                    self.isKeyS = true;
                    event.preventDefault();

                    return false;
                }
            }

            return true;
        };

        var keyup = function(event) {
            if (event.which && event.which == self.WHICH_KEY_CTRL) {
                self.isKeyCtrl = false;

                if (self.isKeyS == true) {
                    self.isKeyS = false;
                    self.saveActionEvent();
                    event.preventDefault();

                    return true;
                }
            }

            event.preventDefault();
            return false;
        };

        if (window.addEventListener) {
            window.addEventListener("keydown", keydown);
            window.addEventListener("keyup", keyup);
        } else if (window.attachEvent) {
            window.attachEvent("keydown", keydown);
            window.attachEvent("keyup", keyup);
        }
    },

    saveActionEvent: function() {
        if (ButtonSaveOnJavascript.buttonElement !== null && typeof ButtonSaveOnJavascript.buttonElement !== "undefined" && ButtonSaveOnJavascript.buttonElement.click)
            ButtonSaveOnJavascript.buttonElement.click();
    }
};

if (typeof OnLoad !== "undefined" && OnLoad.add)
    OnLoad.add(ButtonSaveOnJavascript.addEventSave);
else
    window.onload = ButtonSaveOnJavascript.addEventSave;