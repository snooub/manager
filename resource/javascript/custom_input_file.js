window.onload = function() {
    var inputs = document.getElementsByTagName('input');

    if (typeof inputs !== "undefined" && inputs.length > 0) {
        for (var i = 0; i < inputs.length; ++i) {
            var entry = inputs[i];

            if (typeof entry.type !== "undefined" && entry.type.toLowerCase() === "file") {
                entry.onchange = function(env) {
                    if (typeof env.target.nextElementSibling !== "undefined")
                        env.target.nextElementSibling.innerHTML = env.target.value;
                };
            }
        }
        console.log(inputs);
    }

};