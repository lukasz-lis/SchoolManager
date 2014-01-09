function findUserByUsername(api, username) {
    return $.ajax({
        type: 'GET',
        url: api + "/" + username,
        dataType: 'json',
        error: function(jqXHR, textStatus, errorThrown) {
            alert('Ajax error: ' + textStatus);
        }
    });
}
function editButtonClick(username, api) {
    var res = findUserByUsername(api, username);
    $.when(res).done(function() {
        var json = res.responseJSON
        var myTmpl = $.templates("#form-edit-template");
        $("#edit-user-form").html(myTmpl.render(json));

    });
}
function refreshUserList() {
    $('.modal').modal('hide');
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'GET',
        url: 'api/users',
        dataType: 'json',
        error: function(jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('Ajax error : ' + textStatus);
        }
    }).done(function(data) {
        console.log(data);
        var html = $.templates("#list-user-template").render(data);
        $("#list-user-table tbody").html(html);
        $('.modal').modal('hide');
    });

}
function submitForm(formID) {
    $.ajax({
        type: $(formID).attr("method"),
        url: $(formID).attr("action"),
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify($(formID).serializeJSON())
    }).done(function() {
        refreshUserList();
    }).error(function(jqXHR, textStatus, errorThrown) {
        $('.modal').modal('hide');
        alert('Ajax error : ' + textStatus);
    });
}
function applyUserForm() {
    var html = $.templates("#form-add-template").render();
    $("#add-user-form").html(html);
    $("#add-user-form").attr("method", "POST");
    $("#add-user-form").attr("action", "api/users");
    $("#add-user-form")[0].reset();
}
function applyStudentForm() {
    var html = $.templates("#form-add-student-template").render();
    $("#add-user-form").html(html);
    $("#add-user-form").attr("method", "POST");
    $("#add-user-form").attr("action", "api/students");
    $("#add-user-form")[0].reset();
}

