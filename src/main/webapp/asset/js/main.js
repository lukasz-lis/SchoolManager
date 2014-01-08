$(document).ready(function() {

    $("#add-user-form").submit(function(event) {
        var res = submitForm('#add-user-form');
        $.when(res).done(function() {
            event.preventDefault();
        });

    });
    $("#edit-user-form").submit(function(event) {
        var res = submitForm('#edit-user-form');
        $.when(res).done(function() {
            event.preventDefault();
        });
    });

});






