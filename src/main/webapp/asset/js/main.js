$(document).ready(function() {

    $(document).on('click', '#add-user-submit', function() {
        submitUserForm("#add-user-form");
    });
    $(document).on('click', '#edit-user-submit', function() {
        submitUserForm("#edit-user-form");
    });
    $(document).on('click', '#form-group-submit', function() {
        submitGroupForm("#group-form");
    });
    $(document).on('click', '#add-group-button', function() {
        applyGroupForm();
        $('#add-user-form #role').val("ADMIN");
    });
    $(document).on('click', '#add-admin-button', function() {
        applyUserForm();
        $('#add-user-form #role').val("ADMIN");
    });
    $(document).on('click', '#add-office-button', function() {
        applyUserForm();
        $('#add-user-form #role').val("OFFICE");
    });
    $(document).on('click', '#add-lecturer-button', function() {
        applyUserForm();
        $('#add-user-form #role').val("LECTURER");
    });
    $(document).on('click', '#add-care-button', function() {
        applyUserForm();
        $('#add-user-form #role').val("CARE");
    });
    $(document).on('click', '#add-student-button', function() {
        applyStudentForm();
        $('#add-user-form #role').val("STUDENT");     
    });

});






