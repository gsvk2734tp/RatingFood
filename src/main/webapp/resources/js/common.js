const feedAjaxUrl = "ajax/beersPage/";

function addRow() {
    $("#detailsForm").find(":input").val("");
    $("#addRow").modal();
}

function returnCheck(id, ranking)
{
    return (id == ranking);
}

function editRow(id) {
    // $("#detailsFormEdit").find("input[name='name']").val(123);
    $.get(feedAjaxUrl + id, function (data) {
        $.each(data, function (key, value) {
            $('#detailsFormEdit').find("input[name='" + key + "']").val(value);
            $("#Edit"+key).attr("src","/rankingFeed/resources/images/beers/" + value);
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