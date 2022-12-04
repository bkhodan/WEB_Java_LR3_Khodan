<%@ page import="cars.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Таблиця автомобілів</title>
</head>
<body>
<style>
    .data {
        margin-left: 1%;
        margin-top: 50px;;
    }
</style>
<%@ include file="menu.jsp"%>
<%! CarsSet s1 = new CarsSet();%>
<br><br><br><br>
<h2>Таблиця автомобілів</h2>
<br>
<table border="1" border-style="solid" class="data">
    <tr bgcolor="#a9a9a9">
        <th>Name of car</th>
        <th>Car type</th>
        <th>Horse power</th>
        <th>Year of issue</th>
    </tr>
    <%
        for (Cars s : s1) {
    %>
    <tr>
        <td><%=s.getNameCar()%>
        </td>
        <td><%=s.getCartype()%>
        </td>
        <td><%=s.getHorsepower()%>
        </td>
        <td><%=s.getYear()%>
        </td>
    </tr>
    <%
        }
    %>
</table>
<br><br>
<p>Table creating - 03.12.2022</p>
</body>
</html>
