define([
    "ajax",
    "jquery",
    "scroll",
    "define",
    "selector",

    "lib/file"
], function(
    ajax,
    jquery,
    scroll,
    define,
    selector,
    file
) {
    return {
        file: {
            lang:  null,
            login: null,

            init: function(lang, login) {
                this.lang  = lang;
                this.login = login;

                this.fixSize();
            },

            fixSize: function() {
                var height         = selector.contentFileManager.height();
                var locationHeight = selector.contentFileManagerLocation.height();
                var listHeight     = height - locationHeight;

                selector.contentFileManagerList.css({
                    height: listHeight + "px"
                });

                scroll.emulator(define.contentFileManagerListSelector);
            },

            renderDataList: function(dataPath, dataList) {
                selector.contentFileManagerList.stop().css({
                    display: "block",
                    opacity: 0
                });

                var buffer = "";
                var entry  = null;

                for (var i = 0; i < dataList.length; ++i) {
                    entry = dataList[i];

                    if (entry.is_directory)
                        buffer += "<li name=\"" + entry.name + "\" is_directory=\"true\">";
                    else
                        buffer += "<li name=\"" + entry.name + "\" is_directory=\"false\">";

                    buffer += "<div>";
                    buffer += "<p class=\"label\">";

                    if (entry.is_directory)
                        buffer += "<span class=\"icomoon icon-folder\"></span>";
                    else
                        buffer += "<span class=\"icomoon " + entry.icon + "\"></span>";

                    buffer += "<span class=\"filename\">" + entry.name + "</span>";
                    buffer += "</p>";
                    buffer += "<p class=\"info\">";

                    if (entry.is_directory == false)
                        buffer += "<span class=\"size\">" + file.parseSize(entry.size) + "</span><span>,</span>";

                    buffer += "<span class=\"perms\">" + entry.perms + "</span>";
                    buffer += "</p>";
                    buffer += "</li>";
                }

                selector.contentFileManagerListRender.html(buffer);
                selector.contentFileManagerList.animate({
                    opacity: 1
                }, define.time.animate_show);
            }
        }
    };
});