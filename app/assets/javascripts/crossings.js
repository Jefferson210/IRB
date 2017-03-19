$(document).on('turbolinks:load', function(){
      
    $("#codeCrossId").change(function(){
        var codeCross = $("#codeCrossId").val();

        $.ajax({
            url: "/codeCrossParents/"+codeCross,
            type: "GET",
            dataType: "json",
            success: function (result) {  
                console.log(result)
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

    $("#goodCrossingId").change(function(){
        var numCrossings = $("#numCrossingId").val();
        var goodCrossings = $(this).val();
        var percentaje = 0;
        //        console.log(numCrossings)

        if(parseInt(goodCrossings) > parseInt(numCrossings)){
            $("#notice").html("<p class='alert alert-danger'>GoodCrossing should be less than NumCrossing</p>")
            $("#goodCrossingId").val(0);
            $("#badCrossingId").val(0);
            $("#percEffectiveId").val(0+"%");
        }else{
            $("#notice").html("");
            var badCrossing = parseInt(numCrossings) - parseInt(goodCrossings);
            percentaje = (parseInt(goodCrossings) * 100) / parseInt(numCrossings);
            $("#badCrossingId").val(badCrossing) ;
            $("#percEffectiveId").val(percentaje+"%");
        }
    })

    $("#numCrossingId").change(function(){
        var numCrossings = $("#numCrossingId").val();
        var goodCrossings = $("#goodCrossingId").val();
        var percentaje = 0;
        if(goodCrossings == ""){
            goodCrossings =0;
        }
        if(parseInt(goodCrossings) > parseInt(numCrossings)){
            $("#notice").html("<p class='alert alert-danger'>GoodCrossing should be less than NumCrossing</p>")
            $("#goodCrossingId").val(0);
            $("#badCrossingId").val(0); 
            $("#percEffectiveId").val(0+"%");
        }else{
            $("#notice").html("");
            var badCrossing = parseInt(numCrossings) - parseInt(goodCrossings);
            percentaje = (parseInt(goodCrossings) * 100) / parseInt(numCrossings);
            $("#badCrossingId").val(badCrossing); 
            $("#percEffectiveId").val(percentaje+"%");
        }
    })

    //mostrar campos segun la opcion de Effective
    $( "#effectiveId").change(function() {
        var str = "";
        $( "#effectiveId option:selected" ).each(function() {
            str += $( this ).text();
            //alert(str)
            if(str == "Not" || str == "Select"){
                $(".effectiveOption").hide();
                //borramos los datos despues de editar la propiedad a Not
                $("#numCrossingId").val("");
                $("#percEffectiveId").val("");
                $("#goodCrossingId").val("");
                $("#badCrossingId").val("");
                $("#crossing_dateHarvest").val("");
                $("#crossing_weekHarvest").val("");
                $("#crossing_numSeeds").val("");              
            }else{                
                $(".effectiveOption").show();                
            }        
        });        
    })
        .trigger( "change" );
    
    
    
    if($("#effectiveShowPage span").text() == "not"){
         $(".effectiveOption").hide();
    }
})




