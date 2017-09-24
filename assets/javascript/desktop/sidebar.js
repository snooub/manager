define([
    "ajax",
    "jquery",
    "define",
    "selector"
], function(
    ajax,
    jquery,
    define,
    selector
) {
    return {
        file: {
            login: null,

            init: function(lang, login) {
                this.lang  = lang;
                this.login = login;

                this.initFolderRoot();
                this.loadPath();
            },

            initFolderRoot: function() {
                var buffer  = "<li>";
                    buffer += "<p class=\"root\">";
                    buffer += "<span class=\"icomoon icon-folder\"></span>";
                    buffer += "<span>" + this.lang.get("default.loading") + "</span>";
                    buffer += "</p>";
                    buffer += "</li>";

                selector.sidebarFileList.html(buffer);
                this.repaintListEntry();
            },

            loadPath: function(path, elementEntry) {
                var url  = ajax.script.index;
                var self = this;

                if (typeof path === "string")
                    url += "?directory=" + path;

                if (typeof elementEntry === "undefined" || elementEntry.get(0).tagName.toLowerCase() !== "p")
                    elementEntry = selector.sidebarFileList.find("> li > p.root");

                var elementIcon   = elementEntry.find("span.icomoon");
                var elementParent = elementEntry.parent();

                var request = ajax.open({
                    url: ajax.script.index,

                    begin: function() {
                        self.startSpinner(elementParent);
                    },

                    end: function() {
                        self.stopSpinner(elementParent);
                        self.repaintListEntry();
                        self.bindClickListEntry();
                    },

                    success: function(data) {
                        if (self.login.check(data)) {
                            var elementSubList = elementParent.find("> p + ul");

                            if (elementSubList.length <= 0) {
                                elementParent.append("<ul></ul>");
                                elementSubList = elementParent.find("> p + ul");
                            }

                            self.renderDataList(elementSubList, data.data.path, data.data.list);
                        }
                    }
                });
            },

            bindClickListEntry: function() {
                selector.sidebarFileList.find("p").each(function() {
                    var element = $(this);

                    element.unbind("click").bind("click", function() {
                        console.log("Click: " + element);
                    }).unbind("contextmenu").bind("contextmenu", function(e) {
                        console.log("Context menu: " + element);

                        e.preventDefault();
                    });
                });
            },

            startSpinner: function(elementEntryLi) {
                var elementIcon = elementEntryLi.find("> p > span.icomoon");
                    elementIcon.removeClass("icon-folder")
                               .addClass("icon-spinner spinner-animation");
            },

            stopSpinner: function(elementEntryLi) {
                var elementIcon = elementEntryLi.find("> p > span.icomoon");
                    elementIcon.removeClass("icon-spinner spinner-animation")
                               .addClass("icon-folder");
            },

            renderDataList: function(elementSubList, dataPath, dataList) {
                elementSubList.stop().css({
                    display: "block",
                    opacity: 1
                });

                var pathSplits     = [];
                var pathSplitsTmp  = [];
                var pathSeparator  = "/";
                var elementCurrent = selector.sidebarFileList.find("> li");

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
                    var pathOffset = pathSplits[i];

                    if (i === 0) {
                        elementCurrent.find("span:last-child").html(pathOffset);
                    } else {
                        var elementSub = elementCurrent.find("> ul > li[name=\"" + pathOffset + "\"]");

                        if (typeof elementSub === "undefined" || elementSub.length <= 0) {
                            var elementSubBuffer  = "<ul>";
                                elementSubBuffer += "<li name=\"" + pathOffset + "\" is_directory=\"true\">";
                                elementSubBuffer += "<p>";
                                elementSubBuffer += "<span class=\"icomoon icon-folder\"></span>";
                                elementSubBuffer += "<span>" + pathOffset + "</span>";
                                elementSubBuffer += "</p>";
                                elementSubBuffer += "</li>";
                                elementSubBuffer += "</ul>";

                            elementCurrent.append(elementSubBuffer);
                            elementSub = elementCurrent.find("> ul > li[name=\"" + pathOffset + "\"]");
                        }

                        elementCurrent = elementSub;
                    }
                }

                var elementUl = elementCurrent;
                var buffer    = "";
                var entry     = null;

                if (elementCurrent.find("> p + ul").length <= 0)
                    elementUl.append("<ul></ul>");

                elementUl = elementUl.find("> p + ul");

                for (var i = 0; i < dataList.length; ++i) {
                    entry   = dataList[i];

                    if (entry.is_directory)
                        buffer += "<li name=\"" + entry.name + "\" is_directory=\"true\">";
                    else
                        buffer += "<li name=\"" + entry.name + "\" is_directory=\"false\">";

                    buffer += "<p>";

                    if (entry.is_directory)
                        buffer += "<span class=\"icomoon icon-folder\"></span>";
                    else
                        buffer += "<span class=\"icomoon icon-file\"></span>";

                    buffer += "<span>" + entry.name + "</span>";
                    buffer += "</p>";
                    buffer += "</li>";
                }

                elementUl.append(buffer);
            },

            repaintListEntry: function() {
                selector.sidebarFileList.find("li > p").each(function() {
                    var element     = $(this);
                    var parent      = element.parent().parent().parent();
                    var paddingLeft = 0;

                    if (typeof element.attr("class") === "undefined" || element.attr("class").indexOf("root") === -1)
                        paddingLeft += 30;
                    else
                        paddingLeft += 10;

                    var nextElement = element.next();

                    if (typeof nextElement !== "undefined" && nextElement.length > 0) {
                        var nextTagName = nextElement.get(0).tagName.toLowerCase();

                        if (nextTagName === "ul")
                            element.find("span.icomoon").removeClass("icon-folder icon-spinner spinner-animation").addClass("icon-folder-open");
                    }

                    if (typeof parent !== "undefined" && parent.get(0).tagName.toLowerCase() === "li") {
                        var elementLabel      = parent.find("p:first-child");
                        var parentPaddingLeft = elementLabel.css("paddingLeft");

                        if (typeof parentPaddingLeft === "undefined")
                            parentPaddingLeft = 5;
                        else if (parentPaddingLeft.indexOf("px") !== -1)
                            parentPaddingLeft = parseInt(parentPaddingLeft.substr(0, parentPaddingLeft.length - 2));
                        else
                            parentPaddingLeft = 10;

                        paddingLeft += parentPaddingLeft;
                    }

                    element.css({
                        paddingLeft: paddingLeft + "px"
                    });
                });
            }
        },

        database: {
            initDatabase: function() {

            }
        }
    };
});