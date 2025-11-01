var items = [];
var tipo_imposto = [];
var cambio = 1;
var totalAmountGlobal = 0;
var moeda_id = 0;
var cambio_moeda_selecionada = 0;
var payment_term = 1;


try {
    if (moeda_doc != 0) {
        cambio_moeda_selecionada = moeda_doc;
    }

    if (total_global != 0) {
        totalAmountGlobal = parseFloat(total_global);
    }
} catch (e) {
    moeda_selecionda = 0;
    //console.log('something wrong', e);
}

$(document).ready(function() {
    if (document.getElementById('factura_view') || document.getElementById('factura_edit') || document.getElementById('cotacao_view') || document.getElementById('cotacao_edit')) {
        var dataHoje = new Date();
        var dataFim = "";

        try {
            if (moeda_selecionda != cambio) {
                get_moeda(moeda_selecionda);
            } else {
                cambio = parseFloat($('#venda').val());
            }
        } catch (e) {
            moeda_selecionda = 0;
            //console.log(e);
        }

        if ($('.amount')) {
            var amount = $('.amount');
            for (var i = 0; i < amount.length; i++) {
                $(amount[i]).val(parseFloat(amount[i].value).toFixed(2));
            }
        }

        function get_moeda(id) {
            $.ajax({
                url: SITE_URL + '/taxasCambio/' + id,
                type: 'GET',
                dataType: 'json', // added data type
                success: function(res) {
                    cambio_moeda_selecionada = res[0].venda;
                    cambio = res[0].venda;
                    var select = document.getElementById('moeda_nome').childNodes;

                    for (var i = 0; i < select.length; i++) {
                        var id = $(select[i]).attr('value');
                        if (id == undefined) {
                            continue
                        }
                        if (id == moeda_selecionda) {
                            var moeda_nome = $(select[i])[0].innerText;
                            $('.precounitario').text(moeda_nome);
                            $('.totalMoedaSelectedSubTotal').text(moeda_nome);
                            $('.totalMoedaSelectedDiscount').text(moeda_nome);
                            $('.totalMoedaSelectedTax').text(moeda_nome);
                            $('.totalMoedaSelected').text(moeda_nome);
                            break;
                        }
                    }

                    if ($('#detalhes-view')[0]) {
                        moeda_id = res[0].id;
                        cambio = res[0].venda;
                        try {
                            totalAmountGlobal = total_global;
                        } catch (e) {
                            console.log(e);
                        }
                        calcularCambio();
                    }

                },
                error: function(response) {
                    console.log(response);
                }
            });
        }

        total();

        //select2
        $(".select2").select2();
        //Date picker
        $('.datepicker').datepicker({
            autoclose: true,
            format: 'dd-mm-yyyy',
        });

        $('#datepicker').datepicker({
            autoclose: true,
            format: 'dd-mm-yyyy',
        });

        $('#payment_term').change(function() {

            payment_term = this.value;

            switch (parseInt(this.value)) {
                case 1:
                    date(1);
                    break;
                case 2:
                    date(15);
                    // code block
                    break;
                case 3:
                    date(30);
                    // code block
                    break;
                case 4:
                    date(7);
                    // code block
                    break;
                default:
                    // code block
            }

        });

        $('#datepicker').datepicker('update', dataHoje);

        function date(days) {
            dataHoje = new Date();
            dataFim = new Date(dataHoje.setDate(dataHoje.getDate() + days));

            var newdate = new Date();

            newdate.setDate(newdate.getDate() + Number(days));

            var dd = newdate.getDate();
            var mm = newdate.getMonth() + 1;
            var y = newdate.getFullYear();
            var dataFim2 = dd + '-' + mm + '-' + y;

            $('#data_fim2').val(dataFim2);

            $('#datepicker1').datepicker('update', dataFim);
            $("#data_fim").datepicker('update', dataFim);
        }

        date(1);

        $('#datepicker').datepicker({
            autoclose: true,
        }).on('changeDate', function(ev) {

            var fulldate = $(this).val();
            fulldate = fulldate.split("-");

            var day = fulldate[0];

            var days;

            switch (parseInt(payment_term)) {
                case 1:
                    days = 1;
                    break;
                case 2:
                    days = 15;
                    // code block
                    break;
                case 3:
                    days = 30;
                    // code block
                    break;
                case 4:
                    days = 7;
                    // code block
                    break;
                default:
                    // code block
            }

            dataFim = new Date(dataHoje.setDate(parseInt(day) + days));

            $('#datepicker1').datepicker('update', dataFim);
        });

        $('#moeda_nome').change(function() {
            total();
            $.ajax({
                url: SITE_URL + '/taxasCambio/' + this.value,
                type: 'GET',
                dataType: 'json', // added data type
                success: function(res) {
                    cambio = res[0].venda;
                    moeda_id = res[0].id;
                    $('#venda').val(cambio);

                    if (totalAmountGlobal == 0) {
                        totalAmountGlobal = parseFloat($('.as-total').val());
                    }

                    calcularCambio();

                    if (moeda_selecionda == moeda_id) {
                        $('#valorCambio').text(1);
                        $('#tdContra').hide();
                        $('#cambio').hide();
                    }

                },
                error: function(response) {
                    console.log(response);
                }
            });
        });

        if ($('#moeda_nome').val() == 1) {
            $('#tdContra').hide();
        } else {
            var moeda_name = $("#moeda_nome option:selected").text();
            $('#cambio').show();
            $('#cambio .referencia').text(moeda_name);
            // $('.referencia2').text(moeda_name);
        }


        function ajax(url) {
            $.ajax({
                url: SITE_URL + url,
                type: 'GET',
                dataType: 'json', // added data type
                success: function(res) {
                    tipo_imposto = res;
                },
                error: function(response) {
                    console.log(response);
                }
            });
        }

        ajax('/get/iva');
        $(window).keydown(function(event) {
            if (event.keyCode == 13) {
                event.preventDefault();
                return false;
            }
        });

        $('#salesForm').submit(function(e) {
            if (totalAmountGlobal == 0) {
                e.preventDefault();
                var offTop = $("html, body").offset().top - 43;
                $("html, body").scrollTop(offTop);
                $('#errorzerovalue').show();
            }

            if ($('#venda').val() == "") {
                $('#venda').val(1);
            }
        });
    }

});

