<%--
  Created by IntelliJ IDEA.
  User: Ragchaa
  Date: 6/13/2019
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="resources/css/login.css" rel="stylesheet" />
    <link href="resources/css/header.css" rel="stylesheet" />
    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value='resources/js/script.js'/>"></script>
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
<div class="container">
    <div class="logo">Login to Fairfield Burger</div>
    <div class="login-item">
        <form action="login" method="post" class="form form-login">
            <div class="form-field">
                <label class="user" for="login-username">
                    <span class="hidden">Username</span>
                </label>
                <input
                        id="login-username"
                        type="text"
                        class="form-input"
                        placeholder="Username"
                        name="username"
                        <c:if test="${cookie.username!=null}">
                            value="${cookie.username.value}"
                        </c:if>
                        required
                />
            </div>

            <div class="form-field">
                <label class="lock" for="login-password"
                ><span class="hidden">Password</span></label
                >
                <input
                        id="login-password"
                        type="password"
                        class="form-input"
                        placeholder="Password"
                        name="password"
                        required
                />
            </div>
            <div class="form-field">
            <span>
              <input
                      class="checkbox"
                      type="checkbox"
                      value="true"
                      name="remember"
                      id="remember"
                      <c:if test="${cookie.username!=null}">
                          checked
                      </c:if>
              />
              <label for="remember">Remember me</label>
            </span>

                <input type="submit" value="Log in" />
            </div>
        </form>
    </div>
</div>
</body>
</html>

