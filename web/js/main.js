$(function(){
    $('#cha').click(addProduct);

    function addProduct(){
       /* var productName = $('#product_name').val();
        var productPrice = $('#product_price').val();
        var product = {name:productName, price:productPrice};
        $.post('product',{product: JSON.stringify(product)}, processData, "json")*/

        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open( "GET", "/payment?id=1", false ); // false for synchronous request
        xmlHttp.send( null );
        return xmlHttp.responseText;


       alert('hi');

    }

    function processData(data){
        //data = JSON.parse(data);
        var td0=$('<td>').text(data.id);
        var td1 = $('<td>').text(data.name);
        var td2 = $('<td>').text(data.price);
        var tr = $('<tr>').append(td0).append(td1).append(td2);
        $('#tbl_products>tbody').append(tr);
    }
})