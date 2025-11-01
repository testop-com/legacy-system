var items = [];
var tipo_imposto = [];
var cambio = 1;
var totalAmountGlobal = 0;

$(document).ready(function() {

    if (document.getElementById('ordem_view_transp') || document.getElementById('ordem_edit')) {
        var dataHoje = new Date();
        var dataFim = "";
        
        var refNo = 'PO-' + $("#reference_no").val();
        $("#reference_no_write").val(refNo);

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

        if ($('#moeda_nome').val() == 1) {
            $('#tdContra').hide();
        } else {
            var moeda_name = $("#moeda_nome option:selected").text();
            $('#cambio').show();
            $('#cambio .referencia').text(moeda_name);
        }

        $('#categoria_despesa_id').on('change', function() {
            if ($('#categoria_despesa_id').val() == 14) {

                $('.cartao').css({
                    'display': 'inline'
                })

            } else {

                $('#cartao').hide();
            }
        });

        $('#payment_term').change(function() {
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
            $('#datepicker1').datepicker('update', dataFim);
            $("#data_fim").datepicker('update', dataFim);
        }

        date(1);

        $('#moeda_nome').change(function() {
            total();
            $.ajax({
                url: SITE_URL + '/taxasCambio/' + this.value,
                type: 'GET',
                dataType: 'json', // added data type
                success: function(res) {
                    cambio = res[0].venda;
                    $('#venda').val(cambio);
                    calcularCambio();
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
        });
    }

});


if (document.getElementById('ordem_view_transp') || document.getElementById('ordem_edit')) {

    function calcularCambio() {
        nome_moeda = $('#moeda_nome option:selected').text();
        var totalCambio = parseFloat(totalAmountGlobal) / parseFloat(cambio);

        if (cambio != 1) {
            totalCambio = parseFloat(totalAmountGlobal) / parseFloat(cambio);
        } else {
            cambio = parseFloat($('#venda').val());
            totalCambio = parseFloat(totalAmountGlobal) / parseFloat(cambio);
        }

        if ($('#moeda_nome').val() != 1 && !isNaN(totalCambio)) {
            var moeda_name = $("#moeda_nome option:selected").text();
            $('#cambio').show();
            $('#tdContra').show();

            $('#referencia').text(nome_moeda);
            $('#valorCambio').text(cambio);
            $('#cambio .referencia').text(moeda_name);

            $('#TotalContra').val(number_format(totalCambio, 2, '.', ','));

            $('#totalCambio').val(number_format(totalCambio, 2, '.', ','));

        } else {
            $('#valorCambio').text(1);
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
            // if (checkBox.checked) {
            //     var taxa = 1;
            //     var iva = ((unitprice * qty_value) * parseFloat(taxa)) / 100;
            //     tax = iva;
            // }
            var discount = (parseFloat(unitprice) * qty_value * ((100 - parseFloat(discountvalue)) / 100)) - tax;
            $('#amount_' + id).val(discount)

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
            var taxa = 1;

            // if (checkBox.checked) {
            //     totalAmountWithqty = (unitprice * qty_value) - ((unitprice * qty_value) * parseFloat(taxa)) / 100;
            //     $('#amount_' + id).val(totalAmountWithqty);
            //     $('#iva_' + id).text(((unitprice * qty_value) * parseFloat(taxa)) / 100);
            // } else {
                $('#amount_' + id).val(totalAmountWithqty);
            // }

            total();
        }
    }

    function unitPrice(id, qty) {
        var qty_value = parseFloat($('#qty_' + qty).val());
        var unitprice = parseFloat($('#unit_price_' + id).val());
        console.log($('#qty_' + qty));
        console.log(unitprice, qty_value);
        if ($('#unit_price_' + id).val() != '') {

            var totalAmountWithqty = unitprice * qty_value;

            console.log(totalAmountWithqty);

            var checkBox = document.getElementById('check_' + id);
            var select = document.getElementById('tax_id' + id);
            var taxa = 1;

            // if (checkBox.checked) {
            //     totalAmountWithqty = (unitprice * qty_value) - ((unitprice * qty_value) * parseFloat(taxa)) / 100;
            //     $('#amount_' + id).val(totalAmountWithqty);
            //     $('#iva_' + id).text(((unitprice * qty_value) * parseFloat(taxa)) / 100);
            // } else {
                $('#iva_' + id).text(((unitprice * qty_value) * parseFloat(taxa)) / 100);
                $('#amount_' + id).val(totalAmountWithqty);
            // }

            total();
        }
    }

    function taxRate(id, qty) {
        var checkBox = document.getElementById('check_' + id);
        var select = document.getElementById('tax_id' + id);
        var taxa = 1;

        var qty_value = parseFloat($('#qty_' + qty).val());
        var unitprice = parseFloat($('#unit_price_' + id).val());

        // if (checkBox.checked) {
        //     var totalAmountWithqty = (unitprice * qty_value) - ((unitprice * qty_value) * parseFloat(taxa)) / 100;
        //     $('#amount_' + id).val(totalAmountWithqty);
        // }

        var iva = ((unitprice * qty_value) * parseFloat(taxa)) / 100;
        $('#iva_' + id).text(iva);

        console.log(iva);

        total();
    }

    function checked_tax(id, qty, context) {
        var checkBox = document.getElementById('check_' + id);

        var amount = parseFloat($('#amount_' + id).val());
        var qty_value = parseFloat($('#qty_' + qty).val());
        var unitprice = parseFloat($('#unit_price_' + id).val());
        var discountvalue = $('#discount_id_' + id).val();
        var select = document.getElementById('tax_id' + id);
        var taxa = 1;

        // if (checkBox.checked) {
        //     var total_by_qty = parseFloat(unitprice) * qty_value;
        //     var discount = parseFloat(unitprice) * qty_value * ((100 - parseFloat(discountvalue)) / 100);
        //     var iva = (discount * parseFloat(taxa)) / 100;

        //     var tax_value = discount - iva;

        //     $('#inclusa_' + id)[0].value = "yes";

        //     context.value = 'yes';

        //     $('#amount_' + id).val(tax_value);
        // } else {
            var total_by_qty = parseFloat(unitprice) * qty_value;
            var discount = parseFloat(unitprice) * qty_value * ((100 - parseFloat(discountvalue)) / 100);
            var iva = (discount * parseFloat(taxa)) / 100;

            var tax_value = discount;

            context.value = 'no';

            $('#inclusa_' + id)[0].value = "no";

            $('#amount_' + id).val(tax_value);
        // }

        total();
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

        console.log($('#valorCambio').text());

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

            console.log(qty, unitprice, tax, discount, amount);

            var checked = currentRow.find('.checkitem');

            // if (checked[0].checked) {
            //     taxTotal += 0;
            // } else {
                taxTotal += ((parseFloat(unitprice) * parseFloat(qty) * ((100 - parseFloat(discount)) / 100)) * parseFloat(tax)) / 100;
            // }

            totalAmount += parseFloat(amount);
            discountTotal += (parseFloat(unitprice) * parseFloat(qty) * ((100 - parseFloat(discount)) / 100)) - parseFloat(unitprice) * parseFloat(qty);

            if (unitprice != "") {
                $('#subTotal').text(number_format(totalAmount, 2, '.', ','));
                $('#taxTotal').text(number_format(0, 2, '.', ','));

                $('#imposto_total').val(0);

                totalAmountGlobal = (totalAmount);

                $('#grandTotal2').val(number_format(totalAmountGlobal, 2, '.', ','));
                $('#total').val(totalAmountGlobal);
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
        number = parseFloat(number);

        // if (isNaN(number)) {
        //     throw new TypeError("number is not valid");
        // }

        decimals = decimals || 0;
        dec_point = dec_point || '.';
        thousands_point = thousands_point || ',';

        number = number.toFixed(decimals);

        var parts = number.split('.');
        parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, thousands_point);

        return parts.join(dec_point);
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

        var despesa_viaturas_options = "";
        var despesa_viaturas = window.despesaViaturas;

        for (i = 0; i < despesa_viaturas.length; i++) {
            despesa_viaturas_options += '<option value="' + despesa_viaturas[i].id + '">' + despesa_viaturas[i].nome + '</option>';
        }

        // var viaturas_options = "";
        
        viaturas_options = '<option value="">Selecione...</option>';
        var viaturas = window.viaturas;

        for (i = 0; i < viaturas.length; i++) {
            viaturas_options += '<option value="' + viaturas[i].id + '">' 
                + viaturas[i].marca + ' - ' + viaturas[i].matricula + '</option>';
        }

        var new_row = `
            <tr class="linha">
                <td>
                    <input type='hidden' name='stock_id[]' value='zero'>
                    <select class="form-control select2 despesa_viaturas" name="despesa_viatura[]">${despesa_viaturas_options}</select>
                </td>
                <td>
                    <input type='hidden' name='stock_id[]' value='zero'><input required type='text' class='form-control' name='description[]' >
                </td>
                <td>
                    <input onkeyup="qty(${custom.id},'${custom.codigo}')" type='text' data-id="${custom.id}" id="qty_${custom.codigo}" class='form-control text-center custom_units unidades' name='item_quantity[]' value='1'><input type='hidden' name='item_id[]' value='zero'><input type='hidden' name='preco_comp[]' value='0'><input type='hidden' name='type[]' value='1'>
                </td>
                <td>
                    <input onkeyup="unitPrice(${custom.id},'${custom.codigo}')" type='text' data-id="${custom.id}" id="unit_price_${custom.id}" class='form-control text-center custom_rate percentagem' name='unit_price[]' value='0'>
                </td>
                <td>
                    <select class="form-control select2 viaturas" name="viaturas[]">${viaturas_options}</select>
                </td>
                <td><input type='text' id="amount_${custom.id}" class='form-control text-center amount custom_amount' name='item_price[]' value='0' readonly></td>
                <td class='text-center'>
                    <button type='button' class='btn btn-xs btn-danger delete_item'><i class='glyphicon glyphicon-trash'></i></button>
                </td>
            </tr>`;

        $("table tbody .custom-item").before(new_row);

        // inicializa Select2 apenas nos dois selects da nova linha
        // pegamos o <tr> recém-inserido (usando .prev()) e inicializamos cada select separadamente
        var $newTr = $("table tbody .custom-item").prev("tr.linha");

        $newTr.find("select.despesa_viaturas").select2({
            width: 'resolve',
            placeholder: "Selecione uma Despesa"
        });

        $newTr.find("select.viaturas").select2({
            width: 'resolve',
            placeholder: "Selecione uma Viatura"
        });
    }

    $('#purchaseInvoice').on('click', '.delete_item', function() {
        $(this).closest("tr").remove();

        $('#subTotal').text("");
        $('#taxTotal').text("");
        $('#Descount').text("");
        $('#grandTotal2').val("");

        total();
    });
}

$('#salesForm').validate({
    rules: {
        debtor_no: {
            required: true
        },
        supplier_no: {
            required: true
        },
        from_stk_loc: {
            required: true
        },
        loteGet: {
            required: true,
        },
        ord_date: {
            required: true
        },
        reference: {
            required: true
        },
        branch_id: {
            required: true
        }
    }
});