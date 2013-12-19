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
