var EditorHighlight = {
    box:              null,
    textarea:         null,
    editorParent:     null,
    editorBoxContent: null,
    editorContent:    null,
    editorBoxLine:    null,
    editorBoxCursor:  null,

    cursorColumn:       0,
    cursorRow:          0,
    textLineBreakCount: 0,

    init: function(
        boxSelector,
        editorParentSelector,
        editorBoxContentSelector,
        editorContentSelector,
        editorBoxLineSelector,
        editorBoxCursorSelector
    ) {
        EditorHighlight.box              = document.getElementById(boxSelector);
        EditorHighlight.editorParent     = document.getElementById(editorParentSelector);
        EditorHighlight.editorBoxContent = document.getElementById(editorBoxContentSelector);
        EditorHighlight.editorContent    = document.getElementById(editorContentSelector);
        EditorHighlight.editorBoxLine    = document.getElementById(editorBoxLineSelector);
        EditorHighlight.editorBoxCursor  = document.getElementById(editorBoxCursorSelector);

        EditorHighlight.initBoxEditor();
        EditorHighlight.initBindEvent();
        EditorHighlight.initText();
        EditorHighlight.initCursor();
    },

    initBoxEditor: function() {
        var box = EditorHighlight.box;
    },

    initBindEvent: function() {
        EditorHighlight.editorContent.removeEventListener("mousedown", EditorHighlight.mouseDownEditorBox);
        EditorHighlight.editorContent.addEventListener("mousedown",    EditorHighlight.mouseDownEditorBox);
    },

    initText: function() {
        var buffer = "";
        var split  = EditorHighlight.editorContent.innerHTML;
            split  = split.split(/(?:\r\n|\r|\n)/g);

        for (var i = 1; i <= split.length; ++i)
            buffer += "<span>" + i + "</span>";

        EditorHighlight.textLineBreakCount      = split.length;
        EditorHighlight.editorBoxLine.innerHTML = buffer;
    },

    initCursor: function() {
        clearInterval(EditorHighlight.intervalCursor);
        setInterval(EditorHighlight.intervalCursor, 500);
    },

    intervalCursor: function() {
        var opacity = parseInt(EditorHighlight.editorBoxCursor.style.opacity);

        if (opacity === 1)
            EditorHighlight.editorBoxCursor.style.opacity = 0;
        else
            EditorHighlight.editorBoxCursor.style.opacity = 1;
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
        console.log(e);
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

    clickTextarea: function() {
        console.log("clickTextarea");
        console.log(EditorHighlight.textarea.selectionStart);
        console.log(EditorHighlight.textarea.selectionEnd);

        EditorHighlight.repositionCursor(
            EditorHighlight.textarea.selectionStart,
            EditorHighlight.textarea.selectionEnd
        );
    },

    repositionCursor: function(selectionStart, selectionEnd) {
        var textarea  = EditorHighlight.textarea;
        var selection = EditorHighlight.selection;
        var range     = EditorHighlight.rangeTextarea;
            bounds    = range.getBoundingClientRect();

        textarea.__boundingTop    = bounds.top;
        textarea.__boundingLeft   = bounds.left;
        textarea.__boundingWidth  = bounds.width;
        textarea.__boundingHeight = bounds.height;

        var boundingTop  = (bounds.y + textarea.scrollTop)  - textarea.__boundingTop;
        var boundingLeft = (bounds.x + textarea.scrollLeft) - textarea.__boundingLeft;

        textarea.__line   = (boundingTop  / textarea.__boundingHeight) + 1;
        textarea.__cloumn = (boundingLeft / textarea.__boundingWidth)  + 1;

        // console.log(bounds);
        console.log(textarea.__line);
        console.log(textarea.__cloumn);
        console.log(selection);
        console.log(bounds);
    },

    getSelection: function() {
        if (EditorHighlight.selection != null)
            return EditorHighlight.selection;

        var selection = (document.selection) || (window.getSelection && window.getSelection());

        if (selection)
            EditorHighlight.selection = selection;

        return selection;
    },

    createRange: function() {
        if (EditorHighlight.rangeTextarea != null)
            return EditorHighlight.rangeTextarea;

        var range = (document.selection && document.selection.createRange()) || (document.createRange && document.createRange());

        if (EditorHighlight.textarea)
            range.selectNode(EditorHighlight.textarea);

        if (range)
            EditorHighlight.rangeTextarea = range;

        return range;
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