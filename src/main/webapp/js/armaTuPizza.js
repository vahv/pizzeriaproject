/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var totalCost = 0.0;
var selectedSize = null;

$(document).ready(function(){
    
        $(".frm-button").click(function(){
            
            var buttonName = $(this).val();
            var itemPrice = $("#"+buttonName+"Precio").val();
            
            if(isSizeButton( buttonName )){
                
                if(alreadySelected()){
                    deletePrevSelection();
                }     
                selectedSize = buttonName;
   
                addNewSelection(buttonName,itemPrice);
                updateTotalCost(itemPrice);   
            }
            else{    
                if(!$(this).is(":checked")){
                    var tableRow = $("td").filter(function(){
                        return $(this).text() === buttonName;
                    }).closest("tr");               
                    
                    totalCost -= parseFloat($("#"+buttonName+"Precio").val());
                    $("#displayTotal").text("Total $"+totalCost);
                    tableRow.remove();
                     
                }
                else{
                    var row = "<tr><td>"+buttonName+"</td><td>"+itemPrice+"</td></tr>";
                    $("table tbody").append(row);
                    
                    totalCost += parseFloat(itemPrice);
                    $("#displayTotal").text("Total $"+totalCost);
                }
            }
        });
        
    $(".modal").on("hidden.bs.modal", resetModal);
    
    });    


function resetModal(){
        $(this).find('#form')[0].reset();
        totalCost = 0.0;
        selectedSize = null;
        $("table tbody").html("")
        $("#displayTotal").text("Total $"+totalCost);
        
}

function isSizeButton(buttonName){
   if(buttonName === "Mediana"||buttonName === "Grande"||buttonName === "Familiar")
       return true;
   else
       return false;
}

function deletePrevSelection(){
    totalCost -= parseFloat($("#"+selectedSize+"Precio").val());
    var tableRow = $("tr:contains("+selectedSize+")");               
    tableRow.remove();  
}

function alreadySelected(){
    if(selectedSize !== null) return true;
    else return false;
}

function addNewSelection(buttonName,itemPrice){
    var row = "<tr><td>Pizza "+buttonName+"</td><td>"+itemPrice+"</td></tr>";
    $("table tbody").prepend(row); 
}

function updateTotalCost(itemPrice){
    totalCost += parseFloat(itemPrice);
    $("#displayTotal").text("Total $"+totalCost);
}