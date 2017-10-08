var UrlLoadAjax = {
    httpHost:            null,
    aLinks:              null,
    historyScriptLink:   null,
    progressBarInterval: null,
    progressBarElement:  null,
    progressCount:       0,
    progressCurrent:     0,
    progressTime:        0,

    init: function(httpHost, historyScriptLink) {
        UrlLoadAjax.httpHost           = httpHost;
        UrlLoadAjax.historyScriptLink  = historyScriptLink;
        UrlLoadAjax.progressBarElement = document.getElementById("progress-bar-body");

        UrlLoadAjax.reinit();
    },

    reinit: function() {
        if (!History.pushState && !window.history.pushState)
            return;

        UrlLoadAjax.aLinks = document.getElementsByTagName("a");

        for (var i = 0; i < UrlLoadAjax.aLinks.length; ++i) {
            var element = UrlLoadAjax.aLinks[i];

            if (!element.className || element.className.indexOf("not-autoload") === -1) {
                if (element.setAttribute)
                    element.setAttribute("onclick", "return false");
                else if (UrlLoadAjax.aLinks.setAttributeNode)
                    element.setAttributeNode("onclick", "return false");

                element.addEventListener("click", UrlLoadAjax.eventclick);
            }
        }
    },

    eventclick: function(e) {
        var href = this.href;

        if (href.indexOf(UrlLoadAjax.httpHost) === -1) {
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
                UrlLoadAjax.progressCount   = 0;
                UrlLoadAjax.progressCurrent = 50;
                UrlLoadAjax.progressTime    = 10;
            },

            end: function(xhr) {
                UrlLoadAjax.reinit();

                UrlLoadAjax.progressCurrent = 100;
                UrlLoadAjax.progressBar();
            },

            error: function(xhr) {

            },

            loadstart: function(e, xhr) {
                UrlLoadAjax.progressBar();
            },

            progress: function(e, xhr) {
                if (e.total <= 0) {
                    UrlLoadAjax.progressCurrent = 99;
                    UrlLoadAjax.progressTime    = 1;
                } else {
                    UrlLoadAjax.progressCurrent = (e.loaded / e.total * 99);
                    UrlLoadAjax.progressTime--;
                }

                UrlLoadAjax.progressBar();
            },

            success: function(data, xhr) {
                var containerTagBegin = "<div id=\"container\">";
                var containerTagEnd   = "</div>";
                var containerPosBegin = data.indexOf(containerTagBegin);
                var containerPosEnd   = data.lastIndexOf(containerTagEnd);

                if (containerPosBegin === -1 || containerPosEnd === -1)
                    return;

                if (window.history.pushState) {
                    window.history.pushState({
                        path: href
                    }, '', href);
                } else if (History.pushState) {
                    History.pushState({
                        path: href
                    }, '', href);
                } else {
                    return;
                }

                for (var i = 0; i < UrlLoadAjax.aLinks.length; ++i) {
                    if (UrlLoadAjax.aLinks[i].removeEventListener)
                        UrlLoadAjax.aLinks[i].removeEventListener("click", UrlLoadAjax.eventclick);
                }

                var container        = data.substr(containerPosBegin + containerTagBegin.length, containerPosEnd - (containerPosBegin + containerTagBegin.length));
                var containerElement = document.getElementById("container");

                containerElement.innerHTML  = container;

                if (OnLoad.reload)
                    OnLoad.reload();
            }
        });

        return false;
    },

    progressBar: function() {
        if (UrlLoadAjax.progressBarInterval != null)
            clearInterval(UrlLoadAjax.progressBarInterval, null);

        if (UrlLoadAjax.progressBarElement.style.display === "none")
            UrlLoadAjax.progressBarElement.style.width = "0%";

        UrlLoadAjax.progressBarElement.style.display = "block";

        UrlLoadAjax.progressBarInterval = setInterval(frame, UrlLoadAjax.progressTime);

        function frame() {
            if (UrlLoadAjax.progressCount >= UrlLoadAjax.progressCurrent || UrlLoadAjax.progressCount >= 100) {
                clearInterval(UrlLoadAjax.interval);
                UrlLoadAjax.progressBarElement.style.display = "none";
            } else {
                UrlLoadAjax.progressCount                 += 1;
                UrlLoadAjax.progressBarElement.style.width = UrlLoadAjax.progressCount + "%";
            }
        }
    }
};