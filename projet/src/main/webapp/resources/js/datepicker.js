$(function () {
    // On initialise un datepicker Bootstrap
    $('#datetimepicker').datetimepicker({
        viewMode: 'years',  // On choisit d'abord l'année
        locale: 'fr',
        format: 'L',
        maxDate: moment().subtract(18,'years') // La date maximale est la date du jour moins 18 années
    });

    // On récupère la date du vrai champ et on met à jour le datePicker si elle n'est pas nulle
    // Ceci est utile en cas de soumission ratée du formulaire pour conserver la date rentrée
    var date = $('#DOB').val();
    if(date != "")
    {
        var splitted = date.split("-");
        var dateFormatted = splitted[2] + "/" + splitted[1] + "/" + splitted[0];
        $('#datetimepicker').children('input').val(dateFormatted);
    }
    /* Nécessaire à cause de l'option maxDate */
    else
    {
        $('#datetimepicker').children('input').val('');
    }

    // A chaque fois que l'on change la date du DatePicker, on met à jour la date du vrai champ caché
    $("#datetimepicker").on("dp.change", function(e) {
        var date = $('#datetimepicker').children('input').val();
        var splitted = date.split("/");
        var dateFormatted = splitted[2] + "-" + splitted[1] + "-" + splitted[0];
        $('#DOB').val(dateFormatted);
    });



});