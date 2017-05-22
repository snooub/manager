var CheckboxCheckAll = {
    form: null,
    checkall: null,

    countCheckedItem:  0,
    countCheckboxItem: 0,

    onInitForm: function(idForm, idCheckboxAll, idElementTextCount) {
        CheckboxCheckAll.form      = document.getElementById(idForm);
        CheckboxCheckAll.checkall  = document.getElementById(idCheckboxAll);
        CheckboxCheckAll.textCount = document.getElementById(idElementTextCount);

        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        for (var i = 0; i < form.elements.length; ++i) {
            var element = form.elements[i];

            if (element.type && element.type === "checkbox" && element !== checkall) {
                if (element.checked)
                    CheckboxCheckAll.countCheckedItem++;

                CheckboxCheckAll.countCheckboxItem++;
            }
        }

        CheckboxCheckAll.putCountCheckedItem();
    },

    onCheckAll: function() {
        if (CheckboxCheckAll.isValidateVariable() == false)
            return;

        var checked      = CheckboxCheckAll.checkall.checked == true;
        var count        = 0;
        var countElement = 0;

        CheckboxCheckAll.countCheckedItem = 0;

        for (var i = 0; i < CheckboxCheckAll.form.elements.length; ++i) {
            var element = CheckboxCheckAll.form.elements[i];

            if (element.type && element.type === "checkbox" && element !== checkall) {
                element.checked = checked;

                if (element.checked)
                    CheckboxCheckAll.countCheckedItem++;
            }
        }

        CheckboxCheckAll.putCountCheckedItem();
    },

    onCheckItem: function(idCheckboxItem) {
        var checkitem = document.getElementById(idItemCheckbox);

        if (typeof checkitem === "undefined" || checkitem === null || CheckboxCheckAll.isValidateVariable() == false)
            return;

        if (checkitem.type && checkitem.type === "checkbox")
            checkitem.cheked = checkitem.checked == true;

        var count = 0;

        for (var i = 0; i < form.elements.length; ++i) {
            var element = form.elements[i];

            if (
                element.type                   &&
                element.type    === "checkbox" &&
                element         !== checkall   &&
                element.checked                &&
                element.checked  == true
            ) {
                count++;
            }
        }

        CheckboxCheckAll.putCountCheckedItem(idElementTextCount, count);
        CheckboxCheckAll.updateStatusCheckboxAll(idCheckboxAll, count, countAllElement);
    },

    putCountCheckedItem: function(idElementTextCount, count) {
        var elementTextCount = document.getElementById(idElementTextCount);

        if (typeof elementTextCount === "undefined" || elementTextCount === null)
            return;

        if (count > 0)
            elementTextCount.innerHTML = "(" + count + ")";
        else
            elementTextCount.innerHTML = null;
    },

    updateStatusCheckboxAll: function(idCheckboxAll, count, countAllElement) {
        var checkall = document.getElementById(idCheckboxAll);

        if (typeof checkall === "undefined")
            return;

        if (count <= 0)
            checkall.checked = false;
        else if (typeof countAllElement === "number" && count >= countAllElement)
            checkall.checked = true;
    },

    isValidateVariable: function() {
        if (typeof CheckboxCheckAll.form === "undefined" || typeof CheckboxCheckAll.checkall === "undefined" || typeof CheckboxCheckAll.textCount === "undefined")
            return false;

        if (CheckboxCheckAll.form === null || CheckboxCheckAll.checkall === null || CheckboxCheckAll.textCount === null)
            return false;

        return true;
    }

};