function calcularCambio() {
    nome_moeda = $('#moeda_nome option:selected').text();
    var old_cambio_for_solution = 0;
    if (cambio == 1) {
        cambio = parseFloat(cambio_moeda_selecionada);
        old_cambio_for_solution = cambio;
    }

    var totalCambio = parseFloat(totalAmountGlobal) * parseFloat(cambio);

    var moeda_selected = document.getElementById('moeda_nome');
    var moeda_convert = moeda_selected.options[moeda_selected.selectedIndex].value;

    if (moeda_convert != moeda_id && $('#venda').val() != 1) {
        cambio = parseFloat($('#venda').val());
    }

    if (moeda_selecionda == 1) {

        if (total_global != 0) {
            totalAmountGlobal = parseFloat(total_global);
        }

        totalCambio = parseFloat(totalAmountGlobal) / parseFloat(cambio);

        if (cambio != 0) {
            totalCambio = parseFloat(totalAmountGlobal) / parseFloat(cambio);
        } else {
            totalCambio = parseFloat(totalAmountGlobal) / parseFloat(cambio);
            if (parseFloat($('#venda').val()) != 0) {
                totalCambio = parseFloat(totalAmountGlobal) / parseFloat($('#venda').val());
            }
        }

    } else {

        if (cambio != 0) {

            totalCambio = parseFloat(totalAmountGlobal) * parseFloat(cambio);

        } else {

            totalCambio = parseFloat(totalAmountGlobal) * parseFloat(cambio);
            if (parseFloat($('#venda').val()) != 0) {
                totalCambio = parseFloat(totalAmountGlobal) * parseFloat($('#venda').val());
            }

        }

    }

    if (($('#moeda_nome').val() != 0 && !isNaN(totalCambio) && moeda_selecionda != moeda_id) || ($('#detalhes-view')[0] && moeda_selecionda == moeda_id)) {
        var moeda_name = $("#moeda_nome option:selected").text();
        $('#cambio').show();
        $('#tdContra').show();

        $('#referencia').text(nome_moeda);
        $('#referencia2').text(nome_moeda);
        $('#valorCambio').text(cambio);
        $('#cambio .referencia').text(moeda_name);

        $('#TotalContra').val(number_format(totalCambio, 2, '.', ','));

        $('#totalCambio').val(number_format(totalCambio, 2, '.', ','));

        $('#grandTotal').val(number_format(totalCambio, 2, '.', ','));

        if ($('#detalhes-view')[0]) {
            $('[name="grandTotal2"]').val(number_format(totalCambio, 2, '.', ','));
        }

    } else {
        $('#valorCambio').text(1);
        $('#tdContra').hide();
        $('#cambio').hide();
    }

    moeda_id = moeda_selected.options[moeda_selected.selectedIndex].value;

    if (moeda_selecionda == moeda_id) {
        $('#tdContra').hide();
        $('#cambio').hide();
    }
}

