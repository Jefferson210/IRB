//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$( document ).on('turbolinks:load', function() {
    $("#crossing_id").on('change', function() {
        if(  $("#crossing_id").val() != "" ){
            var codeCrossName = $( "#crossing_id option:selected" ).text();
            $("#codeCrossName").val(codeCrossName)
        }


        if($("#crossing_id").val() != ""){
            var id = $( "#crossing_id option:selected" ).val();
            $.ajax({
                url: "/getCrossing/"+ id,
                type: "GET",
                dataType: "json",
                //            data : {id: 1},
                success: function (result) {
                    console.log(result)
                    $("#codeCross").val(result.codeCross)
                },
                error: function (err){
//                    alert("Algo salio mal");
//                    console.log(err);
                }
            });  
        }

    });
})