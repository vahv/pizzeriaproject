/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 
   
$(document).ready(function(){
    
    $('#printbox').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget); 
      var pizzaid = button.data('id');
      var modal = $(this);
      var load = $.ajax({url:"getPizza?id="+pizzaid,data:" ", method:"POST"}); 
      
        load.done(function(msn){
          
            var ingredientes = formatToppingList(msn[1]); 

            modal.find('.modal-title').text('Pizza '+msn[0].pizzaName);
            modal.find('.modal-subtitle').text(ingredientes);

            $("#pizzaid").val(msn[0].id);
            $("#MedianaPrecio").val(msn[2][0].price);
            $("#GrandePrecio").val(msn[2][1].price);
            $("#FamiliarPrecio").val(msn[2][2].price);
      });
      
    });
    
    loadmenu();
    
});

    function loadmenu(){
    var load = $.ajax({url:"getMenu",data:" ", method:"POST"}); 
    
    load.done(function(msn){  
        for (var i = 0; i < msn[0].length;i++){
            var col = $('<div class="col-lg-3 col-md-4 col-6 mb-2">');
            var card = $('<div class="card">');
            var imgurl = msn[0][i].pizzaImage;
            var image = $('<img class="card-img-top" src="'+imgurl+'" alt="Card image cap">');
            var cardBody = $('<div class="card-body">');
            var cardTitle = $('<h5 class="card-title">'+msn[0][i].pizzaName+'</h5>');
      
            var cardButton = $('<a class="addToCart btn btn-primary btn-sm" style="color:white;" data-toggle="modal" data-target="#printbox" data-id="'+msn[0][i].id+'">Ver Detalles</a>');      

            cardBody.append(cardTitle).append(cardButton);
            card.append(image).append(cardBody);
            col.append(card);
            if(msn[0][i].categoryName === "Sabores Tradicionales")
                $("#category1").append(col);
            else
                $("#category2").append(col);
        }
        for (var i = 0; i < msn[1].length;i++){
        var col = $('<div class="col-6 col-lg-4">');
        var chckButton = $('<input class="frm-button" type="checkbox" name="extraTopping" value="'+msn[1][i].id+'" id="ingrediente'+i+'">');
        var label = $('<label  for="ingrediente'+i+'">'+msn[1][i].name+'</label>');
        var price = $('<input id="'+msn[1][i].id+'Precio" type="hidden" name="'+msn[1][i].name+'" value="'+msn[1][i].price+'" />');

           col.append(chckButton).append(label).append(price);
           $("#extras").append(col);
        }

    });
        
   };
   
function formatToppingList(list){
    var toppings="";
    for(var i=0; i <list.length; i++){
        toppings += " "+list[i].name+((i+1===list.length)?".":",");
    }
    return toppings;
}

