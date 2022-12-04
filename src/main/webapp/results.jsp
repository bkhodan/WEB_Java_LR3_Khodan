<%@ page import="java.util.Map" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Results</title>
</head>
<style>
    .dataVote {
        margin-left: 1%;
        margin-top: 50px;
    }
</style>
<body>
<%@ include file="menu.jsp" %>
<h1>Results of voiting</h1>
<p class="dataVote">
<%
    java.util.Map<String, Integer> res = (java.util.Map<String, Integer>) request.getAttribute("results");
    for (Map.Entry<String, Integer> e : res.entrySet()) {%>
        +--------------+<br>
        | <%=e.getKey()%> | <%=e.getValue()%> |<br>
    <% }%>
    +--------------+
</p>
<form action="voiting_free.jsp" class="dataVote">
    <input type="submit" value="Back to voiting" />
</form>

</body>
</html>
