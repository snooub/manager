var CheckboxCheckAll = {
    onInitPutCountCheckedItem: function(idForm, idCheckboxAll, idElementTextCount) {
        CheckboxCheckAll.onCheckAll(idForm, idCheckboxAll, idElementTextCount, true)
    },

    onCheckAll: function(idForm, idCheckboxAll, idElementTextCount, isNotSetChecked) {
        var form     = document.getElementById(idForm);
        var checkall = document.getElementById(idCheckboxAll);

        if (
            typeof form     === "undefined" ||
            typeof checkall === "undefined" ||

            form     === null ||
            checkall === null
        ) {
            return;
        }

        var checked = checkall.checked == true;
        var count   = 0;

        for (var i = 0; i < form.elements.length; ++i) {
            var element = form.elements[i];

            if (element.type && element.type === "checkbox" && element !== checkall) {
                if (typeof isNotSetChecked === "undefined" || isNotSetChecked === false)
                    element.checked = checked;

                count++;
            }
        }

        CheckboxCheckAll.putCountCheckedItem(idElementTextCount, count);
    },

    onCheckItem: function(idForm, idCheckboxAll, idItemCheckbox, idElementTextCount) {
        var form      = document.getElementById(idForm);
        var checkall  = document.getElementById(idCheckboxAll);
        var checkitem = document.getElementById(idItemCheckbox);

        if (
            typeof form      === "undefined" ||
            typeof checkall  === "undefined" ||
            typeof checkitem === "undefined" ||

            form      === null ||
            checkall  === null ||
            checkitem === null
        ) {
            return;
        }

        if (checkitem.type && checkitem.type === "checkbox")
            checkitem.cheked = checkitem.checked == true;

        var count   = 0;

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
    },

    putCountCheckedItem: function(idElementTextCount, count) {
        var elementTextCount = document.getElementById(idElementTextCount);

        if (typeof elementTextCount === "undefined" || elementTextCount === null)
            return;

        if (count > 0)
            elementTextCount.innerHTML = "(" + count + ")";
        else
            elementTextCount.innerHTML = null;
    }
};