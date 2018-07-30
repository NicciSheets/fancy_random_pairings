function addInputBox() {
    var input = document.createElement("input");
    input.type = "text";
    input.name = "names[]";
    input.id = "name";
    input.required = true;
    document.getElementById("demo").appendChild(input).value;
}

function deleteInputBox() {
    var y = document.getElementById("demo");
    y.removeChild(y.lastChild);
}

