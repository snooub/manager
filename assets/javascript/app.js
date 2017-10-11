var OnLoad = {
    funcs: [],
    reloads: [],

    add: function(func) {
        OnLoad.funcs.push(func);
    },

    addReload: function(func) {
        OnLoad.reloads.push(func);
    },

    execute: function() {
        var self = OnLoad;

        window.onload = function() {
            self.reonload();
        };
    },

    reonload: function() {
        var self    = OnLoad;
        var removes = [];

        for (var i = 0; i < self.funcs.length; ++i) {
            var func = self.funcs[i];

            if (typeof func === "function") {
                // Result is remove element, false = remove
                var res = func();

                if (typeof res !== "undefined" && res == false)
                    removes.push(i);
            }
        }

        if (removes.length <= 0)
            return;

        for (var i = removes.length - 1; i >= 0; --i)
            self.funcs.splice(removes[i], 1);
    },

    reload: function() {
        var self    = OnLoad;
        var removes = [];

        for (var i = 0; i < self.reloads.length; ++i) {
            var func = self.reloads[i];

            if (typeof func === "function") {
                // Result is remove element, false = remove
                var res = func();

                if (typeof res !== "undefined" && res == false)
                    removes.push(i);
            }
        }

        if (removes.length <= 0)
            return;

        for (var i = removes.length - 1; i >= 0; --i)
            self.funcs.splice(removes[i], 1);
    }
};

