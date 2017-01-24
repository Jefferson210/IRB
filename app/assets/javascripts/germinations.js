//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


$( document ).on('turbolinks:load', function() {
    $("#seed_id").on('change', function() {

        if($("#seed_id").val() != ""){
            var id = $( "#seed_id option:selected" ).val();
            $.ajax({
                url: "/getSeed/"+ id,
                type: "GET",
                dataType: "json",
                success: function (result) {
                    //                    console.log(result)
                    $("#codeCross").val(result.codeCross)
                    $("#codeCrossNumRepeat").val(result.codeCrossName)
                },
                error: function (err){
                    //                    alert("Algo salio mal");
                    //                    console.log(err);
                }
            });  
        }else{
            $("#codeCross").val('')
            $("#codeCrossNumRepeat").val('')        
        }


        /*=======================*/

        //Funcion para adquirir el total de numSeeds por NumRepeat al cambiar el valor del select "seed_id"
        if($("#seed_id").val() != ""){
            $.ajax({
                url: "/numGerminationsNumRepeat/",
                type: "GET",
                dataType: "json",
                success: function (result) {
                    if($("#numGerminations").val() != ''){
                        var id = $( "#seed_id option:selected" ).text();
                        var numSeeds = $("#numGerminations").val();
                        var sum = parseInt(result[id]) + parseInt(numSeeds)
                        $("#totalNumRepeat").val(sum)
                    }
                },
                error: function (err){
                    alert("Algo salio mal");
                    console.log(err);
                }
            });  
        }

        //Funcion para adquirir el total de numSeeds por codeCross al cambiar el valor del select "seed_id"
        if($("#seed_id").val() != ""){
            $.ajax({
                url: "/numGerminationsCodeCross/",
                type: "GET",
                dataType: "json",
                success: function (result) {
                    if($("#numGerminations").val() != ''){
                        var id = $( "#codeCross" ).val();
                        var numSeeds = $("#numGerminations").val();
                        var sum = parseInt(result[id]) + parseInt(numSeeds)
                        $("#totalCode").val(sum)
                    }
                },
                error: function (err){
                    alert("Algo salio mal");
                    console.log(err);
                }
            });  
        }

    });
})


function germinationsTotal() {
//    alert("cambio")
    if($("#seed_id").val() != ""){
        //Funcion para adquirir el total de numSeeds por NumRepeat al cambiar el valor del input "numSeeds"
        $.ajax({
            url: "/numGerminationsNumRepeat/",
            type: "GET",
            dataType: "json",
            success: function (result) {
                if($("#numGerminations").val() != ''){
                    var id = $( "#seed_id option:selected" ).text();
                    console.log(id)
                    var numSeeds = $("#numGerminations").val();
                    var sum = parseInt(result[id]) + parseInt(numSeeds)
                    $("#totalNumRepeat").val(sum)
                }
            },
            error: function (err){
                alert("Algo salio mal");
                console.log(err);
            }
        }); 
        //Funcion para adquirir el total de numSeeds por codeCross al cambiar el valor del input "numSeeds"
        //        if($("#seed_id").val() != ""){
        $.ajax({
            url: "/numGerminationsCodeCross/",
            type: "GET",
            dataType: "json",
            success: function (result) {
                if($("#numGerminations").val() != ''){
                    var id = $( "#codeCross" ).val();
                    var numSeeds = $("#numGerminations").val();
                    var sum = parseInt(result[id]) + parseInt(numSeeds)
                    $("#totalCode").val(sum)
                }
            },
            error: function (err){
                alert("Algo salio mal");
                console.log(err);
            }
        });  
        //        } 
    }
}



