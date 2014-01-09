function editButtonClick(username) {
    $.ajax({
        type: 'GET',
        url: "api/users/" + username,
        dataType: 'json',
        error: function (jqXHR, textStatus, errorThrown) {
            alert('dasodksaopd: ' + textStatus);

        },
        success: function (data) {

            if (data.role === 'STUDENT') {
                var html = $.templates("#form-student-template").link("#edit-user-form", data);
                $("#edit-user-form").attr("method", "PUT");
                $("#edit-user-form").attr("action", "api/students");
            }
            else {
                console.log('wybieram uzytkownika');
                var html = $.templates("#form-user-template").link("#edit-user-form", data);
                $("#edit-user-form").attr("method", "PUT");
                $("#edit-user-form").attr("action", "api/users");
            }
        }
    });

}
function refreshUserList() {
    $('.modal').modal('hide');
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'GET',
        url: 'api/users',
        dataType: 'json',
        error: function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('Ajax error : ' + textStatus);
        }
    }).done(function (data) {
            console.log(data);
            var html = $.templates("#list-user-template").render(data);
            $("#list-user-table tbody").html(html);
            $('.modal').modal('hide');
        });

}
function refreshGroupList() {
    $('.modal').modal('hide');
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'GET',
        url: 'api/groups',
        dataType: 'json',
        error: function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('Ajax error : ' + textStatus);
        }
    }).done(function (data) {
            console.log(data);
            var html = $.templates("#list-group-template").render(data);
            $("#list-group-table tbody").html(html);
            $('.modal').modal('hide');
        });

}
function submitUserForm(formID) {
    $.ajax({
        type: $(formID).attr("method"),
        url: $(formID).attr("action"),
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify($(formID).serializeJSON())
    }).done(function () {
            refreshUserList();
        }).error(function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('Ajax error : ' + textStatus);
        });
}
function submitGroupForm(formID) {
    $.ajax({
        type: $(formID).attr("method"),
        url: $(formID).attr("action"),
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify($(formID).serializeJSON())
    }).done(function () {
            refreshGroupList();
        }).error(function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('Ajax error : ' + textStatus);
        });
}
function applyUserForm() {
    var html = $.templates("#form-user-template").link("#add-user-form", null);
    $("#add-user-form").attr("method", "POST");
    $("#add-user-form").attr("action", "api/users");
    $("#add-user-form")[0].reset();
}
function applyStudentForm() {
    var html = $.templates("#form-student-template").link("#add-user-form", null);
    $("#add-user-form").attr("method", "POST");
    $("#add-user-form").attr("action", "api/students");
    $("#add-user-form")[0].reset();
}
function applyGroupForm() {
    var html = $.templates("#form-group-template").link("#group-form", null);
    $("#group-form").attr("method", "POST");
    $("#group-form").attr("action", "api/groups");
    $("#group-form")[0].reset();
}

