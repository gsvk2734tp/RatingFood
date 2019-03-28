const feedAjaxUrl = "ajax/beersPage/";

function addRow() {
    $("#detailsForm").find(":input").val("");
    $("#addRow").modal();
}

function returnCheck($rating, $return)
{
    return ($rating == $return) ? 'checked="checked"' : NULL;
}

function editRow(id) {
    // $("#detailsFormEdit").find("input[name='name']").val(123);
    $.get(feedAjaxUrl + id, function (data) {
        $.each(data, function (key, value) {
            $('#detailsFormEdit').find("input[name='" + key + "']").val(value);
        });
        $('#editRow').modal();
    });
}

function deleteRow(id) {
    $.ajax({
        url: feedAjaxUrl + id,
        type: "DELETE"
    }).done(function () {
       ;
    });
}

function updateRow(id) {
    $("#detailsFormEdit").find(":input").val("");
    $("#addRow").modal();
}


function updateTableByData(data) {
    context.datatableApi.clear().rows.add(data).draw();
}