function discount(id, qty) {
    var checkBox = document.getElementById('check_' + id);
    var select = document.getElementById('tax_id' + id);

    var qty_value = parseFloat($('#qty_' + qty).val());
    var unitprice = $('#unit_price_' + id).val();
    var discountvalue = $('#discount_id_' + id).val();
    var tax = 0;

    if (discountvalue != '') {
        if (checkBox.checked) {
            var taxa = select.options[select.selectedIndex].getAttribute('taxrate');
            var iva = ((unitprice * qty_value) * parseFloat(taxa)) / 100;
            tax = iva;
        }
        var discount = (parseFloat(unitprice) * qty_value * ((100 - parseFloat(discountvalue)) / 100)) - tax;
        $('#amount_' + id).val(parseFloat(discount))

        total();
    }
}

function qty(id, qty) {
    if ($('#qty_' + qty).val() != '') {
        var qty_value = parseFloat($('#qty_' + qty).val());
        var unitprice = parseFloat($('#unit_price_' + id).val());
        var totalAmountWithqty = unitprice * qty_value;

        var checkBox = document.getElementById('check_' + id);
        var select = document.getElementById('tax_id' + id);
        var taxa = select.options[select.selectedIndex].getAttribute('taxrate');

        if (checkBox.checked) {
            totalAmountWithqty = (unitprice * qty_value) - ((unitprice * qty_value) * parseFloat(taxa)) / 100;
            $('#amount_' + id).val(parseFloat(totalAmountWithqty));
            $('#iva_' + id).text(((unitprice * qty_value) * parseFloat(taxa)) / 100);
        } else {
            $('#amount_' + id).val(parseFloat(totalAmountWithqty));
        }

        total();
        discount(id, qty);
    }
}

function unitPrice(id, qty) {
    var qty_value = parseFloat($('#qty_' + qty).val());
    var unitprice = parseFloat($('#unit_price_' + id).val());
    if ($('#unit_price_' + id).val() != '') {

        var totalAmountWithqty = unitprice * qty_value;

        var checkBox = document.getElementById('check_' + id);
        var select = document.getElementById('tax_id' + id);
        var taxa = select.options[select.selectedIndex].getAttribute('taxrate');

        if (checkBox.checked) {
            totalAmountWithqty = (unitprice * qty_value) - ((unitprice * qty_value) * parseFloat(taxa)) / 100;
            $('#amount_' + id).val(parseFloat(totalAmountWithqty));
            $('#iva_' + id).text(((unitprice * qty_value) * parseFloat(taxa)) / 100);
        } else {
            $('#iva_' + id).text(((unitprice * qty_value) * parseFloat(taxa)) / 100);
            $('#amount_' + id).val(parseFloat(totalAmountWithqty));
        }

        total();
        discount(id, qty);
    }
}