OnLoad.execute();
var ProgressBarBody = {
    progressBarElement:  null,
    progressBarInterval: null,
    progressCount:       0,
    progressCurrent:     0,
    progressTime:        0,

    init: function() {
        if (ProgressBarBody.progressBarElement == null)
            ProgressBarBody.progressBarElement = document.getElementById("progress-bar-body");
    },

    updateProgressCurrent: function(current) {
        ProgressBarBody.progressCurrent = current;
    },

    getProgressCurrent: function() {
        return ProgressBarBody.progressCurrent;
    },

    updateProgressTime: function(time) {
        ProgressBarBody.progressTime = time;
    },

    getProgressTime: function() {
        return ProgressBarBody.progressTime;
    },

    updateProgressCount: function(count) {
        ProgressBarBody.progressCount = count;
    },

    getProgressCount: function() {
        return ProgressBarBody.progressCount;
    },

    repaint: function() {
        ProgressBarBody.init();

        if (ProgressBarBody.progressBarInterval != null)
            clearInterval(ProgressBarBody.progressBarInterval, null);

        if (ProgressBarBody.progressBarElement.style.display === "none")
            ProgressBarBody.progressBarElement.style.width = "0%";

        ProgressBarBody.progressBarElement.style.display = "block";
        ProgressBarBody.progressBarInterval = setInterval(frame, ProgressBarBody.progressTime);

        function frame() {
            if (ProgressBarBody.progressCount >= ProgressBarBody.progressCurrent || ProgressBarBody.progressCount >= 100) {
                clearInterval(ProgressBarBody.interval);

                if (ProgressBarBody.progressCount >= 100)
                    ProgressBarBody.progressBarElement.style.display = "none";
            } else {
                ProgressBarBody.progressCount                 += 1;
                ProgressBarBody.progressBarElement.style.width = ProgressBarBody.progressCount + "%";
            }
        }
    }
};
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
                var inputs = options.dataFormElement.getElementsByTagName("input");

                if (inputs.length && inputs.length > 0) {
                    for (var i = 0; i < inputs.length; ++i) {
                        var input = inputs[i];

                        if (input.type && input.type !== "submit" && input.name) {
                            if (input.type === "checkbox" || input.type === "radio") {
                                if (input.checked) {
                                    var value = null;

                                    if (input.value)
                                        value = input.value;

                                    if (value == null || (value.length && value <= 0))
                                        value = "";

                                    dataSend.append(input.name, value);
                                }
                            } else if (input.type === "file") {
                                var files = input.files;

                                if (files && files.length && files.length > 0) {
                                    for (var j = 0; j < files.length; ++j)
                                        dataSend.append(input.name, files[j]);
                                }
                            } else {
                                var value = null;

                                if (input.value)
                                    value = input.value;

                                if (value == null || (value.length && value <= 0))
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
var AutoFocusInputLast = {
    elements: [],

    execute: function() {
        var inputs    = document.getElementsByTagName("input");
        var textareas = document.getElementsByTagName("textarea");

        if (typeof inputs !== "undefined" && inputs.length > 0) {
            for (var i = 0; i < inputs.length; ++i) {
                var element = inputs[i];

                if (element.type) {
                    var type = element.type;

                    if (type === "text" || type === "password" || type === "number") {
                        AutoFocusInputLast.elements.push(element);
                        AutoFocusInputLast.addListener(element);
                    }
                }
            }
        }

        if (typeof textareas !== "undefined" && textareas.length > 0) {
            for (var i = 0; i < textareas.length; ++i) {
                AutoFocusInputLast.elements.push(textareas[i]);
                AutoFocusInputLast.addListener(textareas[i]);
            }
        }

        AutoFocusInputLast.autoFocusOnHastagUrl(true);
    },

    addListener: function(element) {
        if (element.addEventListener) {
            element.addEventListener("focus", function() {
                AutoFocusInputLast.addHastagToForm(element);
            });
        } else if (element.attachEvent) {
            element.attachEvent("focus", function() {
                AutoFocusInputLast.addHastagToForm(element);
            });
        }
    },

    autoFocusOnHastagUrl: function() {
        var hrefLocation = window.location.href;

        if (hrefLocation !== null && hrefLocation.length > 0) {
            var hastagIndexHrefLocation = hrefLocation.lastIndexOf("#");
            var hastagValue             = null;

            if (hastagIndexHrefLocation !== -1) {
                hastagValue = hrefLocation.substring(hastagIndexHrefLocation + 1);

                AutoFocusInputLast.cleanAutoFocusElement();
                AutoFocusInputLast.putAutoFocusElementName(hastagValue, true);
            } else if (AutoFocusInputLast.elements.length && AutoFocusInputLast.elements.length > 0) {
                AutoFocusInputLast.cleanAutoFocusElement();
                AutoFocusInputLast.putAutoFocusElement(AutoFocusInputLast.elements[0]);
            }
        }
    },

    addHastagToForm: function(element) {
        if (element.form && typeof element.form !== "undefined") {
            var actionForm   = null;
            var hrefLocation = window.location.href;
            var nameElement  = element.name;

            if (element.form.getAttribute)
                actionForm = element.form.getAttribute("action");
            else if (element.form.getAttributeNode)
                actionForm = element.form.getAttributeNode("action");

            if (actionForm !== null && actionForm.length > 0) {
                var hastagIndexAction = actionForm.lastIndexOf("#");

                if (hastagIndexAction !== -1)
                    actionForm = actionForm.substring(0, hastagIndexAction);
            }

            if (hrefLocation !== null && hrefLocation.length > 0) {
                var hastagIndexHrefLocation = hrefLocation.lastIndexOf("#");

                if (hastagIndexHrefLocation !== -1)
                    hrefLocation = hrefLocation.substring(0, hastagIndexHrefLocation);
            }

            if (typeof nameElement !== "undefined" && nameElement !== null)
                nameElement = element.tagName.toLowerCase() + "_" + nameElement;

            element.form.action  = actionForm + "#" + nameElement;
            window.location.href = actionForm + "#" + nameElement;

            AutoFocusInputLast.cleanAutoFocusElement();
            AutoFocusInputLast.putAutoFocusElement(element);
        }
    },

    cleanAutoFocusElement: function() {
        if (typeof AutoFocusInputLast.elements === "undefined" && AutoFocusInputLast.elements.length <= 0)
            return;

        for (var i = 0; i < AutoFocusInputLast.elements.length; ++i) {
            var element = AutoFocusInputLast.elements[i];

            if (element.removeAttribute)
                element.removeAttribute("autofocus", "autofocus");
            else if (element.removeAttributeNode)
                element.removeAttributeNode("autofocus", "autofocus");
        }
    },

    putAutoFocusElement: function(element, isFocusOnHastag) {
        if (element.setAttribute)
            element.setAttribute("autofocus", "autofocus");
        else if (element.setAttributeNode)
            element.setAttributeNode("autofocus", "autofocus");

        element.focus();

        if (isFocusOnHastag) {
            var scrollTopElement = document.documentElement || document.body;
            var scrollTop        = window.pageYOffset || scrollTopElement.scrollTop;
            var elementOffsetTop = element.offsetTop + element.form.offsetTop;

            if (scrollTop > elementOffsetTop)
                scrollTopElement.scrollTop = elementOffsetTop;
        }
    },

    putAutoFocusElementName: function(name, isFocusOnHastag) {
        if (typeof AutoFocusInputLast.elements === "undefined" && AutoFocusInputLast.elements.length <= 0)
            return;

        for (var i = 0; i < AutoFocusInputLast.elements.length; ++i) {
            var element     = AutoFocusInputLast.elements[i];
            var nameElement = element.name;

            if (typeof nameElement !== "undefined" && nameElement !== null)
                nameElement = element.tagName.toLowerCase() + "_" + nameElement;
            else
                nameElement = element.tagName.toLowerCase();

            if (nameElement === name)
                AutoFocusInputLast.putAutoFocusElement(element, isFocusOnHastag);
        }
    }
};

if (typeof OnLoad !== "undefined" && OnLoad.add)
    OnLoad.add(AutoFocusInputLast.execute);
else
    window.onload = AutoFocusInputLast.execute;
var ButtonSaveOnJavascript = {
    buttonElement: null,

    isKeyCtrl: true,
    isKeyS:    false,

    WHICH_KEY_CTRL: 17,
    WHICH_KEY_S:    83,

    addEventSave: function() {
        var self           = ButtonSaveOnJavascript;
        self.buttonElement = document.getElementById("button-save-on-javascript");

        if (self.buttonElement === null || typeof self.buttonElement === "undefined" || typeof self.buttonElement.click === "undefined")
            return;

        var keydown = function(event) {
            if (event.which) {
                if (event.which === self.WHICH_KEY_S && event.ctrlKey && event.ctrlKey == true) {
                    self.isKeyS = true;
                    event.preventDefault();

                    return false;
                }
            }

            return true;
        };

        var keyup = function(event) {
            if (event.which && event.which == self.WHICH_KEY_CTRL) {
                self.isKeyCtrl = false;

                if (self.isKeyS == true) {
                    self.isKeyS = false;
                    self.saveActionEvent();
                    event.preventDefault();

                    return true;
                }
            }

            event.preventDefault();
            return false;
        };

        if (window.addEventListener) {
            window.addEventListener("keydown", keydown);
            window.addEventListener("keyup", keyup);
        } else if (window.attachEvent) {
            window.attachEvent("keydown", keydown);
            window.attachEvent("keyup", keyup);
        }
    },

    saveActionEvent: function() {
        if (ButtonSaveOnJavascript.buttonElement !== null && typeof ButtonSaveOnJavascript.buttonElement !== "undefined" && ButtonSaveOnJavascript.buttonElement.click)
            ButtonSaveOnJavascript.buttonElement.click();
    }
};

if (typeof OnLoad !== "undefined" && OnLoad.add)
    OnLoad.add(ButtonSaveOnJavascript.addEventSave);
else
    window.onload = ButtonSaveOnJavascript.addEventSave;
var CheckboxCheckAll = {
    form:      null,
    checkall:  null,
    textCount: null,

    countCheckedItem:  0,
    countCheckboxItem: 0,

    onInitForm: function(idForm, idCheckboxAll, idElementTextCount) {
        CheckboxCheckAll.form      = document.getElementById(idForm);
        CheckboxCheckAll.checkall  = document.getElementById(idCheckboxAll);
        CheckboxCheckAll.textCount = document.getElementById(idElementTextCount);

        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        CheckboxCheckAll.updateCountCheckboxStatus();
        CheckboxCheckAll.putCountCheckedItem();
        CheckboxCheckAll.updateCheckboxAllCheckedStatus();
    },

    onCheckAll: function() {
        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        var checked = CheckboxCheckAll.checkall.checked == true;

        for (var i = 0; i < CheckboxCheckAll.form.elements.length; ++i) {
            var element = CheckboxCheckAll.form.elements[i];

            if (element.type && element.type === "checkbox" && element !== CheckboxCheckAll.checkall)
                element.checked = checked;
        }

        CheckboxCheckAll.updateCountCheckboxStatus();
        CheckboxCheckAll.putCountCheckedItem();
        CheckboxCheckAll.updateCheckboxAllCheckedStatus();
    },

    onCheckItem: function(idCheckboxItem) {
        var checkitem = document.getElementById(idCheckboxItem);

        if (typeof checkitem === "undefined" || checkitem === null || CheckboxCheckAll.isValidateVariable() == false)
            return;

        if (checkitem.type && checkitem.type === "checkbox")
            checkitem.cheked = checkitem.checked == true;

        CheckboxCheckAll.updateCountCheckboxStatus();
        CheckboxCheckAll.putCountCheckedItem();
        CheckboxCheckAll.updateCheckboxAllCheckedStatus();
    },

    putCountCheckedItem: function() {
        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        if (CheckboxCheckAll.countCheckedItem > 0)
            CheckboxCheckAll.textCount.innerHTML = "(" + CheckboxCheckAll.countCheckedItem + ")";
        else
            CheckboxCheckAll.textCount.innerHTML = null;
    },

    updateCountCheckboxStatus: function() {
        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        CheckboxCheckAll.countCheckboxItem = 0;
        CheckboxCheckAll.countCheckedItem  = 0;

        for (var i = 0; i < CheckboxCheckAll.form.elements.length; ++i) {
            var element = CheckboxCheckAll.form.elements[i];

            if (element.type && element.type === "checkbox" && element !== CheckboxCheckAll.checkall) {
                if (element.checked)
                    CheckboxCheckAll.countCheckedItem++;

                CheckboxCheckAll.countCheckboxItem++;
            }
        }
    },

    updateCheckboxAllCheckedStatus: function() {
        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        if (CheckboxCheckAll.countCheckedItem <= 0)
            CheckboxCheckAll.checkall.checked = false;
        else if (CheckboxCheckAll.countCheckedItem >= CheckboxCheckAll.countCheckboxItem)
            CheckboxCheckAll.checkall.checked = true;
    },

    isValidateVariable: function() {
        if (typeof CheckboxCheckAll.form === "undefined" || typeof CheckboxCheckAll.checkall === "undefined" || typeof CheckboxCheckAll.textCount === "undefined")
            return false;

        if (CheckboxCheckAll.form === null || CheckboxCheckAll.checkall === null || CheckboxCheckAll.textCount === null)
            return false;

        return true;
    }

};
var ChmodInput = {
    inputChmod:             null,
    inputChmodCheckbox:     null,
    listInputChmodCheckbox: null,

    onAddEventChmodListener: function(idInputChmod, idInputChmodCheckbox) {
        ChmodInput.inputChmod             = document.getElementById(idInputChmod);
        ChmodInput.inputChmodCheckbox     = document.getElementById(idInputChmodCheckbox);
        ChmodInput.listInputChmodCheckbox = [];

        if (ChmodInput.inputChmod == null || ChmodInput.inputChmodCheckbox == null)
            return;

        if (typeof ChmodInput.inputChmod === "undefined" || typeof ChmodInput.inputChmodCheckbox === "undefined")
            return;

        var inputEvent = function(env) {
            var chmod = ChmodInput.calculatorChmodInput();

            if (typeof chmod !== "undefined")
                ChmodInput.onCheckboxSetChecked(chmod.system, chmod.group, chmod.user);
        };

        if (ChmodInput.inputChmod.addEventListener)
            ChmodInput.inputChmod.addEventListener("input", inputEvent);
        else if (ChmodInput.inputChmod.attachEvent)
            ChmodInput.inputChmod.attachEvent("input", inputEvent);

        var inputChmodCheckboxElement = ChmodInput.inputChmodCheckbox.getElementsByTagName("input");

        if (inputChmodCheckboxElement.length) {
            for (var i = 0; i < inputChmodCheckboxElement.length; ++i) {
                var entry = inputChmodCheckboxElement[i];

                if (entry.type && entry.type == "checkbox") {
                    entry.addEventListener("click", function(env) {
                        var chmod = ChmodInput.calculatorChmodChecked();

                        if (typeof chmod !== "undefined")
                            ChmodInput.inputChmod.value = chmod;

                        chmod = ChmodInput.calculatorChmodInput();

                        if (typeof chmod !== "undefined")
                            ChmodInput.onCheckboxSetChecked(chmod.system, chmod.group, chmod.user);
                    });

                    ChmodInput.listInputChmodCheckbox.push(entry);
                }
            }

            var chmod = ChmodInput.calculatorChmodInput();

            if (typeof chmod !== "undefined")
                ChmodInput.onCheckboxSetChecked(chmod.system, chmod.group, chmod.user);
        }
    },

    calculatorChmodInput: function() {
        var array = {
            system: 0,
            group:  0,
            user:   0
        };

        if (typeof ChmodInput.inputChmod === "undefined")
            return array;

        var value  = ChmodInput.inputChmod.value;

        if (value == null || value.length <= 0)
            value = "";

        if (value.length < 1)
            value +="000";
        else if (value.length < 2)
            value += "00";
        else if (value.length < 3)
            value += "0";

        var length = value.length;

        if (length >= 3)
            array.system = parseInt(value.charAt(length - 3));

        if (length >= 2)
            array.group = parseInt(value.charAt(length - 2));

        if (length >= 1)
            array.user = parseInt(value.charAt(length - 1));

        if (array.system < 0 || array.system > 7)
            array.system = 0;

        if (array.group < 0 || array.group > 7)
            array.group = 0;

        if (array.user < 0 || array.user > 7)
            array.user = 0;

        return array;
    },

    calculatorChmodChecked: function() {
        if (typeof ChmodInput.listInputChmodCheckbox === "undefined")
            return;

        var system = 0;
        var group  = 0;
        var user   = 0;

        for (var i = 0; i < ChmodInput.listInputChmodCheckbox.length; ++i) {
            var checkbox = ChmodInput.listInputChmodCheckbox[i];

            if (checkbox.checked == true && checkbox.name && checkbox.name.search) {
                var name = checkbox.name;

                if (name.search("system") != -1) {
                    if (name.search("read") != -1)
                        system += 4;
                    else if (name.search("write") != -1)
                        system += 2;
                    else if (name.search("execute") != -1)
                        system += 1;
                } else if (name.search("group") != -1) {
                    if (name.search("read") != -1)
                        group += 4;
                    else if (name.search("write") != -1)
                        group += 2;
                    else if (name.search("execute") != -1)
                        group += 1;
                } else if (name.search("user") != -1) {
                    if (name.search("read") != -1)
                        user += 4;
                    else if (name.search("write") != -1)
                        user += 2;
                    else if (name.search("execute") != -1)
                        user += 1;
                }
            }
        }

        if (system.toString)
            system = system.toString();
        else
            system = "0";

        if (group.toString)
            group = group.toString();
        else
            group = "0";

        if (user.toString)
            user = user.toString();
        else
            user = "0";

        return system + group + user;
    },

    onCheckboxSetChecked: function(system, group, user) {
        if (typeof ChmodInput.listInputChmodCheckbox === "undefined")
            return;

        for (var i = 0; i < ChmodInput.listInputChmodCheckbox.length; ++i) {
            var checkbox = ChmodInput.listInputChmodCheckbox[i];

            if (checkbox.name && checkbox.name.search) {
                var name = checkbox.name;

                if (name.search("system") != -1) {
                    if (name.search("read") != -1)
                        checkbox.checked = (system & 4) != 0;
                    else if (name.search("write") != -1)
                        checkbox.checked = (system & 2) != 0;
                    else if (name.search("execute") != -1)
                        checkbox.checked = (system & 1) != 0;
                    else
                        checkbox.checked = false;
                } else if (name.search("group") != -1) {
                    if (name.search("read") != -1)
                        checkbox.checked = (group & 4) != 0;
                    else if (name.search("write") != -1)
                        checkbox.checked = (group & 2) != 0;
                    else if (name.search("execute") != -1)
                        checkbox.checked = (group & 1) != 0;
                    else
                        checkbox.checked = false;
                } else if (name.search("user") != -1) {
                    if (name.search("read") != -1)
                        checkbox.checked = (user & 4) != 0;
                    else if (name.search("write") != -1)
                        checkbox.checked = (user & 2) != 0;
                    else if (name.search("execute") != -1)
                        checkbox.checked = (user & 1) != 0;
                    else
                        checkbox.checked = false;
                }
            }
        }
    }

};
var CustomInputFile = {
    onChangeInputFileEventListener: function(env) {
        if (typeof env.target.nextElementSibling !== "undefined") {
            var nextElement = env.target.nextElementSibling;
            var spanElement = nextElement.getElementsByTagName("span");
            var innerHTML   = env.target.value;
            var files       = env.target.files;

            if (files && files.length && files.length > 1) {
                for (var i = 1; i < files.length; ++i)
                    innerHTML += ", " + files[i].name;
            }

            if (spanElement !== "undefined" && spanElement.length >= 1)
                spanElement[0].innerHTML = innerHTML;
            else
                nextElement.innerHTML = innerHTML;
        }
    },

    onAddEventChangeInputFile: function() {
        var inputs = document.getElementsByTagName('input');

        if (typeof inputs !== "undefined" && inputs.length > 0) {
            for (var i = 0; i < inputs.length; ++i) {
                var entry = inputs[i];

                if (entry.type && entry.type.toLowerCase() === "file")
                    entry.onchange = CustomInputFile.onChangeInputFileEventListener;
            }
        }
    },

    getAttribute: function(element, name) {
        if (element.getAttribute)
            return element.getAttribute(name);
        else if (element.getAttributeNode)
             return element.getAttributeNode(name);
    },

    hasAttribute: function(element, name) {
        var attr = CustomInputFile.getAttribute(element, node);

        if (attr == null)
            return false;
        else if (typeof attr === "undefined")
            return false;

        return true;
    },

    setAttribute: function(element, name, value, checkExists) {
        if (element.setAttribute)
            element.setAttribute(name, value);
        else if (element.setAttributeNode)
            element.setAttributeNode(name, value);
    },

    removeAttribute: function(element, name) {
        if (element.removeAttribute)
            element.removeAttribute(name);
        else if (element.removeAttributeNode)
            element.removeAttributeNode(name);
    },

    replaceAttributeName: function(childNodes, tag, name, value) {
        if (childNodes == null || typeof childNodes === "undefined")
            return;

        for (var i = 0; i < childNodes.length; ++i) {
            var child = childNodes[i];
            var nodeName = child.nodeName.toLowerCase();

            if (nodeName === tag) {
                CustomInputFile.setAttribute(child, name, value);
                CustomInputFile.replaceAttributeName(child.childNodes, tag, name, value);
            }
        }
    },

    onAddMoreInputFile: function(idTemplateInputFile, namePrefix, placeHolderText) {
        var elementTemplate = document.getElementById(idTemplateInputFile);
        var elementClone    = elementTemplate.cloneNode(true);
        var parentElement   = elementTemplate.parentElement;
        var className       = elementTemplate.className;

        var childNodes       = parentElement.childNodes;
        var childNodesLength = childNodes.length;

        var attributeNameTemplate = CustomInputFile.getAttribute(elementTemplate, "name");
        var indexCurrentTemplate  = 0;

        if (attributeNameTemplate != null && typeof attributeNameTemplate !== "undefined") {
            if (attributeNameTemplate.value)
                attributeNameTemplate = attributeNameTemplate.value;

            if (attributeNameTemplate != null && attributeNameTemplate.indexOf(namePrefix, 0) === 0) {
                indexCurrentTemplate = attributeNameTemplate.substring(namePrefix.length);
                indexCurrentTemplate = parseInt(indexCurrentTemplate);;
            } else {
                indexCurrentTemplate = 0;
            }

            var inputFileClone = elementClone.getElementsByTagName("input");
            var labelFileClone  = elementClone.getElementsByTagName("label");

            for (var i = 0; i < inputFileClone.length; ++i) {
                var input    = inputFileClone[i];
                var inputNew = document.createElement("input");

                CustomInputFile.setAttribute(inputNew, "type", CustomInputFile.getAttribute(input, "type"));
                CustomInputFile.setAttribute(inputNew, "name", CustomInputFile.getAttribute(input, "name"));
                CustomInputFile.setAttribute(inputNew, "id",   CustomInputFile.getAttribute(input, "id"));

                elementClone.replaceChild(inputNew, input);
            }

            for (var i = 0; i < labelFileClone.length; ++i) {
                var label = labelFileClone[i];
                var span  = label.getElementsByTagName("span");

                if (span != null && typeof span !== "undefined" && span.length >= 1) {
                    var attributes = span[0].attributes;
                    var attrLng    = attributes.lng;
                    var attrValue  = attributes.value;
                    var inner      = null;

                    if (attrLng.value && attrLng.value != null)
                        inner = attrLng.value;
                    else if (attrValue.value && attrValue.value != null)
                        inner = attrValue.value;

                    span[0].innerHTML = inner;
                } else {
                    if (typeof placeHolderText !== "string")
                        placeHolderText = null;

                    label.innerHTML = placeHolderText;
                }
            }

            var valueIndexCurrent = namePrefix + (indexCurrentTemplate + 1);

            CustomInputFile.setAttribute(elementClone, "name", valueIndexCurrent);
            CustomInputFile.replaceAttributeName(elementClone.childNodes, "input", "id",   valueIndexCurrent);
            CustomInputFile.replaceAttributeName(elementClone.childNodes, "label", "for",  valueIndexCurrent);
        }

        CustomInputFile.removeAttribute(elementTemplate, "id");

        for (var i = childNodesLength - 1; i >= 0; --i) {
            var child     = childNodes[i];
            var childName = CustomInputFile.getAttribute(child, "name");

            if (childName != null && typeof childName !== "undefined") {
                if (childName.value)
                    childName = childName.value;

                if (childName.indexOf(namePrefix, 0) === 0) {
                    parentElement.insertBefore(elementClone, child.nextSibling);
                    CustomInputFile.onAddEventChangeInputFile();

                    break;
                }
            }
        }
    }
};

if (typeof OnLoad !== "undefined" && OnLoad.add)
    OnLoad.add(CustomInputFile.onAddEventChangeInputFile);
else
    window.onload = CustomInputFile.onAddEventChangeInputFile;
// var EditorHighlight = {
//     box:              null,
//     textarea:         null,
//     editorParent:     null,
//     editorBoxContent: null,
//     editorContent:    null,
//     editorBoxLine:    null,
//     editorBoxCursor:  null,

//     cursorColumn:       0,
//     cursorRow:          0,
//     textLineBreakCount: 0,

//     init: function(
//         boxSelector,
//         editorParentSelector,
//         editorBoxContentSelector,
//         editorContentSelector,
//         editorBoxLineSelector,
//         editorBoxCursorSelector
//     ) {
//         EditorHighlight.box              = document.getElementById(boxSelector);
//         EditorHighlight.editorParent     = document.getElementById(editorParentSelector);
//         EditorHighlight.editorBoxContent = document.getElementById(editorBoxContentSelector);
//         EditorHighlight.editorContent    = document.getElementById(editorContentSelector);
//         EditorHighlight.editorBoxLine    = document.getElementById(editorBoxLineSelector);
//         EditorHighlight.editorBoxCursor  = document.getElementById(editorBoxCursorSelector);

//         EditorHighlight.initBoxEditor();
//         EditorHighlight.initBindEvent();
//         EditorHighlight.initText();
//         EditorHighlight.initCursor();
//     },

//     initBoxEditor: function() {
//         var box = EditorHighlight.box;
//     },

//     initBindEvent: function() {
//         EditorHighlight.editorContent.removeEventListener("mousedown", EditorHighlight.mouseDownEditorBox);
//         EditorHighlight.editorContent.addEventListener("mousedown",    EditorHighlight.mouseDownEditorBox);
//     },

//     initText: function() {
//         var buffer = "";
//         var split  = EditorHighlight.editorContent.innerHTML;
//             split  = split.split(/(?:\r\n|\r|\n)/g);

//         for (var i = 1; i <= split.length; ++i)
//             buffer += "<span>" + i + "</span>";

//         EditorHighlight.textLineBreakCount      = split.length;
//         EditorHighlight.editorBoxLine.innerHTML = buffer;
//     },

//     initCursor: function() {
//         clearInterval(EditorHighlight.intervalCursor);
//         setInterval(EditorHighlight.intervalCursor, 500);
//     },

//     intervalCursor: function() {
//         var opacity = parseInt(EditorHighlight.editorBoxCursor.style.opacity);

//         if (opacity === 1)
//             EditorHighlight.editorBoxCursor.style.opacity = 0;
//         else
//             EditorHighlight.editorBoxCursor.style.opacity = 1;
//     },

//     mouseDownEditorBox: function() {
//         document.addEventListener("mouseup", EditorHighlight.mouseUpDocument);
//     },

//     mouseUpDocument: function() {
//         document.removeEventListener("mouseup", EditorHighlight.mouseUpDocument);
//     },

//     focusTextarea: function() {

//     },

//     keydownTextera: function(e) {
//         console.log("keydownTextera");
//         console.log(e);
//         console.log(EditorHighlight.textarea.selectionStart);
//         console.log(EditorHighlight.textarea.selectionEnd);
//     },

//     keyupTextera: function(e) {
//         console.log("keyupTextera");
//         console.log(e.keyCode);
//         console.log(EditorHighlight.textarea.selectionStart);
//         console.log(EditorHighlight.textarea.selectionEnd);
//     },

//     scrollTextera: function() {
//         console.log("Scroll");
//     },

//     clickTextarea: function() {
//         console.log("clickTextarea");
//         console.log(EditorHighlight.textarea.selectionStart);
//         console.log(EditorHighlight.textarea.selectionEnd);

//         EditorHighlight.repositionCursor(
//             EditorHighlight.textarea.selectionStart,
//             EditorHighlight.textarea.selectionEnd
//         );
//     },

//     repositionCursor: function(selectionStart, selectionEnd) {
//         var textarea  = EditorHighlight.textarea;
//         var selection = EditorHighlight.selection;
//         var range     = EditorHighlight.rangeTextarea;
//             bounds    = range.getBoundingClientRect();

//         textarea.__boundingTop    = bounds.top;
//         textarea.__boundingLeft   = bounds.left;
//         textarea.__boundingWidth  = bounds.width;
//         textarea.__boundingHeight = bounds.height;

//         var boundingTop  = (bounds.y + textarea.scrollTop)  - textarea.__boundingTop;
//         var boundingLeft = (bounds.x + textarea.scrollLeft) - textarea.__boundingLeft;

//         textarea.__line   = (boundingTop  / textarea.__boundingHeight) + 1;
//         textarea.__cloumn = (boundingLeft / textarea.__boundingWidth)  + 1;

//         // console.log(bounds);
//         console.log(textarea.__line);
//         console.log(textarea.__cloumn);
//         console.log(selection);
//         console.log(bounds);
//     },

//     getSelection: function() {
//         if (EditorHighlight.selection != null)
//             return EditorHighlight.selection;

//         var selection = (document.selection) || (window.getSelection && window.getSelection());

//         if (selection)
//             EditorHighlight.selection = selection;

//         return selection;
//     },

//     createRange: function() {
//         if (EditorHighlight.rangeTextarea != null)
//             return EditorHighlight.rangeTextarea;

//         var range = (document.selection && document.selection.createRange()) || (document.createRange && document.createRange());

//         if (EditorHighlight.textarea)
//             range.selectNode(EditorHighlight.textarea);

//         if (range)
//             EditorHighlight.rangeTextarea = range;

//         return range;
//     },

//     getTexteareOffsetWidth: function() {
//         return EditorHighlight.textarea.offsetWidth;
//     },

//     getTexteareOffsetHeight: function() {
//         return EditorHighlight.textarea.offsetHeight;
//     },

//     getTexteareScrollWidth: function() {
//         return EditorHighlight.textarea.scrollWidth;
//     },

//     getTexteareScrollHeight: function() {
//         return EditorHighlight.textarea.scrollHeight;
//     }

// };
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
var MoreInputUrl = {
    getAttribute: function(element, name) {
        if (element.getAttribute)
            return element.getAttribute(name);
        else if (element.getAttributeNode)
             return element.getAttributeNode(name);
    },

    setAttribute: function(element, name, value, checkExists) {
        if (element.setAttribute)
            element.setAttribute(name, value);
        else if (element.setAttributeNode)
            element.setAttributeNode(name, value);
    },

    removeAttribute: function(element, name) {
        if (element.removeAttribute)
            element.removeAttribute(name);
        else if (element.removeAttributeNode)
            element.removeAttributeNode(name);
    },

    onAddMoreInputUrl: function(idTemplateInputUrl, namePrefix) {
        var elementTemplate = document.getElementById(idTemplateInputUrl);
        var elementClone    = elementTemplate.cloneNode(true);
        var parentElement   = elementTemplate.parentElement;

        var childNodes       = parentElement.childNodes;
        var childNodesLength = childNodes.length;

        var attributeNameTemplate = MoreInputUrl.getAttribute(elementTemplate, "name");
        var indexCurrentTemplate  = 0;

        if (attributeNameTemplate != null && typeof attributeNameTemplate !== "undefined") {
            if (attributeNameTemplate.value)
                attributeNameTemplate = attributeNameTemplate.value;

            if (attributeNameTemplate != null && attributeNameTemplate.indexOf(namePrefix, 0) === 0) {
                indexCurrentTemplate = attributeNameTemplate.substring(namePrefix.length);
                indexCurrentTemplate = parseInt(indexCurrentTemplate);;
            } else {
                indexCurrentTemplate = 0;
            }

            var inputClone = elementClone.getElementsByTagName("input");

            for (var i = 0; i < inputClone.length; ++i) {
                var input    = inputClone[i];
                var inputNew = document.createElement("input");

                MoreInputUrl.setAttribute(inputNew, "type",        MoreInputUrl.getAttribute(input, "type"));
                MoreInputUrl.setAttribute(inputNew, "name",        MoreInputUrl.getAttribute(input, "name"));
                MoreInputUrl.setAttribute(inputNew, "placeholder", MoreInputUrl.getAttribute(input, "placeholder"));

                elementClone.replaceChild(inputNew, input);
            }

            var valueIndexCurrent = namePrefix + (indexCurrentTemplate + 1);

            MoreInputUrl.setAttribute(elementClone, "name", valueIndexCurrent);
        }

        MoreInputUrl.removeAttribute(elementTemplate, "id");

        for (var i = childNodesLength - 1; i >= 0; --i) {
            var child     = childNodes[i];
            var childName = MoreInputUrl.getAttribute(child, "name");

            if (childName != null && typeof childName !== "undefined") {
                if (childName.value)
                    childName = childName.value;

                if (childName.indexOf(namePrefix, 0) === 0) {
                    parentElement.insertBefore(elementClone, child.nextSibling);

                    break;
                }
            }
        }
    }
};

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