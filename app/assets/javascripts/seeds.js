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
                        var val2 = 0;
                        var numRepeat = $( "#crossing_id option:selected" ).text();
                        var val1 = $("#numSeeds").val();
                        if(result[numRepeat] == undefined  ){
                            val2 = 0;
                        }else{
                            val2 = result[numRepeat]
                        }
                        var sum = parseInt(val1) + parseInt(val2)
                        $("#totalNumRepeat").val(sum)
                    }

                },
                error: function (err){
//                    alert("Algo salio mal");
//                    console.log(err);
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
                        var val2 = 0;
                        var numRepeat = $( "#codeCross" ).val();
                        var val1 = $("#numSeeds").val();
                        if(result[numRepeat] == undefined  ){
                            val2 = 0;
                        }else{
                            val2 = result[numRepeat]
                        }
                        var sum = parseInt(val1) + parseInt(val2)
                        $("#totalCode").val(sum)
                    }
                },
                error: function (err){
//                    alert("Algo salio mal");
//                    console.log(err);
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
                    var val2 = 0;
                    var numRepeat = $( "#crossing_id option:selected" ).text();
                    var val1 = $("#numSeeds").val();
                    if(result[numRepeat] == undefined  ){
                        val2 = 0;
                    }else{
                        val2 = result[numRepeat]
                    }
                    var sum = parseInt(val1) + parseInt(val2)
                    $("#totalNumRepeat").val(sum)
                }
            },
            error: function (err){
                alert("Algo salio mal");
                console.log(err);
            }
        }); 
        //Funcion para adquirir el total de numSeeds por codeCross al cambiar el valor del input "numSeeds"
        $.ajax({
            url: "/numSeedsCodeCross/",
            type: "GET",
            dataType: "json",
            success: function (result) {
                if($("#numSeeds").val() != ''){
                    var val2 = 0;
                    var numRepeat = $( "#codeCross" ).val();
                    var val1 = $("#numSeeds").val();
                    if(result[numRepeat] == undefined  ){
                        val2 = 0;
                    }else{
                        val2 = result[numRepeat]
                    }
                    var sum = parseInt(val1) + parseInt(val2)
                    $("#totalCode").val(sum)
                }
            },
            error: function (err){
                alert("Algo salio mal");
                console.log(err);
            }
        });  
    }
}



