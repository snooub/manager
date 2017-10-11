var FormLoadAjax = {
    httpHost:            null,
    forms:               null,
    buttons:             null,
    buttonSubmit:        null,
    historyScriptLink:   null,

    init: function(httpHost, historyScriptLink) {
        FormLoadAjax.httpHost           = httpHost;
        FormLoadAjax.historyScriptLink  = historyScriptLink;

        FormLoadAjax.reinit();
    },

    reinit: function() {
        if (!window.history.pushState && !History.pushState && FormLoadAjax.historyScriptLink != null) {
            var head = document.getElementsByTagName("head");

            if (head.length > 0) {
                var history       = document.createElement("script");
                    history.type  = "text/javascript";
                    history.async = true;
                    history.src   = FormLoadAjax.historyScriptLink;

                head[0].appendChild(history);
            }

            function eventReload(e) {
                if ((e.which || e.keyCode) == 116 || (e.which || e.keyCode) == 82) {
                    var href      = window.location.href;
                    var hastagPos = href.indexOf("#");

                    if (hastagPos !== -1)
                        href = FormLoadAjax.httpHost + "/" + href.substr(hastagPos + 1);

                    window.location.href = href;

                    e.preventDefault();
                } else {
                    return true;
                }

                return false;
            }

            if (window.addEventListener)
                window.addEventListener("keydown", eventReload);
            else if (window.attachEvent)
                window.attachEvent("keydown", eventReload);

            FormLoadAjax.historyScriptLink = null;
        }

        FormLoadAjax.forms   = document.getElementsByTagName("form");
        FormLoadAjax.buttons = [];

        var inputs  = document.getElementsByTagName("input");
        var buttons = document.getElementsByTagName("button");
        var event   = "click";

        if (inputs.length && inputs.length > 0) {
            for (var i = 0; i < inputs.length; ++i) {
                var input = inputs[i];

                if (input.type && input.type.toLowerCase() === event) {
                    if (input.removeEventListener)
                        input.removeEventListener(event, FormLoadAjax.buttonEvent);
                    else if (input.detachEvent)
                        input.detachEvent(event, FormLoadAjax.buttonEvent);

                    if (input.addEventListener)
                        input.addEventListener(event, FormLoadAjax.buttonEvent);
                    else if (input.detachEvent)
                        input.detachEvent(event, FormLoadAjax.buttonEvent);

                    if (FormLoadAjax.buttons.push)
                        FormLoadAjax.buttons.push(input);
                }
            }
        }

        if (buttons.length && buttons.length > 0) {
            for (var i = 0; i < buttons.length; ++i) {
                var button = buttons[i];

                if (button.removeEventListener)
                    button.removeEventListener(event, FormLoadAjax.buttonEvent);
                else if (button.detachEvent)
                    button.detachEvent(event, FormLoadAjax.buttonEvent);

                if (button.addEventListener)
                    button.addEventListener(event, FormLoadAjax.buttonEvent);
                else if (button.detachEvent)
                    button.detachEvent(event, FormLoadAjax.buttonEvent);

                if (FormLoadAjax.buttons.push)
                    FormLoadAjax.buttons.push(button);
            }
        }

        for (var i = 0; i < FormLoadAjax.forms.length; ++i) {
            var form = FormLoadAjax.forms[i];

            if (!form.className || form.className.indexOf("not-autoload") === -1) {
                if (form.setAttribute)
                    form.setAttribute("onsubmit", "return false");
                else if (FormLoadAjax.forms.setAttributeNode)
                    form.setAttributeNode("onsubmit", "return false");

                if (form != null) {
                    if (form.removeEventListener)
                        form.removeEventListener("submit", FormLoadAjax.formEventsubmit);
                    else if (form.detachEvent)
                        form.detachEvent("submit", FormLoadAjax.formEventsubmit);

                    if (form.addEventListener)
                        form.addEventListener("submit", FormLoadAjax.formEventsubmit);
                    else if (form.attachEvent)
                        form.attachEvent("submit", FormLoadAjax.formEventsubmit);
                }
            }
        }
    },

    reload: function() {
        FormLoadAjax.reinit();
    },

    buttonEvent: function(e) {
        FormLoadAjax.buttonSubmit = this;
    },

    formEventsubmit: function(e) {
        var action = null;

        if (this.getAttribute)
            action = this.getAttribute("action");
        else if (this.getAttributeNode)
            action = this.getAttributeNode("action");
        else
            return null;

        if (action.indexOf && action.indexOf(FormLoadAjax.httpHost) === -1) {
            var strHttp  = "http://";
            var strHttps = "https://";
            var posHttp  = action.indexOf(strHttp);
            var posHttps = action.indexOf(strHttps);

            if (posHttp === -1 && posHttps === -1) {
                action = FormLoadAjax.httpHost + "/" + action;
            } else {
                var posEndHttp = strHttp.length;

                if (posHttps === 0)
                    posEndHttp = strHttps.length;

                var posSeparatorEndDomain = action.indexOf("/", posEndHttp);

                if (posSeparatorEndDomain !== -1)
                    action = action.substr(posSeparatorEndDomain + 1);

                action = FormLoadAjax.httpHost + "/" + action;
            }

        }

        var ajax = Ajax.open({
            url: action,
            method: "POST",
            dataFormElement: this,
            submitElement: FormLoadAjax.buttonSubmit,

            before: function(xhr) {
                ProgressBarBody.updateProgressCount(0);
                ProgressBarBody.updateProgressCurrent(30);
                ProgressBarBody.updateProgressTime(20);
            },

            end: function(xhr) {
                FormLoadAjax.reinit();

                ProgressBarBody.updateProgressCurrent(100);
                ProgressBarBody.repaint();
            },

            error: function(xhr) {

            },

            loadstart: function(e, xhr) {
                ProgressBarBody.repaint();
            },

            progress: function(e, xhr) {
                if (e.lengthComputable == false) {
                    ProgressBarBody.updateProgressCurrent(70);
                    ProgressBarBody.updateProgressTime(1);
                } else {
                    var percent = (e.loaded / e.total * 70);

                    if (percent > ProgressBarBody.getProgressCurrent())
                        ProgressBarBody.updateProgressCurrent(percent);

                    ProgressBarBody.updateProgressTime(ProgressBarBody.getProgressTime() - 1);
                }

                ProgressBarBody.repaint();
            },

            uploadProgress: function(e, xhr) {
                if (e.lengthComputable == false) {
                    ProgressBarBody.updateProgressCurrent(70);
                    ProgressBarBody.updateProgressTime(1);
                } else {
                    var percent = (e.loaded / e.total * 70);

                    if (percent > ProgressBarBody.getProgressCurrent())
                        ProgressBarBody.updateProgressCurrent(percent);

                    ProgressBarBody.updateProgressTime(ProgressBarBody.getProgressTime() - 1);
                }

                ProgressBarBody.repaint();
            },

            success: function(data, xhr) {
                var titleTagBegin = "<title>";
                var titleTagEnd   = "</title>";
                var titlePosBegin = data.indexOf(titleTagBegin);
                var titlePosEnd   = data.indexOf(titleTagEnd);

                if (titlePosBegin !== -1 && titlePosEnd !== -1) {
                    var titleStr     = data.substr(titlePosBegin + titleTagBegin.length, titlePosEnd - (titlePosBegin + titleTagBegin.length));
                    var titleElement = document.getElementsByTagName("title");

                    if (titleElement.length && titleElement.length > 0)
                        titleElement[0].innerHTML = titleStr;
                }

                var containerTagBegin = "<div id=\"container\">";
                var containerTagEnd   = "</div>";
                var containerPosBegin = data.indexOf(containerTagBegin);
                var containerPosEnd   = data.lastIndexOf(containerTagEnd);

                if (containerPosBegin === -1 || containerPosEnd === -1)
                    return;

                ProgressBarBody.updateProgressCurrent(75);
                ProgressBarBody.repaint();

                for (var i = 0; i < FormLoadAjax.buttons.length; ++i) {
                    if (FormLoadAjax.buttons[i].removeEventListener)
                        FormLoadAjax.buttons[i].removeEventListener("click", FormLoadAjax.formEventsubmit);
                    else if (FormLoadAjax.buttons[i].detachEvent)
                        FormLoadAjax.buttons[i].detachEvent("click", FormLoadAjax.formEventsubmit);
                }

                for (var i = 0; i < FormLoadAjax.forms.length; ++i) {
                    if (FormLoadAjax.forms[i].removeEventListener)
                        FormLoadAjax.forms[i].removeEventListener("submit", FormLoadAjax.formEventsubmit);
                    else if (FormLoadAjax.forms[i].detachEvent)
                        FormLoadAjax.forms[i].detachEvent("submit", FormLoadAjax.formEventsubmit);
                }

                ProgressBarBody.updateProgressCurrent(80);
                ProgressBarBody.repaint();

                var container        = data.substr(containerPosBegin + containerTagBegin.length, containerPosEnd - (containerPosBegin + containerTagBegin.length));
                var containerElement = document.getElementById("container");

                ProgressBarBody.updateProgressCurrent(85);
                ProgressBarBody.repaint();

                containerElement.innerHTML = container;

                ProgressBarBody.updateProgressCurrent(90);
                ProgressBarBody.repaint();

                if (xhr.responseURL && xhr.responseURL != null && xhr.responseURL.length > 0)
                    action = xhr.responseURL;

                if (window.history.pushState) {
                    window.history.pushState({
                        path: action
                    }, '', action);
                } else if (History.pushState) {
                    History.pushState(null, null, action);
                }

                ProgressBarBody.updateProgressCurrent(95);
                ProgressBarBody.repaint();

                if (OnLoad.reonload)
                    OnLoad.reonload();

                if (OnLoad.reload)
                    OnLoad.reload();
            }
        });

        return false;
    }
};