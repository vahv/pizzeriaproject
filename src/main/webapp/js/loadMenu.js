/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
   

$(document).ready(function(){
    
    for ( var i = 0; i<= 3; i++ ){
        var col = $('<div class="col-lg-3 col-md-4 col-6 mb-2">');
        var card = $('<div class="card">');
        var imgurl = "assets/pizzas/bbq-pizza-pork.png";
        var image = $('<img class="card-img-top" src="'+imgurl+'" alt="Card image cap">');
        var cardBody = $('<div class="card-body">');
        var cardTitle = $('<h5 class="card-title">Cerdo BBQ</h5>');
        var cardText = $('<p class="card-text">Ingredientes: </p>');
        var cardButton = $('<a class="addToCart btn btn-primary btn-sm" style="color:white;">Añadir al Carrito</a>');      

        cardBody.append(cardTitle).append(cardText).append(cardButton);
        card.append(image).append(cardBody);
        col.append(card);
        $("#category1").append(col);
   }
   
    $(".addToCart").click(function(event){
        /* var load = $.ajax({url:"testJson",data:" ", method:"POST"});
         load.done(function(msn){  
             $("#name").val(msn.nombre);
             $("#paterno").val(msn.paterno);    
         });
         load.error(function(){
            bootbox.alert("Error"); 
         }); */
        $("#printbox").modal();
    });
    
 
});

