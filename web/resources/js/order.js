(function(){
    const URL = "cart";
    fetch(URL)
    .then(result=>result.json())
    .then(cartItems => {
      displayCartItems(cartItems)
    })

    function displayCartItems(cartItems) {

      let appendChild = function(tagName, innerHTML, parentOb) {
        let child =  document.createElement(tagName);
        child.innerHTML = innerHTML;
        parentOb.appendChild(child);
      }
      let table = document.createElement("TABLE");
      document.getElementById("cartItems").appendChild(table);

      let tr = document.createElement("TR");
      appendChild("TH", "#", tr);
      appendChild("TH", "burger Type", tr);
      appendChild("TH", "Size", tr);
      appendChild("TH", "Quantity", tr);
      appendChild("TH", "Price", tr);
      table.appendChild(tr);
      let count = 0;
      let total = 0.0;
      for (let item of cartItems) {
        count++;
        let price;
        if(item.size == "Medium"){
          price = item.burger.price + 1;
        }
        else if(item.size == "Big"){
          price = item.burger.price + 2;
        }
        else{
          price = item.burger.price;
        }
        console.log(typeof(total));
        console.log(typeof(price));
        console.log(typeof(item.quantity));
        total += price * parseFloat(item.quantity);
        console.log(total);
        tr = document.createElement("tr");
        appendChild("TD", count, tr);
        appendChild("TD", item.burger.type, tr);
        appendChild("TD", item.size, tr);
        appendChild("TD", item.quantity, tr);
        appendChild("TD", price, tr);
        table.appendChild(tr);
      }

      tr = document.createElement("tr");
      tr.colSpan = 4;
      let td = document.createElement("TD");
      td.innerHTML = "<strong>Total</strong>";
      td.colSpan = 4;
      tr.appendChild(td);
      appendChild("TD", "<strong>"+total+"</strong>", tr);
      table.appendChild(tr);
    }


})();
