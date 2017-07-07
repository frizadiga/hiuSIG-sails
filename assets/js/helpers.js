//REMOVE EMPTY PARAMETER ON SUBMIT
function checkParams(formID) {
	form = document.getElementById(formID);
  form.addEventListener('submit', function () {
    var allInputs = form.getElementsByTagName('input');
    var allSelects = form.getElementsByTagName('select');

    for (var i = 0; i < allInputs.length; i++) {
        var input = allInputs[i];

        if (input.name && !input.value) {
            input.name = '';
        }
    }

    for (var i = 0; i < allSelects.length; i++) {
        var select = allSelects[i];

        if (select.name && !select.value) {
            select.name = '';
        }
    }

});
    if (select.name && !select.value) {
      select.name = '';
    }

}