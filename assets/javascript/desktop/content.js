define([
    "ajax",
    "jquery",
    "scroll",
    "define",
    "selector",
    "contextmenu",
    "lib/file",
    "lib/url"
], function(
    ajax,
    jquery,
    scroll,
    define,
    selector,
    contextmenu,
    file,
    url
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

            renderLocationPath: function(dataPath) {
                var pathSplits     = [];
                var pathSplitsTmp  = [];
                var pathSeparator  = "/";
                var pathBuffer     = "";
                var buffer         = "";

                if (dataPath.indexOf("/") === 0) {
                    pathSplits.push("/");
                    dataPath = dataPath.substr(1);
                } else {
                    pathSeparator = "\\";
                }

                pathSplitsTmp = dataPath.split(pathSeparator);

                for (var i = 0; i < pathSplitsTmp.length; ++i)
                    pathSplits.push(pathSplitsTmp[i]);

                for (var i = 0; i < pathSplits.length; ++i) {
                    var pathOffset  = pathSplits[i];
                        pathBuffer += pathOffset;

                    if ((i === 0 && pathSeparator === "\\") || i > 0)
                        pathBuffer += pathSeparator;

                    buffer += "<li path=\"" + url.rawEncode(pathBuffer) + "\">";
                    buffer += "<span class=\"label\">" + pathOffset + "</span>";

                    if (i + 1 < pathSplits.length)
                        buffer += "<span class=\"separator\"></span>";

                    buffer += "</li>";
                }

               selector.contentFileManagerLocation.html(buffer);
            },

            renderDataList: function(dataPath, dataList) {
                this.renderLocationPath(dataPath);

                selector.contentFileManagerList.stop().css({
                    display: "inline-block",
                    opacity: 0
                });

                selector.contentFileManagerListRender.find("div:only-child").each(function() {
                    $(this).unbind("click contextmenu");
                });

                var buffer = "";
                var entry  = null;

                for (var i = 0; i < dataList.length; ++i) {
                    entry = dataList[i];

                    if (entry.is_directory)
                        buffer += "<li name=\"" + entry.name + "\" is_directory=\"true\" path=\"" + url.rawEncode(entry.path) + "\">";
                    else
                        buffer += "<li name=\"" + entry.name + "\" is_directory=\"false\" path=\"" + url.rawEncode(entry.path) + "\">";

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

                selector.contentFileManagerListRender.html(buffer).find("div:only-child").each(function() {
                    var element = $(this);

                    element.unbind("click contextmenu").bind("click", function() {
                        var element = $(this);

                        console.log("Click");
                        console.log(element);
                    }).bind("contextmenu", function(e) {
                        contextmenu.show(element, {
                            open:   "Mở",
                            copy:   "Sao chép",
                            move:   "Di chuyển",
                            delete: "Xóa",
                            chmod:  "Phân quyền",
                            info:   "Thông tin"
                        }, function(index, object) {
                            console.log(index);
                            console.log(object);
                        });

                        e.preventDefault();
                    });
                });

                selector.contentFileManagerList.animate({
                    opacity: 1
                }, define.time.animate_show);
            }
        }
    };
});