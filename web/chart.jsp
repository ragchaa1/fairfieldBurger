<%--
  Created by IntelliJ IDEA.
  User: Ragchaa
  Date: 6/13/2019
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Title</title>

    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>


    <script src="https://code.highcharts.com/maps/highmaps.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/mapdata/countries/us/custom/us-all-mainland.js"></script>


    <link href="resources/css/index.css" rel="stylesheet"/>
    <link href="resources/css/header.css" rel="stylesheet">
    <link href="resources/css/dashboard.css" rel="stylesheet">


    <script type="text/javascript" src="js/main.js"></script>

    <style>
        #usaid {
            height: 500px;
            min-width: 310px;
            max-width: 800px;
            margin: 0 auto;
        }
        .loading {
            margin-top: 10em;
            text-align: center;
            color: gray;
        }
    </style>

</head>
<body>

<div class="header">
    <div class="headerContent">
        <div class="menuItem leftMenu">
            <a href="/"><img src="resources/images/logo_burger.png"/></a>

        </div>
        <div class="rightMenu">
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
                <a href="/chart">Chart</a>
            </div>
            <div class="menuItem">
                <a href="/bar">Bar</a>
            </div>
            <div class="menuItem">
                <a href="/payment">Dashboard</a>
            </div>

            <div class="menuItem">
                <a href="/placeOrder.jsp">Cart</a>
                [${cart.items.size()}]
            </div>
        </div>
    </div>
</div>

<div class="container">
    <section id="">
        <span class="information">
            <br>
              <c:out value="${totalOrder}" /><br>
            Total order
        </span>
        <span class="information">
            <br>
            <c:out value="${totalIncome}" /><br>
            Total Income
        </span>
        <span class="information">
            <br>
             <c:out value="${totalUser}"/><br>
            Total Users
        </span>
        <span class="information">
            <br>
             <c:out value="${totalProduct}"/><br>
            Total Product
        </span>
    </section>

    <section id="main">
        <div class="main">
            <div id="container"></div>
        </div>
    </section>


</div>

<script language="javascript">
   $(function () {
          Highcharts.chart('container', {
              chart: {
                  type: 'area'
              },
              title: {
                  text: 'Income Growth by Region'
              },
              subtitle: {
                  text: 'Source: WAP project'
              },
              xAxis: {
                  categories: ['2013', '2014', '2015', '2016', '2017', '2018', '2019'],

                  tickmarkPlacement: 'on',
                  title: {
                      enabled: false
                  }
              },
              yAxis: {
                  title: {
                      text: 'billions'
                  },
                  labels: {
                      formatter: function () {
                          return this.value / 1000;
                      }
                  }
              },
              tooltip: {
                  split: true,
                  valueSuffix: ' millions'
              },
              plotOptions: {
                  area: {
                      stacking: 'normal',
                      lineColor: '#666666',
                      lineWidth: 1,
                      marker: {
                          lineWidth: 1,
                          lineColor: '#666666'
                      }
                  }
              },
              series: [{
                  name: 'Illinois',
                  data: ${state}
            }, {
                name: 'Iowa',
                data: [106, 107, 111, 133, 221, 767, 1766]
            }]
        });
    });
</script>


</body>
</html>

