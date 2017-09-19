define([
    "jquery",
    "define",
    "alert"
], function(
    jquery,
    define,
    alert
) {
    return {
        script: {
            index: "index.php",
            login: "user/login.php"
        },

        status: {
            timeout:     "timeout",
            abort:       "abort",
            error:       "error",
            parsererror: "parsererror"
        },

        open: function(options) {
            if (!options.async)
                options.async = true;

            if (!options.method)
                options.method = "POST";

            if (!options.cache)
                options.cache = false;

            if (!options.dataType)
                options.dataType = "json";

            var self           = this;
            var handlerError   = null;
            var handlerSuccess = null;
            var handlerEnd     = null;

            if (!options.error)
                handlerError = function(xhr, status, throws) {};
            else
                handlerError = options.error;

            if (!options.success)
                handlerSuccess = function(data, status, xhr) {};
            else
                handlerSuccess = options.success;

            if (!options.end)
                handlerEnd = function() {};
            else
                handlerEnd = options.end;

            options.error = function(xhr, status, throws) {
                if (status === self.status.parsererror)
                    alert.add(xhr.responseText);

                handlerError(xhr, status, throws);
                handlerEnd(status, xhr);
            };

            options.success = function(data, status, xhr) {
                var dataAlert    = data.alert;
                var dataContents = data.datas;
                var dataCode     = data.code;
                var dataCodeSys  = data.code_sys;

                if (dataAlert.length > 0) {
                    for (var i = 0; i < dataAlert.length; ++i)
                        alert.add(dataAlert[i].message, dataAlert[i].type);
                }

                handlerSuccess(data, status, xhr);
                handlerEnd(status, xhr);
            };

            return jquery.ajax(options);
        }
    };
});