var Ajax = {
    open: function(options) {
        var xhr   = Ajax.createXHR();
        var ready = false;

        if (!options.url)
            return;

        if (!options.before)
            options.before = function(xhr) { };

        if (!options.end)
            options.end = function(xhr) { };

        if (!options.success)
            options.success = function(data, xhr) { };

        if (!options.error)
            options.error = function(xhr) { };

        if (!options.progress)
            options.progress = function(event, xhr) { };

        if (!options.loadstart)
            options.loadstart = function(event, xhr) { };

        if (!options.loadend)
            options.loadend = function(event, xhr) { };

        if (!options.method)
            options.method = "GET";

        xhr.onreadystatechange = function(e) {
            ready = true;
        };

        xhr.onloadstart = function(e) {
            options.loadstart(e, xhr);
        };

        xhr.onprogress = function(e) {
            options.progress(e, xhr);
        };

        xhr.onloadend = function(e) {
            if (ready) {
                if (xhr.readyState == 4 && xhr.status == 200)
                    options.success(xhr.responseText);
                else
                    options.error(xhr);
            }

            options.loadend(e, xhr);
            options.end(xhr);
        };

        options.before(xhr);
        xhr.open(options.method, options.url, true);
        xhr.send();
    },

    createXHR: function() {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else
            return new ActiveXObject("Microsoft.XMLHTTP");
    }
};