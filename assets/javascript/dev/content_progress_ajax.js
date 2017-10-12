var ContentProgressAjax = {
    progress: function(url, data, xhr, callbackRemoveEvent) {
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

        ProgressBarBody.updateProgressCurrent(80);
        ProgressBarBody.repaint();

        var containerTagBegin = "<div id=\"container\">";
        var containerTagEnd   = "</div>";
        var containerPosBegin = data.indexOf(containerTagBegin);
        var containerPosEnd   = data.lastIndexOf(containerTagEnd);

        if (containerPosBegin === -1 || containerPosEnd === -1)
            return;

        ProgressBarBody.updateProgressCurrent(84);
        ProgressBarBody.repaint();

        if (typeof callbackRemoveEvent !== "undefined")
            callbackRemoveEvent();

        ProgressBarBody.updateProgressCurrent(86);
        ProgressBarBody.repaint();

        var container        = data.substr(containerPosBegin + containerTagBegin.length, containerPosEnd - (containerPosBegin + containerTagBegin.length));
        var containerElement = document.getElementById("container");

        ProgressBarBody.updateProgressCurrent(90);
        ProgressBarBody.repaint();

        containerElement.innerHTML = container;

        if (document.documentElement.pageYOffset)
            document.documentElement.pageYOffset = 0;

        if (document.documentElement.scrollTop)
            document.documentElement.scrollTop = 0;

        if (window.scrollTo)
            window.scrollTo(0, 0);

        ProgressBarBody.updateProgressCurrent(96);
        ProgressBarBody.repaint();

        if (xhr.responseURL && xhr.responseURL != null && xhr.responseURL.length > 0)
            url = xhr.responseURL;

        if (window.history.pushState) {
            window.history.pushState({
                path: url
            }, '', url);
        } else if (History.pushState) {
            History.pushState(null, null, url);
        }

        ProgressBarBody.updateProgressCurrent(98);
        ProgressBarBody.repaint();

        if (OnLoad.reonload)
            OnLoad.reonload();

        if (OnLoad.reload)
            OnLoad.reload();
    }
};