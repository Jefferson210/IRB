//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$( document ).on('turbolinks:load', function() {

    $("#crossing_id").on('change', function() {
        //Funcion para obtener los codeCross con su NumRepeat
        if(  $("#crossing_id").val() != "" ){
            var codeCrossName = $( "#crossing_id option:selected" ).text();
            $("#codeCrossName").val(codeCrossName)
        }

        //Funcion para obtener los codeCross
        if($("#crossing_id").val() != ""){
            var id = $( "#crossing_id option:selected" ).val();
            $.ajax({
                url: "/getCrossing/"+ id,
                type: "GET",
                dataType: "json",
                success: function (result) {
                    $("#codeCross").val(result.codeCross)
                },
                error: function (err){
                }
            });  
        }

        //Funcion para adquirir el total de numSeeds por NumRepeat al cambiar el valor del select "crossing_id"
        if($("#crossing_id").val() != ""){
            $.ajax({
                url: "/numSeedsNumRepeat/",
                type: "GET",
                dataType: "json",
                success: function (result) {
                    if($("#numSeeds").val() != ''){
                        var id = $( "#crossing_id option:selected" ).text();
                        var numSeeds = $("#numSeeds").val();
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

        //Funcion para adquirir el total de numSeeds por codeCross al cambiar el valor del select "crossing_id"
        if($("#crossing_id").val() != ""){
            $.ajax({
                url: "/numSeedsCodeCross/",
                type: "GET",
                dataType: "json",
                success: function (result) {
                    if($("#numSeeds").val() != ''){
                        var id = $( "#codeCross" ).val();
                        var numSeeds = $("#numSeeds").val();
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


function sumaNumRepeat() {
    if($("#crossing_id").val() != ""){
        //Funcion para adquirir el total de numSeeds por NumRepeat al cambiar el valor del input "numSeeds"
        $.ajax({
            url: "/numSeedsNumRepeat/",
            type: "GET",
            dataType: "json",
            success: function (result) {
                if($("#numSeeds").val() != ''){
                    var id = $( "#crossing_id option:selected" ).text();
                    var numSeeds = $("#numSeeds").val();
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
        //        if($("#crossing_id").val() != ""){
        $.ajax({
            url: "/numSeedsCodeCross/",
            type: "GET",
            dataType: "json",
            success: function (result) {
                if($("#numSeeds").val() != ''){
                    var id = $( "#codeCross" ).val();
                    var numSeeds = $("#numSeeds").val();
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



