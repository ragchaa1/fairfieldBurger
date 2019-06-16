<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%><%--
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
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

    <link rel = "stylesheet"
          type = "text/css"
          href = "css/dashboard.css" />
</head>
<body>

<section id="main">

    <div><span> 500 Income </span><span> Total Order </span><span>Canceled Order </span><span> Delivered Order </span></div>

    <div id="container"></div>
   <%-- <c:forEach items="${payments}" var="payment">
        <tr>
            <td><c:out value="${payment.paymentId}" /></td>
            <td><c:out value="${payment.paymentDate}" /></td>
            <td><c:out value="${payment.amount}" /></td>
        </tr>
    </c:forEach>--%>
</section>

<script language="JavaScript">
    Highcharts.chart('container', {
        chart: {
            type: 'line'
        },
        title: {
            text: 'Monthly Average Sales By Month'
        },
        subtitle: {
            text: 'Source: Wap class'
        },
        xAxis: {
            categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        },
        yAxis: {
            title: {
                text: 'Income'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: 'Burger',
            data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
        }, {
            name: 'Big Burger',
            data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
        }]
    });
</script>

</body>
</html>
