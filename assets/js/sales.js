$(document).ready(function(){
    $("#selectProduct").on("change", function(e){
        $(".price").val($( "#selectProduct option:selected" ).attr("price"));        
    });
});