var UrlLoadAjax = {
    httpHost:            null,
    aLinks:              null,
    historyScriptLink:   null,

    init: function(httpHost, historyScriptLink) {
        UrlLoadAjax.httpHost           = httpHost;
        UrlLoadAjax.historyScriptLink  = historyScriptLink;
        UrlLoadAjax.reinit();
    },

    reinit: function() {
        if (!window.history.pushState && !History.pushState && UrlLoadAjax.historyScriptLink != null) {
            var head = document.getElementsByTagName("head");

            if (head.length > 0) {
                var history       = document.createElement("script");
                    history.type  = "text/javascript";
                    history.async = true;
                    history.src   = UrlLoadAjax.historyScriptLink;

                head[0].appendChild(history);
            }

            function eventReload(e) {
                if ((e.which || e.keyCode) == 116 || (e.which || e.keyCode) == 82) {
                    var href      = window.location.href;
                    var hastagPos = href.indexOf("#");

                    if (hastagPos !== -1)
                        href = UrlLoadAjax.httpHost + "/" + href.substr(hastagPos + 1);

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

            UrlLoadAjax.historyScriptLink = null;
        }

        UrlLoadAjax.aLinks = document.getElementsByTagName("a");

        for (var i = 0; i < UrlLoadAjax.aLinks.length; ++i) {
            var element = UrlLoadAjax.aLinks[i];

            if (!element.className || element.className.indexOf("not-autoload") === -1) {
                if (element.setAttribute)
                    element.setAttribute("onclick", "return false");
                else if (UrlLoadAjax.aLinks.setAttributeNode)
                    element.setAttributeNode("onclick", "return false");

                if (element != null) {
                    if (element.addEventListener)
                        element.addEventListener("click", UrlLoadAjax.eventclick);
                    else if (element.attachEvent)
                        element.attachEvent("click", UrlLoadAjax.eventclick);
                }
            }
        }
    },

    reload: function() {
        UrlLoadAjax.reinit();
    },

    eventclick: function(e) {
        if (!this.href)
            return;

        var href = this.href;

        if (href.indexOf && href.indexOf(UrlLoadAjax.httpHost) === -1) {
            var strHttp  = "http://";
            var strHttps = "https://";
            var posHttp  = href.indexOf(strHttp);
            var posHttps = href.indexOf(strHttps);

            if (posHttp === -1 && posHttps === -1) {
                href = UrlLoadAjax.httpHost + "/" + href;
            } else {
                var posEndHttp = strHttp.length;

                if (posHttps === 0)
                    posEndHttp = strHttps.length;

                var posSeparatorEndDomain = href.indexOf("/", posEndHttp);

                if (posSeparatorEndDomain !== -1)
                    href = href.substr(posSeparatorEndDomain + 1);

                href = UrlLoadAjax.httpHost + "/" + href;
            }

        }

        var ajax = Ajax.open({
            url: href,

            before: function(xhr) {
                ProgressBarBody.updateProgressCount(0);
                ProgressBarBody.updateProgressCurrent(30);
                ProgressBarBody.updateProgressTime(20);
            },

            end: function(xhr) {
                UrlLoadAjax.reinit();

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

            success: function(data, xhr) {
                var containerTagBegin = "<div id=\"container\">";
                var containerTagEnd   = "</div>";
                var containerPosBegin = data.indexOf(containerTagBegin);
                var containerPosEnd   = data.lastIndexOf(containerTagEnd);

                if (containerPosBegin === -1 || containerPosEnd === -1)
                    return;

                ProgressBarBody.updateProgressCurrent(75);
                ProgressBarBody.repaint();

                for (var i = 0; i < UrlLoadAjax.aLinks.length; ++i) {
                    if (UrlLoadAjax.aLinks[i].removeEventListener)
                        UrlLoadAjax.aLinks[i].removeEventListener("click", UrlLoadAjax.eventclick);
                    else if (UrlLoadAjax.aLinks[i].detachEvent)
                        UrlLoadAjax.aLinks[i].detachEvent("click", UrlLoadAjax.eventclick);
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
                    href = xhr.responseURL;

                if (window.history.pushState) {
                    window.history.pushState({
                        path: href
                    }, '', href);
                } else if (History.pushState) {
                    History.pushState(null, null, href);
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