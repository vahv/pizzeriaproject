/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function (){
    $("#nuevoregistro").click(function (){
        valor = $("#registro").serialize();
        $.ajax({
                type: 'POST',
                data: datos,
                url: "nuevoregistro",
                success: function (r) {
                }
            });
    });
    
    
});