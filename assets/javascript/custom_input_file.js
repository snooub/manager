var CustomInputFile = {
    onChangeInputFileEventListener: function(env) {
        if (typeof env.target.nextElementSibling !== "undefined") {
            var nextElement = env.target.nextElementSibling;
            var spanElement = nextElement.getElementsByTagName("span");

            if (spanElement !== "undefined" && spanElement.length >= 1)
                spanElement[0].innerHTML = env.target.value;
            else
                nextElement.innerHTML = env.target.value;
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

    setAttribute: function(element, name, value) {
        var attr = CustomInputFile.getAttribute(element, name);

        if (attr == null || typeof attr === "undefined")
            return;

        if (name.toLowerCase() === "name" && element.type && element.type.toLowerCase() === "file")
            return;

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

    replaceAttributeName: function(childNodes, name, value) {
        if (childNodes == null || typeof childNodes === "undefined")
            return;

        for (var i = 0; i < childNodes.length; ++i) {
            var child = childNodes[i];

            CustomInputFile.setAttribute(child, name, value);
            CustomInputFile.replaceAttributeName(child.childNodes);
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

                inputNew.setAttribute("type", CustomInputFile.getAttribute(input, "type"));
                inputNew.setAttribute("name", CustomInputFile.getAttribute(input, "name"));
                inputNew.setAttribute("id",   CustomInputFile.getAttribute(input, "id"));
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
            CustomInputFile.replaceAttributeName(elementClone.childNodes, "name", valueIndexCurrent);
            CustomInputFile.replaceAttributeName(elementClone.childNodes, "id",   valueIndexCurrent);
            CustomInputFile.replaceAttributeName(elementClone.childNodes, "for",  valueIndexCurrent);
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

onLoad.add(CustomInputFile.onAddEventChangeInputFile);