
if(document.getElementById('nota_db_nc')){

    document.getElementById('lista_facturas').disabled = true; 

    $('#customer').change(function() { 
        var cliente_id = this.value;  
  
        if( cliente_id == "" || cliente_id == null){
            $('#lista_facturas').empty();   
            document.getElementById('lista_facturas').disabled = true; 
        }else{
            getFacturas(cliente_id);    
            document.getElementById('lista_facturas').disabled = false;            
        } 
    });

    function get_moeda_nativa(id){
        $.ajax({
            url: SITE_URL+'/taxasCambio/'+id,
            type: 'GET',
            dataType: 'json', // added data type
            success: function(res) {
                cambio_moeda_selecionada = res[0].venda;
                cambio = res[0].venda;

                $('#venda').val(cambio);

                console.log(cambio);
            },
            error: function(response){
                console.log(response);
            }
        });
    }

    //get_moeda_nativa();

    var standard_coin_select = $('#moeda_nome').find("option:first-child").val();
    
    console.log(standard_coin_select);

    get_moeda_nativa(standard_coin_select);

    function getFacturas(cliente_id){
         
        var SITE_URL = $('#Url_geral').val();
        var select_Dados=$('#lista_facturas');
        var route = SITE_URL + '/getFacturas/' + cliente_id;
            
        $('#lista_facturas').empty(); 

        $.get(route,function (data) 
        {   
            select_Dados.append("<option value=''>Selecione</option>"); 
            $(data).each(function (key, dados) {
                select_Dados.append("<option value='"+dados.id+"'>"+dados.referencia+"</option>"); 
            });
        }); 
  
    } 

    function roundToTwo(num) {    
        return +(Math.round(num + "e+2")  + "e-2");
    }

    $('#lista_facturas').change(function() { 
        var referencia = $('#lista_facturas option:selected').text();
  
        if(referencia == "Selecione"){
          referencia = null; 
        }  
        
        $("#referencia_documento").val(referencia); 

        var ft_id = this.value;

        var token = $("#token").val();

        console.log(ft_id);

        var at = 0;
        
        $.ajax({
            url: SITE_URL+"/getFacturas_linhas",
            type: "POST",
            async: true,
            dataType: 'json',
            data:{"factura_id":ft_id,"_token":token},
            success: function(items) {
                var subTotalAmount,taxTotal=0;
                at++;
                console.log(items);

                for(var it = 0; it < items.length; it++){
                    var e = items[it];

                    var unit_price= e.preco_unitario + (e.preco_unitario*0.17); 
                    var priceAmount = (e.quantidade*e.preco_unitario);
                    var discount = (priceAmount*e.percentagem_desconto)/100;
                    var newPrice = (priceAmount-discount);
                    var tax = (newPrice*e.taxa_imposto/100);

                    subTotalAmount += newPrice;
                    taxTotal += tax; 

                    if(at == 1){
                        var moeda_nome = e.nome_moeda;

                        if(e.nome_moeda == "USD"){
                            e.moeda_nativa = 2;
                        }
                
                        if(e.moeda_nativa != 1){
                            moeda_selecionda = e.moeda_nativa;
                        }

                        $('.precounitario').text(moeda_nome);
                        $('.totalMoedaSelectedSubTotal').text(moeda_nome);
                        $('.totalMoedaSelectedDiscount').text(moeda_nome); 
                        $('.totalMoedaSelectedTax').text(moeda_nome);
                        $('.totalMoedaSelected').text(moeda_nome);

                        $('#moeda_nativa').val(moeda_selecionda);
                        console.log($('#moeda_nativa').val());

                    }

                    var taxAmount = roundToTwo((e.preco_unitario*e.taxa_imposto)/100);

                    var tipo_imposto_options = "";
                    for(i=0;i < tipo_imposto.length;i++){
                        if(tipo_imposto[i].taxa_imposto == e.taxa_imposto){
                            tipo_imposto_options += '<option selected value="'+tipo_imposto[i].id+'" taxrate="'+tipo_imposto[i].taxa_imposto+'">'+tipo_imposto[i].nome+' ('+tipo_imposto[i].taxa_imposto+')</option>';
                        }else{
                            tipo_imposto_options += '<option value="'+tipo_imposto[i].id+'" taxrate="'+tipo_imposto[i].taxa_imposto+'">'+tipo_imposto[i].nome+' ('+tipo_imposto[i].taxa_imposto+')</option>';
                        }
                    }

                    if(e.taxa_inclusa_valor == 'yes'){

                        var precoDesconto,Des,preco=0;
        
                        precoDesconto= (newPrice/e.quantidade)+tax; 
                        Des = 1-e.percentagem_desconto/100;
                        preco = precoDesconto/Des;

                        var discountvalue = e.percentagem_desconto
                        var discount = parseFloat(e.preco_unitario) * e.quantidade * ( (100 - parseFloat(discountvalue)) / 100 );
                        var iva = (discount * parseFloat(e.taxa_imposto))/100;

                        var tax_value = discount - iva;
        
                      if(e.codigo_produto == "zero"){
        
                        var  new_row = '<tr class="linha" id="rowid'+e.id+'">'+'<td class="text-center"><input type="text" hidden class="form-control text-center" name="description[]" value="'+e.descricao+'"><input type="hidden" name="stock_id[]" value="'+e.codigo_produto+'"><input type="hidden" name="description[]" value="'+e.descricao+'"></td>'+'<td><input class="form-control text-center no_units unidades" min="0" data-id="'+e.id+'" type="text" id="qty_'+e.id+'" name="item_quantity[]" value="'+e.quantidade+'"><input type="hidden" name="item_id[]" value="'+e.id+'"></td>'+'<td class="text-center"><input min="0"  type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "'+e.id+'" id="rate_id_'+e.id+'" value="'+ parseFloat(e.preco_unitario).toFixed(2) +'"></td>'+'<td><select class="form-control taxList taxa" name="tax_id[]">@foreach($tipo_taxa as $taxa)<option value="{{$taxa->id}}" taxrate="{{$taxa->taxa_imposto}}">{{$taxa->nome}} ({{$taxa->taxa_imposto}})</option>@endforeach</select></td>'+'<td class="text-center taxAmount">'+ taxAmount +'</td>'+'<td class="text-center"><input type="checkbox" value="" name="inclusao[]" data-input-id_check="'+e.id+'"  class="inclusaos checkitem" checked value="'+preco+'"><input <input class="pegar" type="hidden" value="yes" name="taxainclusa[]"></td>'+'<td class="text-center"><input type="number" class="form-control text-center discount disconto" name="discount[]" data-input-id="'+e.id+'" id="discount_id_'+e.id+'" max="99" min="0" value="'+e.percentagem_desconto+'"></td>'+'<td><input class="form-control text-center amount" type="text" amount-id = "'+e.id+'" id="amount_'+e.id+'" value="'+e.preco_unitario+'"  name="item_price[]" readonly></td>'+
                        '<td class="text-center"><button id="'+e.id+'" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>'+
                        '</tr>';
                        
                      }else{
        
                        var  new_row = '<tr class="linha" id="rowid'+e.id+'">'+'<td class="text-center">'+ e.descricao +'<input type="hidden" name="stock_id[]" value="'+e.codigo_produto+'"><input type="hidden" name="description[]" value="'+e.descricao+'"></td>'+'<td><input onkeyup="qty('+e.id+","+"'"+e.id+"'"+')" class="form-control text-center no_units unidades" min="0" data-id="'+e.id+'" type="text" id="qty_'+e.id+'" name="item_quantity[]" value="'+e.quantidade+'"><input type="hidden" name="item_id[]" value="'+e.id+'"></td>'+
                        '<td class="text-center"><input id="unit_price_'+e.id+'" onkeyup="unitPrice('+e.id+","+"'"+e.id+"'"+')" min="0"  type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "'+e.id+'" value="'+ parseFloat(e.preco_unitario).toFixed(2) +'"></td>'+  
                        '<td><select onchange="taxRate('+e.id+","+"'"+e.id+"'"+')" id="tax_id'+e.id+'" class="form-control taxList taxa" name="tax_id[]">'+tipo_imposto_options+'</select></td>'+
                        '<td id="iva_'+e.id+'" class="text-center taxAmount">'+ taxAmount.toFixed(2) +'</td>'+     
                        '<td class="text-center"><input onclick="checked_tax('+e.id+","+"'"+e.id+"'"+',this)" id="check_'+e.id+'" type="checkbox" value="" name="inclusao[]" data-input-id_check="'+e.id+'"  class="inclusaos checkitem" checked value="'+preco+'"><input <input class="pegar" type="hidden" value="yes" name="taxainclusa[]"></td>'+
                        '<td class="text-center"><input onkeyup="discount('+e.id+","+"'"+e.id+"'"+')" type="number" class="form-control text-center discount disconto" name="discount[]" data-input-id="'+e.id+'" id="discount_id_'+e.id+'" max="99" min="0" value="'+e.percentagem_desconto+'"></td>'+
                        '<td><input class="form-control text-center amount" type="text" amount-id = "'+e.id+'" id="amount_'+e.id+'" value="'+tax_value+'"  name="item_price[]" readonly></td>'+
                        '<td class="text-center"><button onclick="remove('+e.id+')" id="'+e.id+'" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>'+
                        '</tr>';
                      }

                    }else{
                        if(e.codigo_produto=="zero"){
          
                          new_row = '<tr class="linha" id="rowid'+e.id+'">'+'<td class="text-center">'+ e.descricao +'<input type="hidden" name="stock_id[]" value="'+e.codigo_produto+'"><input type="text" hidden name="description[]" value="'+e.descricao+'"></td>'+
                            '<td><input id="qty_'+e.id+'" onkeyup="qty('+e.id+","+"'"+e.id+"'"+')" class="form-control text-center no_units unidades" min="0" data-id="'+e.id+'" type="text" name="item_quantity[]" value="'+e.quantidade+'"><input type="hidden" name="item_id[]" value="'+e.id+'"></td>'+
                            '<td class="text-center"><input id="unit_price_'+e.id+'" onkeyup="unitPrice('+e.id+","+"'"+e.id+"'"+')" min="0"  type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "'+e.id+'" value="'+ e.preco_unitario +'"></td>'+  
                            '<td><select onchange="taxRate('+e.id+","+"'"+e.id+"'"+')" id="tax_id'+e.id+'" class="form-control taxList taxa" name="tax_id[]">'+tipo_imposto_options+'</select></td>'+
                            '<td id="iva_'+e.id+'" class="text-center taxAmount">'+ taxAmount.toFixed(2) +'</td>'+     
                            '<td class="text-center"><input onclick="checked_tax('+e.id+","+"'"+e.id+"'"+',this)" id="check_'+e.id+'" type="checkbox" value="" name="inclusao[]" data-input-id_check="'+e.id+'"  class="inclusaos checkitem"  value="'+preco+'"><input id="inclusa_'+e.id+'" class="pegar" type="hidden" value="no" name="taxainclusa[]"></td>'+
                            '<td class="text-center"><input type="number" onkeyup="discount('+e.id+","+"'"+e.id+"'"+')" class="form-control text-center discount disconto" name="discount[]" data-input-id="'+e.id+'" id="discount_id_'+e.id+'" max="99" min="0" value="'+e.percentagem_desconto+'"></td>'+
                            '<td><input class="form-control text-center amount" type="text" amount-id = "'+e.id+'" id="amount_'+e.id+'" value="'+e.preco_unitario+'"  name="item_price[]" readonly></td>'+
                            '<td class="text-center"><button onclick="remove('+e.id+')" id="'+e.id+'" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>'+
                            '</tr>';
                          
                        }else{
          
                          new_row = '<tr class="linha" id="rowid'+e.id+'">'+'<td class="text-center">'+ e.descricao +'<input type="hidden" name="stock_id[]" value="'+e.codigo_produto+'"><input type="hidden" name="description[]" value="'+e.descricao+'"></td>'+
                          '<td><input id="qty_'+e.id+'" onkeyup="qty('+e.id+","+"'"+e.id+"'"+')" class="form-control text-center no_units unidades" min="0" data-id="'+e.id+'" type="text" id="qty_'+e.id+'" name="item_quantity[]" value="'+e.quantidade+'"><input type="hidden" name="item_id[]" value="'+e.id+'"></td>'+
                          '<td class="text-center"><input min="0" id="unit_price_'+e.id+'" onkeyup="unitPrice('+e.id+","+"'"+e.id+"'"+')" type="text" class="form-control text-center unitprice percentagem" name="unit_price[]" data-id = "'+e.id+'" value="'+ e.preco_unitario +'"></td>'+  
                          '<td><select onchange="taxRate('+e.id+","+"'"+e.id+"'"+')" id="tax_id'+e.id+'" class="form-control taxList taxa" name="tax_id[]">'+tipo_imposto_options+'</select></td>'+
                          '<td id="iva_'+e.id+'" class="text-center taxAmount">'+ taxAmount.toFixed(2) +'</td>'+     
                          '<td class="text-center"><input onclick="checked_tax('+e.id+","+"'"+e.id+"'"+',this)" id="check_'+e.id+'" type="checkbox" value="" name="inclusao[]" data-input-id_check="'+e.id+'"  class="inclusaos checkitem"  value="'+preco+'"><input id="inclusa_'+e.id+'" class="pegar" type="hidden" value="no" name="taxainclusa[]"></td>'+
                          '<td class="text-center"><input type="number" onkeyup="discount('+e.id+","+"'"+e.id+"'"+')" class="form-control text-center discount disconto" name="discount[]" data-input-id="'+e.id+'" id="discount_id_'+e.id+'" max="99" min="0" value="'+e.percentagem_desconto+'"></td>'+
                          '<td><input class="form-control text-center amount" type="text" amount-id = "'+e.id+'" id="amount_'+e.id+'" value="'+e.preco_unitario+'"  name="item_price[]" readonly></td>'+
                          '<td class="text-center"><button onclick="remove('+e.id+')" id="'+e.id+'" id="'+e.id+'" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>'+
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

}