$(function () {
    $("#customers-filter-form").dialog({
        autoOpen: false,
        height: 300,
        width: 400,
        modal: true,
        resizable: false,
        buttons: {
            'Применить': function () {
                $("#customerFilterForm").submit();
            },
            'Отмена': function () {
                $(this).dialog('close');
            }
        },
        open: function (event, ui) {
            $('body').css('overflow', 'hidden');
            $('.ui-widget-overlay').css('width', '100%');
        },
        close: function (event, ui) {
            $('body').css('overflow', 'auto');
        }
    });


})


function openFilterWindow() {


    $.get("./filter", {},
        function (data) {
            $('#customers-filter-form').deserialize(data);
            $('#customers-filter-form').dialog('open');
        });
};