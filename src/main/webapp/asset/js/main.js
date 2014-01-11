$(document).ready(function () {

    $(document).on('click', '#form-user-submit', function () {
        submitUserForm("#user-form");
    });
    $(document).on('click', '#form-group-submit', function () {
        submitGroupForm("#group-form");
    });
    $(document).on('click', '#form-course-submit', function () {
        submitCourseForm("#course-form");
    });
    $(document).on('click', '#add-group-button', function () {
        applyGroupForm();
    });
    $(document).on('click', '#add-course-button', function () {
        applyCourseForm();
    });
    $(document).on('click', '#add-admin-button', function () {
        applyUserForm();
        $('#user-form #role').val("ADMIN");
    });
    $(document).on('click', '#add-office-button', function () {
        applyUserForm();
        $('#user-form #role').val("OFFICE");
    });
    $(document).on('click', '#add-lecturer-button', function () {
        applyUserForm();
        $('#user-form #role').val("LECTURER");
    });
    $(document).on('click', '#add-care-button', function () {
        applyUserForm();
        $('#user-form #role').val("CARE");
    });
    $(document).on('click', '#add-student-button', function () {
        applyStudentForm();
        $('#user-form #role').val("STUDENT");
    });
    $(document).on('click', '#show-students-group-button', function (event) {
        event.preventDefault();
        var groupID = $(this).attr('href');
        $.get('group-students.jsp', function (data) {
            $('#page').fadeOut(function(){
                $('#page').html(data);
                $('#please-wait-dialog').modal();
                $.get('api/groups/'+groupID, function (data) {
                    console.log(data);
                    var html = $.templates("#table-students-template").render(data.students);
                    $("#list-students-table tbody").html(html);
                    $('.modal').modal('hide');
                });
            });
            $('#page').fadeIn();
        });
    });
});





