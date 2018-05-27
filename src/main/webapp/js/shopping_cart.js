/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    loadCart();
    deleteItem();
});

function loadCart(){
    var load = $.ajax({url:"getShoppingCart",data:" ", method:"POST"}); 
    load.done(function(cart){
        if(cart === null){
            emptyCartAlert();
        }
        else{
            for(var i=0; i<cart.length;i++){
                displayItem(cart[i],i);
            }
        }
    });    
}

function getToppingNames(list){
    var toppings="";
    for(var i=0; i <list.length; i++){
        toppings += " "+list[i].name+((i+1===list.length)?".":",");
    }
    return toppings;
}

function calculatePrice(pizzaPrice, list){
    var total = pizzaPrice;
    
    for(var i=0; i <list.length; i++){
        total += list[i].price;
    }
    
    return total; 
}


function deleteItem(){
    $("#cartCol").on("click",".del-btn",function(){
        var itemIndex = $(this).attr('id');
        $.ajax({url:"removeFromCart?id="+itemIndex,data:"", method:"POST"}).done(function(){
            $("#cartCol").html("");
            loadCart();
        });
        
    });
}

function displayItem(item, itemNumber){
    
    var row = $('<div class="row bg-white rounded mb-1">');
    var itemImageCol = $('<div class="col-3"><img class="cartItemImage" src="'+item.image+'" alt=""/></div>');
    var detailsCol = $('<div class="col-7"><p>'+item.orderItemName+'</p><p>Tamaño: '+item.size+'</p><p>Extras: '+getToppingNames(item.extraToppingList.slice())+'</p><p>Cantidad: '+item.quantity+'</p></div>');
    var priceCol= $('<div class="col-2"> <p style="margin-top: 1em">$'+calculatePrice(item.price,item.extraToppingList.slice())+'</p><a id="'+itemNumber+'" class="del-btn btn btn-danger text-white">Borrar</a></div>');
    
    row.append(itemImageCol).append(detailsCol).append(priceCol);
    $('#cartCol').append(row);
    
}

function emptyCartAlert(){
    var alert = $('<div class="alert alert-primary" role="alert"><p>Su carrito de compras está vacío</p></div>');
    var message=$('<p>Visita nuestro menú para agregar artículos</p>');
    var menuButton = $('<a class="btn btn-primary" href="menu.jsp">Ver Menú</a>');
    
    alert.append(message).append(menuButton);
    $('main').append(alert);
}