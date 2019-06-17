(function() {
    var url = "cart";
    var cartItem = {
        cartItem: {
            burger: "burger",
            size: "M",
            pan: "original",
            quantity: 2
        }
    };
    //
    // fetch(url, {
    //     method: "POST",
    //     headers: {
    //         "Content-Type": "application/json"
    //     },
    //     body: JSON.stringify(data)
    // }).then(response => response.json())
    // .then(data => console.log("data", JSON.stringify(data)))
    // .catch(error => console.log("error", error));

    $.post(url, {cartItem: JSON.stringify(cartItem)}, processData, "json");

    function processData(data) {
        console.log(data);
    }
})();