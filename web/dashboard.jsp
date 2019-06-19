<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>


    <script type="text/javascript"
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <script src="https://code.highcharts.com/maps/highmaps.js"></script>
    <script src="https://code.highcharts.com/maps/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/mapdata/countries/us/custom/us-all-mainland.js"></script>


    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.highcharts.com/highcharts-more.js"></script>


    <link href="resources/css/index.css" rel="stylesheet"/>
    <link href="resources/css/header.css" rel="stylesheet">
    <link href="resources/css/dashboard.css" rel="stylesheet">

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

    <section id="map">
        <div id="usaid"></div>
    </section>
</div>

<script language="JavaScript">

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


    var data = [
        ['us-ma', ${surveyMap['us-ma']}],
        ['us-wa', ${surveyMap['us-wa']}],
        ['us-ca', ${surveyMap['us-ca']}],
        ['us-or', ${surveyMap['us-or']}],
        ['us-wi', ${surveyMap['us-wi']}],
        ['us-me', ${surveyMap['us-me']}],
        ['us-mi', ${surveyMap['us-mi']}],
        ['us-nv', ${surveyMap['us-nv']}],
        ['us-nm', ${surveyMap['us-nm']}],
        ['us-co', ${surveyMap['us-co']}],
        ['us-wy', ${surveyMap['us-wy']}],
        ['us-ks', ${surveyMap['us-ks']}],
        ['us-ne', ${surveyMap['us-ne']}],
        ['us-ok', ${surveyMap['us-ok']}],
        ['us-mo', ${surveyMap['us-mo']}],
        ['us-il', ${surveyMap['us-il']}],
        ['us-in', ${surveyMap['us-in']}],
        ['us-vt', ${surveyMap['us-vt']}],
        ['us-ar', ${surveyMap['us-ar']}],
        ['us-tx', ${surveyMap['us-tx']}],
        ['us-ri', ${surveyMap['us-ri']}],
        ['us-al', ${surveyMap['us-al']}],
        ['us-ms', ${surveyMap['us-ms']}],
        ['us-nc', ${surveyMap['us-nc']}],
        ['us-va', ${surveyMap['us-va']}],
        ['us-ia', ${surveyMap['us-ia']}],
        ['us-md', ${surveyMap['us-md']}],
        ['us-de', ${surveyMap['us-de']}],
        ['us-pa', ${surveyMap['us-pa']}],
        ['us-nj', ${surveyMap['us-nj']}],
        ['us-ny', ${surveyMap['us-ny']}],
        ['us-id', ${surveyMap['us-id']}],
        ['us-sd', ${surveyMap['us-sd']}],
        ['us-ct', ${surveyMap['us-ct']}],
        ['us-nh', ${surveyMap['us-nh']}],
        ['us-ky', ${surveyMap['us-ky']}],
        ['us-oh', ${surveyMap['us-oh']}],
        ['us-tn', ${surveyMap['us-tn']}],
        ['us-wv', ${surveyMap['us-wv']}],
        ['us-dc', ${surveyMap['us-dc']}],
        ['us-la', ${surveyMap['us-la']}],
        ['us-fl', ${surveyMap['us-fl']}],
        ['us-ga', ${surveyMap['us-ga']}],
        ['us-sc', ${surveyMap['us-sc']}],
        ['us-mn', ${surveyMap['us-mn']}],
        ['us-mt', ${surveyMap['us-mt']}],
        ['us-nd', ${surveyMap['us-nd']}],
        ['us-az', ${surveyMap['us-az']}],
        ['us-ut', ${surveyMap['us-ut']}]
    ];

    // Create the chart
    Highcharts.mapChart('usaid', {
        chart: {
            map: 'countries/us/custom/us-all-mainland'
        },

        title: {
            text: 'Burger State Stats'
        },

        subtitle: {
            text: 'Source map: <a href="http://code.highcharts.com/mapdata/countries/us/custom/us-all-mainland.js">United States of America, mainland</a>'
        },

        mapNavigation: {
            enabled: true,
            buttonOptions: {
                verticalAlign: 'bottom'
            }
        },

        colorAxis: {
            min: 0
        },

        series: [{
            data: data,
            name: 'Random data',
            states: {
                hover: {
                    color: '#BADA55'
                }
            },
            dataLabels: {
                enabled: true,
                format: '{point.name}'
            }
        }]
    });

</script>

</body>
</html>