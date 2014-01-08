(function($) {
    $.fn.serializeJSON = function() {
        var json = {}
        var form = $(this);
        form.find('input, select').each(function() {
            var val
            if (!this.name)
                return;

            if ('radio' === this.type) {
                if (json[this.name]) {
                    return;
                }

                json[this.name] = this.checked ? this.value : '';
            } else if ('checkbox' === this.type) {
                val = json[this.name];

                if (!this.checked) {
                    if (!val) {
                        json[this.name] = '';
                    }
                } else {
                    json[this.name] =
                            typeof val === 'string' ? [val, this.value] :
                            $.isArray(val) ? $.merge(val, [this.value]) :
                            this.value;
                }
            } else {
                json[this.name] = this.value;
            }
        });
        return json;
    };

})(jQuery);
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
function findAllAdmins() {
    return $.ajax({
        type: 'GET',
        url: 'api/administrators',
        dataType: 'json',
        error: function(jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('Ajax error : ' + textStatus);
        }
    });
}
function editButtonClick(username, api) {
    var res = findUserByUsername(api, username);
    $.when(res).done(function() {
        var json = res.responseJSON
        var myTmpl = $.templates("#form-edit-template");
        myTmpl.link("#edit-user-form", json);
    });
}
function refreshAdminList() {
    $('.modal').modal('hide');
    $('#please-wait-dialog').modal();
    var res = findAllAdmins();
    $.when(res).done(function() {
        var html = $.templates("#list-user-template").render(res.responseJSON);
        $("#list-user-table tbody").html(html);
        $('.modal').modal('hide');
    });
}
function submitForm(formID) {
    console.log(JSON.stringify($(formID).serializeJSON()));
    $.ajax({
        type: $(formID).attr('method'),
        url: $(formID).attr('action'),
        dataType: 'json',
        data: JSON.stringify($(formID).serializeJSON())
    }).done(function() {
       refreshAdminList();               
    });
}

