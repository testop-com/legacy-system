var items = [];
var tipo_imposto = [];
var cambio = 1;
var totalAmountGlobal = 0;

$(document).ready(function() {

    if (document.getElementById('guia_view') || document.getElementById('guia_edit') || document.getElementById('guia_transporte_view') || document.getElementById('guia_transporte_edit')) {

        //Initialize Select2 Elements
        $(".select2").select2({});

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true,
            todayHighlight: true,
            format: 'dd-mm-yyyy',
            startDate: 'd'
        });

        $('#datepicker').datepicker('update', new Date());

        $('.ref').val(Math.floor((Math.random() * 100) + 1));

        function roundToTwo(num) {
            return +(Math.round(num + "e+2") + "e-2");
        }

        total();

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

        $('.items').change(function() {
            var id = this.value;
            var tipo_imposto_options = "";

            for (i = 0; i < tipo_imposto.length; i++) {
                tipo_imposto_options += '<option value="' + tipo_imposto[i].id + '" taxrate="' + tipo_imposto[i].taxa_imposto + '">' + tipo_imposto[i].nome + ' (' + tipo_imposto[i].taxa_imposto + ')</option>';
            }

            $.ajax({
                url: SITE_URL + "/get/selected/item/" + id,
                type: "get",
                async: true,
                dataType: 'json',
                success: function(item) {
                    var e = item[0];
                    var add = true;

                    var new_row = "";

                    for (i = 0; i < items.length; i++) {
                        if (items[i].id == e.id) {
                            var currentRow = $('#rowid' + e.id);
                            var qty = currentRow.find(".unidades").val();
                            var unitprice = currentRow.find(".percentagem").val();

                            currentRow.find(".unidades").val(parseFloat(qty) + 1);

                            currentRow.find(".amount").val(parseFloat(unitprice) * parseFloat(currentRow.find(".unidades").val()));

                            total();

                            add = false;
                            break;
                        }
                    }

                    items.push(e);

                    if (add) {

                        var new_row = `<tr id="rowid${e.id}" class="linha">
                    <td class="text-center">${e.nome}<input type="hidden" name="stock_id[]" value="${e.codigo}"><input type="hidden" name="description[]" value="${e.nome}"></td>
                    <td><input onkeyup="qty(${e.id},'${e.id}')" class="form-control text-center unidades no_units" min="0" data-id="${e.id}" type="text" id="qty_${e.id}" name="item_quantity[]" value="1"><input type="hidden"  name="item_id[]" value="${e.id}">
                    <input type="hidden" name="preco_comp[]" value="${e.preco_compra}"><input type="hidden" name="type[]" value="${e.id_imposto}"></td> 
                    <td class="text-center"><input min="0" onkeyup="unitPrice(${e.id},'${e.id}')" type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id="${e.id}" id="unit_price_${e.id}" value="${e.preco_venda}"></td>
                    '<td><select onchange="taxRate(${e.id},'${e.id}')" id="tax_id${e.id}" class="form-control taxList taxa" name="tax_id[]">${tipo_imposto_options}</select></td>'+
                    <td class="text-center taxAmount" id='iva_${e.id}' > 0 </td>
                    <td class="text-center"><input onclick="checked_tax(${e.id},'${e.id}',this)" id="check_${e.id}" type="checkbox" value='no' name="inclusao[]" data-input-id_check="${e.id}" class="inclusaos checkitem"  > <input id="inclusa_${e.id}" class="pegar" type="hidden" value="no" name="taxainclusa[]"></td>
                    <td class="text-center"><input onkeyup="discount(${e.id},'${e.id}')" type="number" class="form-control text-center discount disconto" name="discount[]" data-input-id="${e.id}" id="discount_id_${e.id}" max="99" min="0" value="0"></td>
                    <td><input class="form-control text-center amount" type="text" amount-id="${e.id}" id="amount_${e.id}" value="${e.preco_venda}" name="item_price[]" readonly></td>
                    <td class="text-center"><button onclick="remove(${e.id})" id="${e.id}" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>
                    </tr>`;

                        $("table tbody .custom-item").before(new_row);

                    }

                    total();
                }

            });

        });

        $('#customer').change(function() {
            var cliente_id = $(this).val();

            if (cliente_id == "" || cliente_id == null) {
                $('#lista_facturas').empty();
                document.getElementById('lista_facturas').disabled = true;
            } else {
                getFacturas(cliente_id);
                document.getElementById('lista_facturas').disabled = false;
            }

        });

        function getFacturas(cliente_id) {

            var baseUrl = $('#Url_geral').val();
            var select_Dados = $('#lista_facturas');
            var route = baseUrl + '/getFacturas/' + cliente_id;

            $('#lista_facturas').empty();

            $.get(route, function(data) {
                select_Dados.append("<option value=''>Selecione</option>");
                $(data).each(function(key, dados) {
                    select_Dados.append("<option value='" + dados.id + "'>" + dados.referencia + "</option>");
                });
            });
        }

        $('#lista_facturas').change(function() {
            var token = $("#token").val();

            var referencia = $('#lista_facturas option:selected').text();

            if (referencia == "Selecione") {
                referencia = null;
            }

            $("#referencia_documento").val(referencia);

            var ft_id = $('#lista_facturas').val();

            $.ajax({
                url: SITE_URL + "/getFacturas_linhas",
                type: "POST",
                async: true,
                dataType: 'json',
                data: { "factura_id": ft_id, "_token": token },
                success: function(items) {

                    var subTotalAmount, taxTotal = 0;

                    console.log(items.length);

                    for (var it = 0; it < items.length; it++) {
                        var e = items[it];

                        var unit_price = e.preco_unitario + (e.preco_unitario * 0.17);
                        var priceAmount = (e.quantidade * e.preco_unitario);
                        var discount = (priceAmount * e.percentagem_desconto) / 100;
                        var newPrice = (priceAmount - discount);
                        var tax = (newPrice * e.taxa_imposto / 100);

                        subTotalAmount += newPrice;
                        taxTotal += tax;

                        var taxAmount = roundToTwo((e.preco_unitario * e.taxa_imposto) / 100);

                        var tipo_imposto_options = "";
                        for (i = 0; i < tipo_imposto.length; i++) {
                            if (tipo_imposto[i].taxa_imposto == e.taxa_imposto) {
                                tipo_imposto_options += '<option selected value="' + tipo_imposto[i].id + '" taxrate="' + tipo_imposto[i].taxa_imposto + '">' + tipo_imposto[i].nome + ' (' + tipo_imposto[i].taxa_imposto + ')</option>';
                            } else {
                                tipo_imposto_options += '<option value="' + tipo_imposto[i].id + '" taxrate="' + tipo_imposto[i].taxa_imposto + '">' + tipo_imposto[i].nome + ' (' + tipo_imposto[i].taxa_imposto + ')</option>';
                            }
                        }

                        if (e.taxa_inclusa_valor == 'yes') {

                            var precoDesconto, Des, preco = 0;

                            precoDesconto = (newPrice / e.quantidade) + tax;
                            Des = 1 - e.percentagem_desconto / 100;
                            preco = precoDesconto / Des;

                            var discountvalue = e.percentagem_desconto
                            var discount = parseFloat(e.preco_unitario) * e.quantidade * ((100 - parseFloat(discountvalue)) / 100);
                            var iva = (discount * parseFloat(e.taxa_imposto)) / 100;

                            var tax_value = discount - iva;

                            if (e.codigo_produto == "zero") {

                                var new_row = '<tr class="linha" id="rowid' + e.id + '">' + '<td class="text-center"><input type="text" hidden class="form-control text-center" name="description[]" value="' + e.descricao + '"><input type="hidden" name="stock_id[]" value="' + e.codigo_produto + '"><input type="hidden" name="description[]" value="' + e.descricao + '"></td>' + '<td><input class="form-control text-center no_units unidades" min="0" data-id="' + e.id + '" type="text" id="qty_' + e.id + '" name="item_quantity[]" value="' + e.quantidade + '"><input type="hidden" name="item_id[]" value="' + e.id + '"></td>' + '<td class="text-center"><input min="0"  type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "' + e.id + '" id="rate_id_' + e.id + '" value="' + parseFloat(e.preco_unitario).toFixed(2) + '"></td>' + '<td><select class="form-control taxList taxa" name="tax_id[]">@foreach($tipo_taxa as $taxa)<option value="{{$taxa->id}}" taxrate="{{$taxa->taxa_imposto}}">{{$taxa->nome}} ({{$taxa->taxa_imposto}})</option>@endforeach</select></td>' + '<td class="text-center taxAmount">' + taxAmount + '</td>' + '<td class="text-center"><input type="checkbox" value="" name="inclusao[]" data-input-id_check="' + e.id + '"  class="inclusaos checkitem" checked value="' + preco + '"><input <input class="pegar" type="hidden" value="yes" name="taxainclusa[]"></td>' + '<td class="text-center"><input type="number" class="form-control text-center discount disconto" name="discount[]" data-input-id="' + e.id + '" id="discount_id_' + e.id + '" max="99" min="0" value="' + e.percentagem_desconto + '"></td>' + '<td><input class="form-control text-center amount" type="text" amount-id = "' + e.id + '" id="amount_' + e.id + '" value="' + e.preco_unitario + '"  name="item_price[]" readonly></td>' +
                                    '<td class="text-center"><button id="' + e.id + '" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>' +
                                    '</tr>';

                            } else {

                                var new_row = '<tr class="linha" id="rowid' + e.id + '">' + '<td class="text-center">' + e.descricao + '<input type="hidden" name="stock_id[]" value="' + e.codigo_produto + '"><input type="hidden" name="description[]" value="' + e.descricao + '"></td>' + '<td><input onkeyup="qty(' + e.id + "," + "'" + e.id + "'" + ')" class="form-control text-center no_units unidades" min="0" data-id="' + e.id + '" type="text" id="qty_' + e.id + '" name="item_quantity[]" value="' + e.quantidade + '"><input type="hidden" name="item_id[]" value="' + e.id + '"></td>' +
                                    '<td class="text-center"><input id="unit_price_' + e.id + '" onkeyup="unitPrice(' + e.id + "," + "'" + e.id + "'" + ')" min="0"  type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "' + e.id + '" value="' + parseFloat(e.preco_unitario).toFixed(2) + '"></td>' +
                                    '<td><select onchange="taxRate(' + e.id + "," + "'" + e.id + "'" + ')" id="tax_id' + e.id + '" class="form-control taxList taxa" name="tax_id[]">' + tipo_imposto_options + '</select></td>' +
                                    '<td id="iva_' + e.id + '" class="text-center taxAmount">' + taxAmount.toFixed(2) + '</td>' +
                                    '<td class="text-center"><input onclick="checked_tax(' + e.id + "," + "'" + e.id + "'" + ',this)" id="check_' + e.id + '" type="checkbox" value="" name="inclusao[]" data-input-id_check="' + e.id + '"  class="inclusaos checkitem" checked value="' + preco + '"><input <input class="pegar" type="hidden" value="yes" name="taxainclusa[]"></td>' +
                                    '<td class="text-center"><input onkeyup="discount(' + e.id + "," + "'" + e.id + "'" + ')" type="number" class="form-control text-center discount disconto" name="discount[]" data-input-id="' + e.id + '" id="discount_id_' + e.id + '" max="99" min="0" value="' + e.percentagem_desconto + '"></td>' +
                                    '<td><input class="form-control text-center amount" type="text" amount-id = "' + e.id + '" id="amount_' + e.id + '" value="' + tax_value + '"  name="item_price[]" readonly></td>' +
                                    '<td class="text-center"><button onclick="remove(' + e.id + ')" id="' + e.id + '" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>' +
                                    '</tr>';
                            }

                        } else {
                            if (e.codigo_produto == "zero") {

                                new_row = '<tr class="linha" id="rowid' + e.id + '">' + '<td class="text-center">' + e.descricao + '<input type="hidden" name="stock_id[]" value="' + e.codigo_produto + '"><input type="text" hidden name="description[]" value="' + e.descricao + '"></td>' +
                                    '<td><input id="qty_' + e.id + '" onkeyup="qty(' + e.id + "," + "'" + e.id + "'" + ')" class="form-control text-center no_units unidades" min="0" data-id="' + e.id + '" type="text" name="item_quantity[]" value="' + e.quantidade + '"><input type="hidden" name="item_id[]" value="' + e.id + '"></td>' +
                                    '<td class="text-center"><input id="unit_price_' + e.id + '" onkeyup="unitPrice(' + e.id + "," + "'" + e.id + "'" + ')" min="0"  type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "' + e.id + '" value="' + e.preco_unitario + '"></td>' +
                                    '<td><select onchange="taxRate(' + e.id + "," + "'" + e.id + "'" + ')" id="tax_id' + e.id + '" class="form-control taxList taxa" name="tax_id[]">' + tipo_imposto_options + '</select></td>' +
                                    '<td id="iva_' + e.id + '" class="text-center taxAmount">' + taxAmount.toFixed(2) + '</td>' +
                                    '<td class="text-center"><input onclick="checked_tax(' + e.id + "," + "'" + e.id + "'" + ',this)" id="check_' + e.id + '" type="checkbox" value="" name="inclusao[]" data-input-id_check="' + e.id + '"  class="inclusaos checkitem"  value="' + preco + '"><input id="inclusa_' + e.id + '" class="pegar" type="hidden" value="no" name="taxainclusa[]"></td>' +
                                    '<td class="text-center"><input type="number" onkeyup="discount(' + e.id + "," + "'" + e.id + "'" + ')" class="form-control text-center discount disconto" name="discount[]" data-input-id="' + e.id + '" id="discount_id_' + e.id + '" max="99" min="0" value="' + e.percentagem_desconto + '"></td>' +
                                    '<td><input class="form-control text-center amount" type="text" amount-id = "' + e.id + '" id="amount_' + e.id + '" value="' + e.preco_unitario + '"  name="item_price[]" readonly></td>' +
                                    '<td class="text-center"><button onclick="remove(' + e.id + ')" id="' + e.id + '" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>' +
                                    '</tr>';

                            } else {

                                new_row = '<tr class="linha" id="rowid' + e.id + '">' + '<td class="text-center">' + e.descricao + '<input type="hidden" name="stock_id[]" value="' + e.codigo_produto + '"><input type="hidden" name="description[]" value="' + e.descricao + '"></td>' +
                                    '<td><input id="qty_' + e.id + '" onkeyup="qty(' + e.id + "," + "'" + e.id + "'" + ')" class="form-control text-center no_units unidades" min="0" data-id="' + e.id + '" type="text" id="qty_' + e.id + '" name="item_quantity[]" value="' + e.quantidade + '"><input type="hidden" name="item_id[]" value="' + e.id + '"></td>' +
                                    '<td class="text-center"><input min="0" id="unit_price_' + e.id + '" onkeyup="unitPrice(' + e.id + "," + "'" + e.id + "'" + ')" type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "' + e.id + '" value="' + e.preco_unitario + '"></td>' +
                                    '<td><select onchange="taxRate(' + e.id + "," + "'" + e.id + "'" + ')" id="tax_id' + e.id + '" class="form-control taxList taxa" name="tax_id[]">' + tipo_imposto_options + '</select></td>' +
                                    '<td id="iva_' + e.id + '" class="text-center taxAmount">' + taxAmount.toFixed(2) + '</td>' +
                                    '<td class="text-center"><input onclick="checked_tax(' + e.id + "," + "'" + e.id + "'" + ',this)" id="check_' + e.id + '" type="checkbox" value="" name="inclusao[]" data-input-id_check="' + e.id + '"  class="inclusaos checkitem"  value="' + preco + '"><input id="inclusa_' + e.id + '" class="pegar" type="hidden" value="no" name="taxainclusa[]"></td>' +
                                    '<td class="text-center"><input type="number" onkeyup="discount(' + e.id + "," + "'" + e.id + "'" + ')" class="form-control text-center discount disconto" name="discount[]" data-input-id="' + e.id + '" id="discount_id_' + e.id + '" max="99" min="0" value="' + e.percentagem_desconto + '"></td>' +
                                    '<td><input class="form-control text-center amount" type="text" amount-id = "' + e.id + '" id="amount_' + e.id + '" value="' + e.preco_unitario + '"  name="item_price[]" readonly></td>' +
                                    '<td class="text-center"><button onclick="remove(' + e.id + ')" id="' + e.id + '" id="' + e.id + '" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>' +
                                    '</tr>';

                            }
                        }

                        $("table tbody .custom-item").before(new_row);
                        $('.tableInfo').show();
                    }

                    total();

                }
            });


        });

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
            var name = $(event.target).attr('name');
            if (event.keyCode == 13 && !name == 'comments') {
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