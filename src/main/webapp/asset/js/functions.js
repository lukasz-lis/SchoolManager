(function ($) {

    $.fn.serializeJSON = function () {
        var json = {}
        var form = $(this);
        form.find('input, select').each(function () {
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
        })
        return json;
    }

})(jQuery)

function deserializeJSON(json) {
    var json = $(this);
    $.each(json, function (key, value) {
        $("input[name='"+key+"']").val(value);
    })
}
function editUserByModal(username, role) {
    var response = findUserByUsername(username);
    var json = response.responseJSON;
    deserializeJSON(json);
}

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
            refreshData($(formID).serializeJSON());
            $('.modal').modal('hide');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('ajax error: ' + textStatus);
        }
    });
}
function findUserByUsername(api, username) {
    return $.ajax({
        type: 'GET',
        url: api + "/" + username,
        dataType: 'json',
        error: function (jqXHR, textStatus, errorThrown) {
            alert('ajax error: ' + textStatus);
        }
    });
}
function addNewRecordToUserDT(data) {
    $('<tr>').append(
        $('<td>').text(data.username),
        $('<td>').text(data.firstName),
        $('<td>').text(data.secName),
        $('<td>').text(data.email),
        $('<td>').html('<button class="edit-button-form" data-toggle="modal" data-target="#add-admin-form" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span></button>')
    ).appendTo('#list-user-table');

}
function refreshUserDT(api) {
    $('#please-wait-dialog').modal();
    $.ajax({
        type: 'GET',
        url: api,
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            $.each(data, function (i, item) {
                addNewRecordToUserDT(item);
            });
            $('.modal').modal('hide');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            $('.modal').modal('hide');
            alert('ajax error: ' + textStatus);
        }
    });
}


