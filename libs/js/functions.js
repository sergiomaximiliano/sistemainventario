var precioCompra = 0;
function suggetion() {

    $('#sug_input').keyup(function (e) {

        var formData = {
            'product_name': $('input[name=title]').val()
        };

        if (formData['product_name'].length >= 1) {

            // process the form
            $.ajax({
                type: 'POST',
                url: 'ajax.php',
                data: formData,
                dataType: 'json',
                encode: true
            })
                .done(function (data) {
                    //console.log(data);
                    $('#result').html(data).fadeIn();
                    $('#result li').click(function () {

                        $('#sug_input').val($(this).text());
                        $('#result').fadeOut(500);

                    });

                    $("#sug_input").blur(function () {
                        $("#result").fadeOut(500);
                    });

                });

        } else {

            $("#result").hide();

        };

        e.preventDefault();
    });

}
$('#sug-form').submit(function (e) {
    var formData = {
        'p_name': $('input[name=title]').val()
    };
    // process the form
    $.ajax({
        type: 'POST',
        url: 'ajax.php',
        data: formData,
        dataType: 'json',
        encode: true
    })
        .done(function (data) {
            //console.log(data);
            $('#product_info').html(data).show();
            total();
            $('.datePicker').datepicker('update', new Date());
        }).fail(function () {
            $('#product_info').html(data).show();
        });
    e.preventDefault();
});
function total() {
    $('#product_info input').change(function (e) {
        var price = +$('input[name=price]').val() || 0;
        var qty = +$('input[name=quantity]').val() || 0;
        var buyPrice = +$('input[name=p_buyPrice]').val() || 0;
        var total = qty * price;
        var profit = (qty * price) - (qty * buyPrice);
        $('input[name=total]').val(total.toFixed(2));
        $('input[name=profit]').val(profit.toFixed(2));
    });
}

function getBuyPrice(){
    precioCompra = $('input[name=s_profit]').val() / $('input[name=quantity]').val();
}

function calculateProfitOnEdit(){
    $('input[name=quantity]').change(function(e){
        var profit = precioCompra * $(this).val();
        $('input[name=s_profit]').val(profit.toFixed(2));
    });
}

$(document).ready(function () {

    //tooltip
    $('[data-toggle="tooltip"]').tooltip();

    $('.submenu-toggle').click(function () {
        $(this).parent().children('ul.submenu').toggle(200);
    });
    //suggetion for finding product names
    suggetion();
    // Calculate total ammont
    total();
    //obtener precio de compra
    getBuyPrice()
    //calcular ganancia en edicion de venta
    calculateProfitOnEdit()
    $('.datepicker')
        .datepicker({
            format: 'yyyy-mm-dd',
            todayHighlight: true,
            autoclose: true
        });
});
