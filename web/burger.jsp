<%--
  Created by IntelliJ IDEA.
  User: Ragchaa
  Date: 6/17/2019
  Time: 7:41 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="resources/css/hfoods.css">
    <link rel="stylesheet" type="text/css" href="resources/css/hindex.css">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="resources/js/horder.js"></script>
    <title>Food</title>
    <link href="resources/css/index.css" rel="stylesheet" />
    <link href="resources/css/header.css" rel="stylesheet" >
</head>

<body onload="init()">

<div class="header">
    <div class="headerContent">
        <div class="menuItem leftMenu">
            <%--<a href ="/" class="imgbanner"><img src="resources/images/logo_burger.png" /></a>--%>
        </div>
        <div class = "rightMenu">
            <div class="menuItem userMenu">
                <c:if test="${user==null}"><a href="/login">Login</a></c:if>

                <c:if test="${user!=null}">
                    Hello, ${user.username}!<br />
                    <a href="/logout">(logout)</a>
                </c:if>
            </div>
            <%--  <div class="menuItem">
                <a href="/payment">Dashboard</a>
              </div>--%>
            <div class="menuItem">
                <a href="/order">Orders</a>
            </div>

            <div class="menuItem">
                <a href="/payment">Dashboard</a>
            </div>

            <div class="menuItem">
                <a href ="/placeOrder.jsp">Cart</a>
                [${cart.items.size()}]
            </div>
        </div>
    </div>
</div>

<div class="container-fluid main-container">


    <div class="main-body container">
        <h1 class="foods-title">Burgers</h1>


        <div class="row">
            <div class="col">
                <div class="food" id="11" onmouseenter="showButton(11)" onmouseleave="hideButton(11)">
                    <img class="food-pic" src="resources/images/steakBurger.jpg" />
                    <div class="food-name">Steak Burger (430Cal)</div>
                    <div class="food-price">$7.99</div>
                    <button class="btn btn-success btn-add">Add to Cart</button>
                </div>
            </div>
            <div class="col">
                <div class="food" id="12" onmouseenter="showButton(12)" onmouseleave="hideButton(12)">
                    <img class="food-pic" src="resources/images/doubleBurger.png" />
                    <div class="food-name">Double Burger (900 Cal)</div>
                    <div class="food-price">$8.99</div>
                    <button class="btn btn-success btn-add">Add to Cart</button>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/doubleBurger.png" />
                    <div class="food-name">Cheeseburger (530 Cal)</div>
                    <div class="food-price">$8.19</div>
                    <button class="btn btn-success btn-add">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/crispyChicken.jpg" />
                    <div class="food-name">Crispy Chicken Burger (640Cal)</div>
                    <div class="food-price">$6.99</div>
                    <button class="btn btn-success btn-add">Add to Cart</button>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/grilledChicken.png" />
                    <div class="food-name">Grilled Chicken Burger (430 Cal)</div>
                    <div class="food-price">$7.19</div>
                    <button class="btn btn-success btn-add">Add to Cart</button>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/veggieBurger.png" />
                    <div class="food-name">Veggie Burger (540 Cal)</div>
                    <div class="food-price">$5.99</div>
                    <button class="btn btn-success btn-add">Add to Cart</button>
                </div>
            </div>
        </div>





        <h1 class="foods-title">Sides</h1>
        <div class="row">
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/FrenchFries.png" />
                    <div class="food-name">French Fries (160Cal)</div>
                    <div class="food-price">$2.49</div>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/onionRings.jpg" />
                    <div class="food-name">Onion Rings (160 Cal)</div>
                    <div class="food-price">$2.99</div>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/chickenTenders.png" />
                    <div class="food-name">Chicken Tenders (430 Cal)</div>
                    <div class="food-price">$4.99</div>
                </div>
            </div>
        </div>

        <h1 class="foods-title">Beverages</h1>
        <div class="row">
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/CocaCola.jpg" />
                    <div class="food-name">Coca-Cola (140Cal)</div>
                    <div class="food-price">2.49</div>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/DietCoke.jpg" />
                    <div class="food-name">Diet-Cola (0 Cal)</div>
                    <div class="food-price">2.49</div>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/Sprite.jpg" />
                    <div class="food-name">Sprite (140 Cal)</div>
                    <div class="food-price">2.49</div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/IcedTea.jpg" />
                    <div class="food-name">Iced Tea (120Cal)</div>
                    <div class="food-price">2.49</div>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/Lemonade.jpg" />
                    <div class="food-name">Lemonade (120 Cal)</div>
                    <div class="food-price">2.49</div>
                </div>
            </div>
            <div class="col">
                <div class="food">
                    <img class="food-pic" src="resources/images/Water.png" />
                    <div class="food-name">Water (140 Cal)</div>
                    <div class="food-price">1.49</div>
                </div>
            </div>
        </div>
    </div>

    <div id="footer">
        <div>This page is made for CS472 June 2019</div>
        <div>Created by Ragchaabazar and Khaliun</div>
    </div>

</div>
</body>
</html>