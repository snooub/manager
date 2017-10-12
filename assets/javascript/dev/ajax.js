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

        if (!options.uploadProgress)
            options.uploadProgress = function(event, xhr) { };

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

        xhr.upload.onprogress = function(e) {
            options.uploadProgress(e, xhr);
        };

        xhr.onloadend = function(e) {
            if (ready) {
                if (xhr.readyState == 4 && xhr.status == 200)
                    options.success(xhr.responseText, xhr);
                else
                    options.error(xhr);
            }

            options.loadend(e, xhr);
            options.end(xhr);
        };

        options.before(xhr);
        xhr.open(options.method, options.url, true);

        if (options.method === "POST") {
            var dataSend = new FormData();

            if (options.datas) {
                for (var key in options.datas)
                    dataSend.append(key, options.datas[key]);
            } else if (options.dataFormElement && options.dataFormElement.getElementsByTagName) {
                var arrays    = [];
                var inputs    = options.dataFormElement.getElementsByTagName("input");
                var textareas = options.dataFormElement.getElementsByTagName("textarea");

                if (inputs.length && inputs.length > 0) {
                    for (var i = 0; i < inputs.length; ++i)
                        arrays.push(inputs[i]);
                }

                if (textareas.length && textareas.length > 0) {
                    for (var i = 0; i < textareas.length; ++i)
                        arrays.push(textareas[i]);
                }

                if (arrays.length && arrays.length > 0) {
                    for (var i = 0; i < arrays.length; ++i) {
                        var input = arrays[i];

                        if (input.name && input.tagName && input.tagName.toLowerCase() === "textarea") {
                            var name  = input.name;
                            var value = input.value;

                            if (value == null || (value.length && value.length <= 0))
                                value = "";

                            dataSend.append(name, value);
                        } else if (input.type && input.type !== "submit" && input.name) {
                            if (input.type === "checkbox" || input.type === "radio") {
                                if (input.checked) {
                                    var value = null;

                                    if (input.value)
                                        value = input.value;

                                    if (value == null || (value.length && value.length <= 0))
                                        value = "";

                                    dataSend.append(input.name, value);
                                }
                            } else if (input.type === "file") {
                                var files = input[input.name];

                                if (files && files.length && files.length > 0) {
                                    for (var j = 0; j < files.length; ++j)
                                        dataSend.append(input.name, files[j]);
                                }
                            } else {
                                var value = null;

                                if (input.value)
                                    value = input.value;

                                if (value == null || (value.length && value.length <= 0))
                                    value = "";

                                dataSend.append(input.name, value);
                            }
                        }
                    }
                }
            }

            if (options.submitElement && options.submitElement.type && options.submitElement.type === "submit") {
                var value = null;

                if (options.submitElement.name) {
                    if (options.submitElement.value)
                        value = options.submitElement.value;
                    else if (options.submitElement.tagName.toLowerCase && options.submitElement.tagName.toLowerCase() === "button")
                        value = options.submitElement.innerHTML;

                    dataSend.append(options.submitElement.name, value);
                }
            }

            xhr.send(dataSend);
        } else {
            xhr.send();
        }
    },

    createXHR: function() {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else
            return new ActiveXObject("Microsoft.XMLHTTP");
    }
};