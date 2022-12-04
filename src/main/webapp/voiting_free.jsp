<%@ page import="java.util.Map" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Voiting</title>
</head>
<style>
    .dataVote {
        margin-left: 1%;
        margin-top: 50px;;
    }
</style>
<body>
<%@ include file="menu.jsp" %>
<h1>Voiting</h1>

<form action="voitingServlet" method="POST" class="dataVote">

    <%String allCandidates = config.getServletContext().getInitParameter("candidatesStr");
        String[] arrCandidates = allCandidates.split(",");

        for (String i : arrCandidates) { %>
    <p><label><%=i%></label>   <input type="radio" name="vote" value="<%=i%>"></p>
    <%}%>

    <input type="submit" value="Vote">
</form>

</body>
</html>
