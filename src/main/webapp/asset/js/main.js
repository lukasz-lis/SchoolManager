
function submitModalForm(formID) {
    $('.modal').modal('hide');
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'POST',
        contentType: "application/json",
        url: $(formID).attr('action'),
        dataType: 'json',
        data: JSON.stringify($(formID).serializeJSON()),
        success: function (data, textStatus, jqXHR) {
            $('.modal').modal('hide');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('ajax error: ' + textStatus);
        }
    });

}$(document).ready(function () {

    $(document).on('click', '#admin-add-button', function () {
        submitModalForm('#admin-add-form');
    });

    $("a.list-link").click(function (e) {
        e.stopPropagation();
        event.preventDefault();
        var url = $(this).attr("href");
        $('#content').slideUp(500, function () {
            $.ajax({
                type: "GET",
                url: url,
                success: function (msg) {
                    $('#content').html(msg);
                    $('#content').slideDown();
                },
                error: function () {
                    alert("An error occured");
                }
            });
        });

    });

    (function($){

        $.fn.serializeJSON = function(){
            var json = {}
            var form = $(this);
            form.find('input, select').each(function(){
                var val
                if (!this.name) return;

                if ('radio' === this.type) {
                    if (json[this.name]) { return; }

                    json[this.name] = this.checked ? this.value : '';
                } else if ('checkbox' === this.type) {
                    val = json[this.name];

                    if (!this.checked) {
                        if (!val) { json[this.name] = ''; }
                    } else {
                        json[this.name] =
                            typeof val === 'string' ? [val, this.value] :
                                $.isArray(val) ? $.merge(val, [this.value]) :
                                    this.value;
                    }
                } else {
                    json[this.name] = this.value;
                }
            })
            return json;
        }

    })(jQuery)

});






