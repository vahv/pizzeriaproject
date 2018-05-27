/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){

        loadToppings();
        loadPizza();
        validateForm();
        addToCart();
        
    });    



function loadToppings(){
    
        var load = $.ajax({url:"getMenu",data:" ", method:"POST"}); 

        load.done(function(msn){
            
            for (var i = 0; i < msn[1].length;i++){
            var col = $('<div class="col-6 col-lg-4">');
            var chckButton = $('<input class="frm-button" type="checkbox" name="extraTopping" value="'+msn[1][i].id+'" id="ingrediente'+i+'">');
            var label = $('<label  for="ingrediente'+i+'">'+msn[1][i].name+'</label>');
            var price = $('<input id="'+msn[1][i].id+'Precio" type="hidden" name="'+msn[1][i].name+'" value="'+msn[1][i].price+'" />');

               col.append(chckButton).append(label).append(price);
               $("#ingredientes").append(col);
            }

        });
    
}

function loadPizza(){
    
     var load = $.ajax({url:"getPizza", data:"id=13", method:"POST"});
            load.done(function(pizza){
            
                $("#pizzaid").val(pizza[0].id);
                $("#MedianaPrecio").val(pizza[2][0].price);
                $("#GrandePrecio").val(pizza[2][1].price);
                $("#FamiliarPrecio").val(pizza[2][2].price);    
              
            });
            load.fail(function() {
                    
                 });
}

function addToCart(){
        $('#addCart').click(function(){
        var IsValid = $("#form").valid();
        if(IsValid){        
           var load = $.ajax({url:"addToCart",data:$('form').serialize(), method:"POST"}); 
                load.done(function(msn){
                    cartSuccessDialog();
                });
                load.fail(function(){
                    bootbox.alert({
                        closeButton:false,
                        title: "Ocurrio un error al agregar su pizza",
                        message: "Por favor haga click en agregar al carrito de nuevo"
                    });
                });
            }    
        });  
        
}

function cartSuccessDialog(){
    bootbox.dialog({
        message: "<p class='alert alert-success'>Se agrego exitosamente al carrito de compras</p>",
        closeButton:false,
        buttons: {
            reset: {
                label: "Armar Otra Pizza",
                className: 'btn-info',
                callback: function(){                   
                   resetForm();               
                }
            },
            menu:{
                label: "Ir al Menú",
                className: 'btn-info',
                callback: function(){
                     window.location.href = "menu.jsp"; 
                }           
            },
            cart: {
                label: "Completar Pedido",
                className: 'btn-primary',
                callback: function(){
                     window.location.href = "carrito.jsp"; 
                }
            }
        }
    });
}

function resetForm(){
        $('#form')[0].reset();
        totalCost = 0.0;
        selectedSize = null;
        $("table tbody").empty();
        $("#displayTotal").text("Total $"+totalCost);    
}

function validateForm(){
    $("#form").validate({
            groups: {
              tamanio: "tamanio",
              topping:"extraTopping"
            },            
            rules:{
                tamanio:"required",
                extraTopping:{
                    required: true,
                    minlength: 1
                }
            },
            errorClass: "alert alert-danger",
            errorElement:"p",
            messages:{
                tamanio:"Por favor seleccione el tamaño",
                extraTopping:"Seleccione al menos un ingrediente"
            },
            errorPlacement: function(error, element) {
                
                if(element.attr("name")=== "tamanio")error.insertAfter("#sizes");
                else error.insertBefore("#ingredientes")
                
            }
        });        
}