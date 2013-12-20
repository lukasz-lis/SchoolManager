$(function() {
    // attaching click handler to links
    $("a.list-group-item").click(function(e) {
        e.stopPropagation();
        event.preventDefault();
        var url = $(this).attr("href");
        $('#content').slideUp(500, function() {
            $.ajax({
                type: "GET",
                url: url,
                success: function(msg) {
                    $('#content').html(msg);
                    $('#content').slideDown();
                },
                error: function() {
                    alert("An error occured");
                }
            });
        });

    });

});
function userFormToJSON() {
    return JSON.stringify({
        adresses: [
            {
                localNumber: $("#local-number").val(),
                postCode: $("#postcode").val(),
                streetName: $("#street-name").val(),
                streetNumber: $("#street-number").val()
            }
        ],
        email: $("#email").val(),
        firstName: $("#name").val(),
        password: $("#password").val(),
        phoneses: [
            {
                active:true,
                phoneNumber: $("#phone").val()
            }
        ],
        role:"",
        salt:"",
        secName: $("#secname").val(),
        username: $("#username").val()
    });
}
function addUser() {
    console.log(userFormToJSON());
    $.ajax({
        type: 'POST',
        contentType: "application/json",
        url: "api/users",
        dataType: "json",
        data: userFormToJSON(),
        success: function(data, textStatus, jqXHR) {
            alert('User created successfully');
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert('addWine error: ' + textStatus);
        }
    });
}
$('#user-add-button').click(function(e) {
    addUser();
    return false;
});
