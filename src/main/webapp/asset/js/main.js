$(document).ready(function() {

    $(document).on('click', '#admin-add-button', function() {
        submitModalForm('#admin-add-form');
    });

    $("a.list-link").click(function(e) {
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






