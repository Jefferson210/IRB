//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/



$( document ).on('turbolinks:load', function() {
    $("#three_offspring_id").on('change', function() {
        //        if(  $("#three_offspring_id").val() != "" ){
        if(  $("#three_offspring_id").val() != "" ){
            var id = $( "#three_offspring_id option:selected" ).val();
            //            console.log(id)
            $.ajax({
                url: "/selectColorIrbSelections/"+ id,
                type: "GET",
                dataType: "json",
                //            data : {id: 1},
                success: function (result) {
                    if(result == null){
                        $("#colorId").val("")
                    }else{
                        $("#colorId").val(result.colorName)                        
                    }
                },
                error: function (err){
                    //alert("Algo salio mal");
                    //console.log(err);
                }
            });
        }else{
            //console.log("Select vacio")
            $("#colorId").val("");
        }
    });
})