function taxRate(id, qty) {
    var checkBox = document.getElementById('check_' + id);
    var select = document.getElementById('tax_id' + id);
    var taxa = select.options[select.selectedIndex].getAttribute('taxrate');

    var qty_value = parseFloat($('#qty_' + qty).val());
    var unitprice = parseFloat($('#unit_price_' + id).val());

    if (checkBox.checked) {
        var totalAmountWithqty = (unitprice * qty_value) - ((unitprice * qty_value) * parseFloat(taxa)) / 100;
        $('#amount_' + id).val(parseFloat(totalAmountWithqty));
    }

    var iva = ((unitprice * qty_value) * parseFloat(taxa)) / 100;
    $('#iva_' + id).text(iva);

    total();
    discount(id, qty);
}

function checked_tax(id, qty, context) {
    var checkBox = document.getElementById('check_' + id);

    var amount = parseFloat($('#amount_' + id).val());
    var qty_value = parseFloat($('#qty_' + qty).val());
    var unitprice = parseFloat($('#unit_price_' + id).val());
    var discountvalue = $('#discount_id_' + id).val();
    var select = document.getElementById('tax_id' + id);
    var taxa = select.options[select.selectedIndex].getAttribute('taxrate');

    if (checkBox.checked) {
        var total_by_qty = parseFloat(unitprice) * qty_value;
        var discount = parseFloat(unitprice) * qty_value * ((100 - parseFloat(discountvalue)) / 100);
        var iva = (discount * parseFloat(taxa)) / 100;

        var tax_value = discount - iva;

        $('#inclusa_' + id)[0].value = "yes";

        context.value = 'yes';

        $('#amount_' + id).val(parseFloat(tax_value));
    } else {
        var total_by_qty = parseFloat(unitprice) * qty_value;
        var discount = parseFloat(unitprice) * qty_value * ((100 - parseFloat(discountvalue)) / 100);
        var iva = (discount * parseFloat(taxa)) / 100;

        var tax_value = discount;

        context.value = 'no';

        $('#inclusa_' + id)[0].value = "no";

        $('#amount_' + id).val(parseFloat(tax_value));
    }

    total();
    discount(id, qty);
}

function remove(id) {
    var elem = document.getElementById('rowid' + id);
    elem.parentNode.removeChild(elem);

    for (i = 0; i < items.length; i++) {
        if (items[i].id == id) {
            items.splice(i, 1);
            break;
        }
    }

    $('#subTotal').text("");
    $('#taxTotal').text("");
    $('#Descount').text("");
    $('#grandTotal2').val("");

    //console.log($('#valorCambio').text());

    total();
}

function total() {
    var totalAmount = 0;
    var taxTotal = 0;
    var discountTotal = 0;

    $("#purchaseInvoice .linha").each(function() {
        var currentRow = $(this);
        var qty = currentRow.find(".unidades").val();
        var unitprice = currentRow.find(".percentagem").val();
        var tax = currentRow.find(".taxa option:selected").attr('taxrate');
        var discount = currentRow.find(".disconto").val();
        var amount = currentRow.find(".amount").val();
        //var taxainclusa = currentRow.find(".inclusaos");

        //currentRow.find(".amount").val(parseInt(unitprice * qty));

        //console.log(qty, unitprice, tax, discount, amount);

        var checked = currentRow.find('.checkitem');

        if (checked[0].checked) {
            taxTotal += 0;
        } else {
            taxTotal += ((parseFloat(unitprice) * parseFloat(qty) * ((100 - parseFloat(discount)) / 100)) * parseFloat(tax)) / 100;
        }

        totalAmount += parseFloat(amount);
        discountTotal += (parseFloat(unitprice) * parseFloat(qty) * ((100 - parseFloat(discount)) / 100)) - parseFloat(unitprice) * parseFloat(qty);

        if (discountTotal != 0) {
            $('#Descount').text(Math.abs(parseFloat(discountTotal)).toFixed(2));
        } else {
            $('#Descount').text(0);
        }

        if (unitprice != "") {
            $('#subTotal').text(number_format(totalAmount.toFixed(2), 2, '.', ','));
            $('#taxTotal').text(number_format(taxTotal, 2, '.', ','));

            totalAmountGlobal = (taxTotal + totalAmount);


            $('#grandTotal2').val(number_format(totalAmountGlobal, 2, '.', ','));

        }
    });
    calcularCambio();

    verifyTotal();
}

