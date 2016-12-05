/**
 * Created by geovany on 11/3/16.
 */
$(document).ready(function(){
$('#btnRegistrarPago').click(function(){
    $('#payment-form').toggle();
});
    function membershipPrice() {
        var x = document.getElementById("mySelect").value;
        document.getElementById("demo").innerHTML = "You selected: " + x;
    }
});
