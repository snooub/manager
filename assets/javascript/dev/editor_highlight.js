var EditorHighlight = {
    box:       null,
    textarea:  null,
    editorBox: null,

    init: function(boxSelector, textareaSelector, editorBoxSelector) {
        EditorHighlight.box       = document.getElementById(boxSelector);
        EditorHighlight.textarea  = document.getElementById(textareaSelector);
        EditorHighlight.editorBox = document.getElementById(editorBoxSelector);

        EditorHighlight.initBoxEditor();
        EditorHighlight.initBindEvent();
        EditorHighlight.initText();
    },

    initBoxEditor: function() {
        var box           = EditorHighlight.box;
        var textarea      = EditorHighlight.textarea;
        var editorBox     = EditorHighlight.editorBox;
        var textareaStyle = window.getComputedStyle(textarea);

        box.style.width  = EditorHighlight.getTexteareOffsetWidth()  + "px";
        box.style.height = EditorHighlight.getTexteareOffsetHeight() + "px";

        editorBox.style.width  = EditorHighlight.getTexteareOffsetWidth()  + "px";
        editorBox.style.height = EditorHighlight.getTexteareOffsetHeight() + "px";

        editorBox.style.fontFamily    = textareaStyle.fontFamily;
        editorBox.style.fontSize      = textareaStyle.fontSize;
        editorBox.style.lineHeight    = textareaStyle.lineHeight;

        editorBox.style.padding       = textareaStyle.padding;
        editorBox.style.margin        = textareaStyle.margin;

        editorBox.style.paddingTop    = textareaStyle.paddingTop;
        editorBox.style.paddingLeft   = textareaStyle.paddingLeft;
        editorBox.style.paddingBottom = textareaStyle.paddingBottom;
        editorBox.style.paddingRight  = textareaStyle.paddingRight;

        editorBox.style.marginTop     = textareaStyle.marginTop;
        editorBox.style.marginLeft    = textareaStyle.marginLeft;
        editorBox.style.marginBottom  = textareaStyle.marginBottom;
        editorBox.style.marginRight   = textareaStyle.marginRight;

        console.log(window.getComputedStyle(textarea));
        console.log(textarea.style);
    },

    initBindEvent: function() {
        EditorHighlight.editorBox.removeEventListener("mousedown", EditorHighlight.mouseDownEditorBox);
        EditorHighlight.editorBox.addEventListener("mousedown", EditorHighlight.mouseDownEditorBox);
        EditorHighlight.textarea.addEventListener("focus", EditorHighlight.focusTextarea);
        EditorHighlight.textarea.addEventListener("keyup", EditorHighlight.keyupTextera);
        EditorHighlight.textarea.addEventListener("keydown", EditorHighlight.keydownTextera);
        EditorHighlight.textarea.addEventListener("scroll", EditorHighlight.scrollTextera);
    },

    initText: function() {
        var text = EditorHighlight.textarea.innerHTML;
            text = text.replace(/(?:\r\n|\r|\n)/g, "<br/>");

        EditorHighlight.editorBox.innerHTML = text;
    },

    mouseDownEditorBox: function() {
        document.addEventListener("mouseup", EditorHighlight.mouseUpDocument);
    },

    mouseUpDocument: function() {
        document.removeEventListener("mouseup", EditorHighlight.mouseUpDocument);
    },

    focusTextarea: function() {

    },

    keydownTextera: function(e) {
        console.log("keydownTextera");
        console.log(e.keyCode);
        console.log(EditorHighlight.textarea.selectionStart);
        console.log(EditorHighlight.textarea.selectionEnd);
    },

    keyupTextera: function(e) {
        console.log("keyupTextera");
        console.log(e.keyCode);
        console.log(EditorHighlight.textarea.selectionStart);
        console.log(EditorHighlight.textarea.selectionEnd);
    },

    scrollTextera: function() {
        console.log("Scroll");
    },

    getTexteareOffsetWidth: function() {
        return EditorHighlight.textarea.offsetWidth;
    },

    getTexteareOffsetHeight: function() {
        return EditorHighlight.textarea.offsetHeight;
    },

    getTexteareScrollWidth: function() {
        return EditorHighlight.textarea.scrollWidth;
    },

    getTexteareScrollHeight: function() {
        return EditorHighlight.textarea.scrollHeight;
    }

};