function verifyTotal() {
    var tr_lines = $("#purchaseInvoice .linha");
    if (tr_lines.length == 0) {
        $('#Descount').text('0');
        $('#valorCambio').text('0');
        $('#grandTotal2').val('0');
        $('#totalCambio').val('0');
        totalAmountGlobal = 0;
    }
}

/* Formatação de número */
function number_format(number, decimals, dec_point, thousands_point) {

    if (number == null || !isFinite(number)) {
        throw new TypeError("number is not valid");
    }
    if (!decimals) {
        var len = number.toString().split('.').length;
        decimals = len > 1 ? len : 0;
    }
    if (!dec_point) {
        dec_point = '.';
    }
    if (!thousands_point) {
        thousands_point = ',';
    }
    number = parseFloat(number).toFixed(decimals);
    number = number.replace(".", dec_point);
    var splitNum = number.split(dec_point);
    splitNum[0] = splitNum[0].replace(/\B(?=(\d{3})+(?!\d))/g, thousands_point);
    number = splitNum.join(dec_point);
    return number;
}

function add_row() {

    var ramdom = parseInt(Math.random() * (500 - 0) + 0);
    var code = "CUSTOM_" + parseInt(Math.random() * (100 - 0) + 0);
    var custom = {
        id: ramdom,
        codigo: code
    }

    var tipo_imposto_options = "";
    for (i = 0; i < tipo_imposto.length; i++) {
        tipo_imposto_options += '<option value="' + tipo_imposto[i].id + '" taxrate="' + tipo_imposto[i].taxa_imposto + '">' + tipo_imposto[i].nome + ' (' + tipo_imposto[i].taxa_imposto + ')</option>';
    }

    var new_row = `<tr class="linha">
            <td><input type='hidden' name='stock_id[]' value='zero'><input required type='text' class='form-control text-center' name='description[]' ></td>
            <td><input onkeyup="qty(${custom.id},'${custom.codigo}')" type='text' data-id="${custom.id}" id="qty_${custom.codigo}" class='form-control text-center custom_units unidades' name='item_quantity[]' value='1'><input type='hidden' name='item_id[]' value='zero'><input type='hidden' name='preco_comp[]' value='0'><input type='hidden' name='type[]' value='1'></td>
            <td><input onkeyup="unitPrice(${custom.id},'${custom.codigo}')" type='text' data-id="${custom.id}" id="unit_price_${custom.id}" class='form-control text-center custom_rate percentagem' name='unit_price[]' value='0'></td>
            <td><select onchange="taxRate(${custom.id},'${custom.codigo}',this)" id="tax_id${custom.id}" class="form-control taxList taxa" name="tax_id[]">${tipo_imposto_options}</select></td>'+
            <td class='text-center taxAmount' id='iva_${custom.id}' >0</td>
            <td class='text-center'><input onclick="checked_tax(${custom.id},'${custom.codigo}',this)" id="check_${custom.id}" type='checkbox' value='no' name='inclusao[]' class='checkitem inclusaos' > <input hidden id="inclusa_${custom.id}" class='pegar' value='no' name='taxainclusa[]'></td>
            <td><input type='number' onkeyup="discount(${custom.id},'${custom.codigo}')" min='0' max='99' id="discount_id_${custom.id}" class='form-control text-center custom_discount disconto' name='discount[]' value='0'></td>
            <td><input type='text' id="amount_${custom.id}" class='form-control text-center amount custom_amount' name='item_price[]' value='0' readonly></td>
            <td class='text-center'><button type='button' class='btn btn-xs btn-danger delete_item'><i class='glyphicon glyphicon-trash'></i></button></td>
            </tr>`;

    $("table tbody .custom-item").before(new_row);

}


