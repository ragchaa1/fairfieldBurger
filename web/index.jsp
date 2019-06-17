<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ragchaa
  Date: 6/13/2019
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>Fairfield Burger</title>
  <link href="resources/css/index.css" rel="stylesheet" />
  <link href="resources/css/header.css" rel="stylesheet" >
  <script type="text/javascript"
          src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<div class="main">
  <c:forEach items="${burgers}" var="burger">
    <div class="burger" burgerId="${burger.id}">
      <div class="col-left">
        <h3><c:out value="${burger.type}" /></h3>
        <p>
          Enjoy this freshly prepared burger for family dinner or a group
          lunch, including pepperoni, seasoned pork, beef, mushrooms,
          greenMore...
        </p>
        <div class="control">
          <select class="control-inside size" price="${burger.price}">
            <c:forEach items="${size}" var="size">
              <option value=${size} ><c:out value="${size}" /></option>
            </c:forEach>
          </select>
          <span class="control-inside">
            <select class="control-inside quantity">
              <c:forEach var="i" begin="1" end="10">
                <option value=${i}><c:out value="${i}" /></option>
              </c:forEach>
            </select>
            <input type="submit" value="Add to cart" class="addToCart" />
          </span>
        </div>

      </div>
      <div class="col-right">
        <img src="<c:url value="${burger.imgURL}" />" >
        <p>Price: $<span class="price"><c:out value="${burger.price}" /></span></p>
      </div>
    </div>
  </c:forEach>
</div>

<div class="footer">
 WAP PROJECT
</div>

<script src="resources/js/index.js"></script>

</body>
</html>

