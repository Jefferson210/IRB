$(document).on("turbolinks:load", function(){
    
    
});

function sameParents(){
    // alert("cargo")
    var codeCross = $("#codeCrossId").val();
    // console.log(codeCross)

    $.ajax({
                url: "/codeCrossParents/"+codeCross,
                type: "GET",
                dataType: "json",
                success: function (result) {
                    console.log(result)
                },
                error: function (err){
                                        alert("Algo salio mal");
                                        console.log(err);
                }
            });
}