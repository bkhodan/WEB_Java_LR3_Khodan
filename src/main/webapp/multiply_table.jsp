<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>multiply_table</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<br>
<h1>Multiply table</h1>
<br>
<table border="1" width="15%">
    <%for (int i = 0; i <= 9; i++) {%>
    <tr>
        <%for (int j = 0; j <= 9; j++) {
            if (i == 0 && j == 0) {%>
        <td><%="x"%></td><%} else if (i == 0) {%>
        <td><%=j%></td><%} else if (j == 0) {%>
        <td><%=i%></td><%} else {%>
        <td><%=i * j%></td>
        <%}
        }%>
    </tr>
    <%}%>
</table>
</body>
</html>