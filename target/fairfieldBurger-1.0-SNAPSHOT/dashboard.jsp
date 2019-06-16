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

    <script type="text/javascript" src="js/main.js"></script>

    <link rel="stylesheet"
          type="text/css"
          href="css/dashboard.css"/>
</head>
<body>

<section id="main">

    <div><span> 500 Income </span><span> Total Order </span><span>Canceled Order </span><span> Delivered Order </span>
    </div>


    <table id="tbl_products">
        <thead>
        <tr>
            <th>paymentId</th>
            <th>paymentDate</th>
            <th>amount</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${payments}" var="payment">
            <tr>
                <td><c:out value="${payment.paymentId}"/></td>
                <td><c:out value="${payment.paymentDate}"/></td>
                <td><c:out value="${payment.amount}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <div id="container"></div>
    <%--
        <div id="container2"></div>--%>
</section>


<button id="cha">change</button>

<script language="javascript">
    $(function () {

        var data = new Array();

        <c:forEach items="${asia}" var="a" varStatus="loop">
        data.push(${a});
        </c:forEach>

        console.log('data = = = ' + data);


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
                name: 'Fairfield',
                data: data
            }, {
                name: 'Ottumwa',
                data: [106, 107, 111, 133, 221, 767, 1766]
            }]
        });
    });
</script>


<%--
<script language="JavaScript">

    var data = new Array();

    <c:forEach items="${asia}" var="a" varStatus="loop">
    data.push(${a});
    </c:forEach>


    Highcharts.chart('container2', {
        chart: {
            type: 'column'
        },
        title: {
            text: 'Number of tweet per user'
        },
        /*

          subtitle: {
              text: 'All Details is not true its a dummy Map'
          },*/
        xAxis: {
            categories: [[${map.keySet()}]],
            crosshair: true
        },
        yAxis: {
            min: 0,
            max: 100,
            title: {
                text: 'Twitter rating [in %]'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} tweet</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Tweet number',
            data: [[${map.values()}]]
        }]
    });




--%>


</body>
</html>
