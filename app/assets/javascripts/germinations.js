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

    });
})