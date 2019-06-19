<%--
  Created by IntelliJ IDEA.
  User: Ragchaa
  Date: 6/17/2019
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Twitter</title>
    <link rel="icon" href="https://image.flaticon.com/icons/svg/174/174855.svg">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="resources/css/index.css" rel="stylesheet"/>
    <link href="resources/css/header.css" rel="stylesheet">
    <link href="resources/css/dashboard.css" rel="stylesheet">

    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>

</head>
<body>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

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
    Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Burger size stat'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            name: 'Brands',
            colorByPoint: true,
            data: [{
                name: 'Big size',
                y: 61.41,
                sliced: true,
                selected: true
            }, {
                name: 'Medium size',
                y: 11.84
            }, {
                name: 'Small Size',
                y: 26.75
            }]
        }]
    });
</script>

</body>
</html>