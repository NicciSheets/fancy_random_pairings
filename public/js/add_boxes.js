// function addInputBox() {
//     var input = document.createElement("input");
//     input.type = "text";
//     input.name = "names[]";
//     input.id = "name";
//     input.required = true;
//     document.getElementById("demo").appendChild(input).value;
// }

function deleteInputBox() {
    var y = document.getElementById("demo");
    y.removeChild(y.lastChild);
}

function addInputBox() {
	console.log('beginning')
	var input = '<input type="text" name="names[]" id="name" required>';
	var demo = document.getElementById("demo");
	demo.innerHTML += input;
	console.log(demo)
}

// above is innerHTML method of using functions in JS//