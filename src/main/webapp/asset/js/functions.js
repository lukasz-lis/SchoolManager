//function editUserButtonClick(username) {
//    $.ajax({
//        type: 'GET',
//        url: "api/users/" + username,
//        dataType: 'json',
//        error: function(jqXHR, textStatus, errorThrown) {
//            alert('ajax error: ' + textStatus);
//        },
//        success: function(data) {
//            if (data.role === 'STUDENT') {
//                var html = $.templates("#form-student-template").link("#user-form", data);
//                $("#user-form").attr("method", "PUT");
//                $("#user-form").attr("action", "api/students");
//            }
//            else {
//                var html = $.templates("#form-user-template").link("#user-form", data);
//                $("#user-form").attr("method", "PUT");
//                $("#user-form").attr("action", "api/users");
//            }
//        }
//    });
//}
//
//function editCourseButtonClick(name) {
//    $.ajax({
//        type: 'GET',
//        url: "api/courses/" + name,
//        dataType: 'json',
//        error: function(jqXHR, textStatus, errorThrown) {
//            alert('ajax error: ' + textStatus);
//        },
//        success: function(data) {
//            var html = $.templates("#form-course-template").link("#course-form", data);
//            $("#course-form").attr("method", "PUT");
//            $("#course-form").attr("action", "api/courses");
//        }
//    });
//}
//function editGroupButtonClick(name) {
//    $.ajax({
//        type: 'GET',
//        url: "api/groups/" + name,
//        dataType: 'json',
//        error: function(jqXHR, textStatus, errorThrown) {
//            alert('ajax error: ' + textStatus);
//        },
//        success: function(data) {
//            var html = $.templates("#form-group-template").link("#group-form", data);
//            $("#group-form").attr("method", "PUT");
//            $("#group-form").attr("action", "api/groups");
//        }
//    });
//}
//function refreshUserList() {
//    $('.modal').modal('hide');
//    $('#please-wait-dialog').modal();
//    $.ajax({
//        type: 'GET',
//        url: 'api/users',
//        dataType: 'json',
//        error: function(jqXHR, textStatus, errorThrown) {
//            $('.modal').modal('hide');
//            alert('Ajax error : ' + textStatus);
//        }
//    }).done(function(data) {
//        console.log(data);
//        var html = $.templates("#list-user-template").render(data);
//        $("#list-user-table tbody").html(html);
//        $('.modal').modal('hide');
//    });
//
//}
//function refreshGroupList() {
//    $('.modal').modal('hide');
//    $('#please-wait-dialog').modal();
//    $.ajax({
//        type: 'GET',
//        url: 'api/groups',
//        dataType: 'json',
//        error: function(jqXHR, textStatus, errorThrown) {
//            $('.modal').modal('hide');
//            alert('Ajax error : ' + textStatus);
//        }
//    }).done(function(data) {
//        console.log(data);
//        var html = $.templates("#list-group-template").render(data);
//        $("#list-group-table tbody").html(html);
//        $('.modal').modal('hide');
//    });
//
//}
//function refreshCourseList() {
//    $('.modal').modal('hide');
//    $('#please-wait-dialog').modal();
//    $.ajax({
//        type: 'GET',
//        url: 'api/courses',
//        dataType: 'json',
//        error: function(jqXHR, textStatus, errorThrown) {
//            $('.modal').modal('hide');
//            alert('Ajax error : ' + textStatus);
//        }
//    }).done(function(data) {
//        console.log(data);
//        var html = $.templates("#list-course-template").render(data);
//        $("#list-course-table tbody").html(html);
//        $('.modal').modal('hide');
//    });
//
//}
//function submitUserForm(formID) {
//    $.ajax({
//        type: $(formID).attr("method"),
//        url: $(formID).attr("action"),
//        dataType: 'json',
//        contentType: 'application/json',
//        data: JSON.stringify($(formID).serializeJSON())
//    }).done(function() {
//        refreshUserList();
//    }).error(function(jqXHR, textStatus, errorThrown) {
//        $('.modal').modal('hide');
//        alert('Ajax error : ' + textStatus);
//    });
//}
//function submitGroupForm(formID) {
//    console.log(JSON.stringify($(formID).serializeJSON()));
//    $.ajax({
//        type: $(formID).attr("method"),
//        url: $(formID).attr("action"),
//        dataType: 'json',
//        contentType: 'application/json',
//        data: JSON.stringify($(formID).serializeJSON())
//    }).done(function() {
//        refreshGroupList();
//    }).error(function(jqXHR, textStatus, errorThrown) {
//        $('.modal').modal('hide');
//        alert('Ajax error : ' + textStatus);
//    });
//}
//function submitCourseForm(formID) {
//    $.ajax({
//        type: $(formID).attr("method"),
//        url: $(formID).attr("action"),
//        dataType: 'json',
//        contentType: 'application/json',
//        data: JSON.stringify($(formID).serializeJSON())
//    }).done(function() {
//        refreshCourseList();
//    }).error(function(jqXHR, textStatus, errorThrown) {
//        $('.modal').modal('hide');
//        alert('Ajax error : ' + textStatus);
//    });
//}
//function applyUserForm() {
//    var html = $.templates("#form-user-template").link("#user-form", {username: null});
//    $("#user-form").attr("method", "POST");
//    $("#user-form").attr("action", "api/users");
//    $("#user-form")[0].reset();
//}
//function applyStudentForm() {
//    var html = $.templates("#form-student-template").link("#user-form", {username: null});
//    $("#user-form").attr("method", "POST");
//    $("#user-form").attr("action", "api/students");
//    $("#user-form")[0].reset();
//}
//function applyGroupForm() {
//    var html = $.templates("#form-group-template").link("#group-form", {name: null});
//    $("#group-form").attr("method", "POST");
//    $("#group-form").attr("action", "api/groups");
//    $("#group-form")[0].reset();
//}
//function applyCourseForm() {
//    var html = $.templates("#form-course-template").link("#course-form", {name: null});
//    $("#course-form").attr("method", "POST");
//    $("#course-form").attr("action", "api/courses");
//    $("#course-form")[0].reset();
//}
//
