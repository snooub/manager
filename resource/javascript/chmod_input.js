var inputChmod             = null;
var inputChmodCheckbox     = null;
var listInputChmodCheckbox = null;

function onAddEventChmodListener(idInputChmod, idInputChmodCheckbox)
{
    inputChmod             = document.getElementById(idInputChmod);
    inputChmodCheckbox     = document.getElementById(idInputChmodCheckbox);
    listInputChmodCheckbox = [];

    if (typeof inputChmod === "undefined" || typeof inputChmodCheckbox === "undefined")
        return;

    inputChmod.addEventListener("input", function(env) {
        var chmod = calculatorChmodInput();

        if (typeof chmod !== "undefined")
            onCheckboxSetChecked(chmod.system, chmod.group, chmod.user);
    });

    var inputChmodCheckboxElement = inputChmodCheckbox.getElementsByTagName("input");

    if (inputChmodCheckboxElement.length) {
        for (var i = 0; i < inputChmodCheckboxElement.length; ++i) {
            var entry = inputChmodCheckboxElement[i];

            if (entry.type && entry.type == "checkbox") {
                entry.addEventListener("click", function(env) {
                    var chmod = calculatorChmodChecked();

                    if (typeof chmod !== "undefined")
                        inputChmod.value = chmod;

                    chmod = calculatorChmodInput();

                    if (typeof chmod !== "undefined")
                        onCheckboxSetChecked(chmod.system, chmod.group, chmod.user);
                });

                listInputChmodCheckbox.push(entry);
            }
        }

        var chmod = calculatorChmodInput();

        if (typeof chmod !== "undefined")
            onCheckboxSetChecked(chmod.system, chmod.group, chmod.user);
    }
}

function calculatorChmodInput()
{
    var array = {
        system: 0,
        group:  0,
        user:   0
    };

    if (typeof inputChmod === "undefined")
        return array;

    var value  = inputChmod.value;

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
}

function calculatorChmodChecked()
{
    if (typeof listInputChmodCheckbox === "undefined")
        return;

    var system = 0;
    var group  = 0;
    var user   = 0;

    for (var i = 0; i < listInputChmodCheckbox.length; ++i) {
        var checkbox = listInputChmodCheckbox[i];

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
}

function onCheckboxSetChecked(system, group, user)
{
    if (typeof listInputChmodCheckbox === "undefined")
        return;

    for (var i = 0; i < listInputChmodCheckbox.length; ++i) {
        var checkbox = listInputChmodCheckbox[i];

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