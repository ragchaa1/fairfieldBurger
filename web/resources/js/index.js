$(function(){
    $('.size').change(displayPrice);
    $('.addToCart').click(addToCart);
    function addToCart(event){
        var element = event.currentTarget;
        var burgerId = $(element).closest(".burger").attr("burgerId");
        var burgerSize = $(element).closest(".burger").find(".size").val();
        var burgerPan = $(element).closest(".burger").find(".pan").val();
        var burgerQuantity = $(element).closest(".burger").find(".quantity").val();
        var ret={
            burgerId:burgerId,
            burgerSize:burgerSize,
            burgerPan:burgerPan,
            burgerQuantity:burgerQuantity
        }
        console.log(ret);
        $.post('cart', {
            burgerId:burgerId,
            burgerSize:burgerSize,
            burgerPan:burgerPan,
            burgerQuantity:burgerQuantity
        }, function(){
            location.reload();
        });
    }
    function displayPrice(event){
        var element = event.currentTarget;

        var price = $(element).attr("price");
        var size = $(element).val();
        price = parseFloat(price);
        if(size==='Medium'){
            price = price +1;
        }
        if(size ==='Big'){
            price = price + 2;
        }
        $(element).closest(".burger").find(".price").text(price);


    }



    // function processData(data){
    //     //data = JSON.parse(data);
    //     var td0=$('<td>').text(data.id);
    //     var td1 = $('<td>').text(data.name);
    //     var td2 = $('<td>').text(data.price);
    //     var tr = $('<tr>').append(td0).append(td1).append(td2);
    //     $('#tbl_products>tbody').append(tr);
    // }
})

