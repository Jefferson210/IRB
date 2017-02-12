$(document).on('turbolinks:load', function(){
    $("#codeCrossId").change(function(){
        var codeCross = $("#codeCrossId").val();

        $.ajax({
            url: "/codeCrossParents/"+codeCross,
            type: "GET",
            dataType: "json",
            success: function (result) {  
                //                console.log(result)
                if(result != null){
                    var father_id=0;
                    var mother_id=0;
                    father_id = result.father_id;
                    mother_id = result.mother_id;

                    // seleccionamos en el select el padre/madre con value igual al id padre/madre
                    $("#father_id").val(father_id)
                    $("#mother_id").val(mother_id)

                    //inhabilitamos el resto de opciones del select father_id
                    $('#father_id > option').each(function() {
                        if($(this).val() != father_id){
                            $(this).attr("disabled","disabled")
                        }
                    });
                    //inhabilitamos el resto de opciones del select mother_id
                    $('#mother_id > option').each(function() {
                        if($(this).val() != mother_id){
                            $(this).attr("disabled","disabled")
                        }
                    });
                }

            },
            error: function (err){
                //alert("Algo salio mal");
                //console.log(err);
            }
        });

    })
})