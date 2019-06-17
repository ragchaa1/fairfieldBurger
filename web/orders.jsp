<%--
  Created by IntelliJ IDEA.
  User: Ragchaa
  Date: 6/16/2019
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My Orders</title>
    <link href="resources/css/header.css" rel="stylesheet" >
    <link href ="resources/css/order.css" rel="stylesheet">
</head>
<body>
<div class="header">
    <div class="headerContent">
        <div class="menuItem leftMenu">
            <a href ="/"><img src="resources/images/logo_burger.png" /></a>

        </div>
        <div class = "rightMenu">
            <div class="menuItem userMenu">
                <c:if test="${user==null}"><a href="/login">Login</a></c:if>

                <c:if test="${user!=null}">
                    Hello, ${user.username}!<br />
                    <a href="/logout">(logout)</a>
                </c:if>
            </div>
            <div class="menuItem">
                <a href="/order">Orders</a>
            </div>
            <div class="menuItem">
                <a href="/payment">Dashboard</a>
            </div>
            <div class="menuItem">
                <a href="/chart">Chart</a>
            </div>
            <div class="menuItem">
                <a href ="/placeOrder.jsp">Cart</a>
                [${cart.items.size()}]
            </div>
        </div>
    </div>
</div>
<div class="main">
    <c:forEach items="${orders}" var="order" >
        <div class="container">
            <h2>Order:</h2>
            <div id="order">
                <table>
                    <tr>
                        <th>Burger Type</th>
                        <th>Size</th>
                        <th>Quantity</th>
                    </tr>
                    <c:forEach items="${order.cart.items}" var="item">
                        <tr>
                            <td>${item.burger.type}</td>
                            <td>${item.size}</td>
                            <td>${item.quantity}</td>
                        </tr>

                    </c:forEach>
                </table>
                <table>
                    <tr>
                        <th><strong>Invoice</strong></th>
                        <th><strong>Address</strong></th>
                    </tr>

                    <tr>
                        <td>$${order.cart.calculateTotalPrice()}</td>
                        <td>${order.address}</td>
                    </tr>

                </table>
            </div>
        </div>
    </c:forEach>
</div>

<div class="footer">
 WAP
</div>
</body>
</html>

