<%@ page import="java.time.LocalDate" %>
<%@ page import="khodan.methods.WeekInSemester" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab 3 - main </title>
</head>
<body>
<%@ include file="menu.jsp" %>
<h1><b><i><u><font color="#663399">KBO Work with JSP (main page)</font></u></i></b></h1>
<br>
<%--  Використання скриплетів (для обробки та виведення коду Java, використовуючи теги <%= %>)  --%>
<H2>Today: <%=LocalDate.now().toString()%></H2>

<%--  Використання скриплетів (для обробки коду Java, використовуючи теги <% %>)  --%>
<h2>Week in semester:
    <% int nWeek = WeekInSemester.numOfWeekInSemester();%>

    <% if (nWeek % 2 == 0) {%>
    Even
    <%} else {%>
    Odd
    <%}%>

    </h2>
<br>

<footer>
    <%@ include file="footer.jsp" %>
</footer>

</body>
</html>