function add_row_prestacao() {
    var x = 1;
    var ramdom = x++;
    var custom = {
        id: ramdom,
    }


    var new_row = `
        <tr class="linha">
            <td class='text-center'>
                ${ramdom}
            </td>
            <td>
                <input type='date' class='form-control text-center' name='data_pagamento[]' id = 'data_pagamento'>
            </td>
             
            <td>
                <input type='text' class='form-control text-center' name='valor[]' id = 'valor' value='0'>
            </td>
            <td class='text-center'>
                <button type='button' class='btn btn-xs btn-danger delete_item'><i class='glyphicon glyphicon-trash'></i></button>
            </td>
            
        </tr>`;

    $("table tbody .custom-item_prest").before(new_row);

}

$('#purchaseInvoice').on('click', '.delete_item', function() {
    $(this).closest("tr").remove();

    $('#subTotal').text("");
    $('#taxTotal').text("");
    $('#Descount').text("");
    $('#grandTotal2').val("");

    total();
});


//
$('#cadastro').click(function(e) {
    e.preventDefault();
    //Registo da 

    if ($('#nome_customer').val() != "") {

        $("#customer").prop("disabled", true);
        $('#dados').show();
        $('#customer').val("");
        $('#tipocliente').val("novo");

        $('#customer').eq(0).prop('selected', true);
        $('#customer').select2('destroy').select2();
    }

    //$('#conteudoModal2').html(rows2);
    var nome = $('#nome_customer').val();
    var nuit = $('#nuit_customer').val();
    var telemovel = $('#telemovel_customer').val();
    //setting values to the form
    $('#customer_new').val(nome);
    $('#customer_new_telemovel').val(telemovel);
    $('#customer_new_nuit').val(nuit);

    if (nuit == "") {
        $('#customer_new_nuit').val("000000");

    }

    var rows = '';

    //rows=rows+'<input type="text" class="form-control" value='+recibo+' disabled="">';
    if (nome != "") {
        rows = rows + '<div class="col-md-4">';
        rows = rows + '<div class="form-group">';
        rows = rows + '<label for="exampleInputEmail1">Nome<span class="text-danger"> *</span>';
        rows = rows + '</label>';
        rows = rows + '<input type="text" class="form-control" value="' + nome + '" disabled="">';
        rows = rows + '</div>';
        rows = rows + '</div>';
    }
    if (nuit != "") {
        rows = rows + '<div class="col-md-2">';
        rows = rows + '<div class="form-group">';
        rows = rows + '<label for="exampleInputEmail1">NUIT<span class="text-danger"> *</span>';
        rows = rows + '</label>';
        rows = rows + '<input type="text" class="form-control" value=' + nuit + ' disabled="">';
        rows = rows + '</div>';
        rows = rows + '</div>';
    }
    if (telemovel != "") {
        rows = rows + '<div class="col-md-2">';
        rows = rows + '<div class="form-group">';
        rows = rows + '<label for="exampleInputEmail1">Telemovel<span class="text-danger"> *</span>';
        rows = rows + '</label>';
        rows = rows + '<input type="text" class="form-control" value=' + telemovel + ' disabled="">';
        rows = rows + '</div>';
        rows = rows + '</div>';
    }

    $('#dados_cliente').html(rows);
    $('#Register_customer').modal('hide');

});