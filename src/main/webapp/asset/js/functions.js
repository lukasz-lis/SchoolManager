function submitModalForm(formID) {
    $('.modal').modal('hide');
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'POST',
        contentType: "application/json",
        url: $(formID).attr('action'),
        dataType: 'json',
        data: JSON.stringify($(formID).serializeJSON()),
        success: function(data, textStatus, jqXHR) {
            refreshData($(formID).serializeJSON());
            $('.modal').modal('hide');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('ajax error: ' + textStatus);
        }
    });
}
function findUserByUsername(api, username) {
    $.ajax({
        type: 'GET',        
        url: api+"/"+username,
        dataType: 'json',
        success: function(data, textStatus, jqXHR) {
            return data;
        },
        error: function(jqXHR, textStatus, errorThrown) {        
            alert('ajax error: ' + textStatus);
        }
    });
}
function addNewRecordToUserDT(data) {
    $('<tr>').append(
            $('<td>').text(data.username),
            $('<td>').text(data.firstName),
            $('<td>').text(data.secName),
            $('<td>').text(data.email),
            $('<td>').html('<button data-toggle="modal" data-target="#add-admin-form" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span></button>')
            ).appendTo('#list-user-table');

}
function refreshUserDT(api) {
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'GET',
        url: api,
        dataType: 'json',
        success: function(data, textStatus, jqXHR) {
            $.each(data, function(i, item) {
                addNewRecordToUserDT(item);
            });
            $('.modal').modal('hide');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('ajax error: ' + textStatus);
        }
    });
}


