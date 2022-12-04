<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
</head>
<style>
    form {
        margin-left: 1%;
        margin-top: 50px;
    }
</style>
<body>
<h1><%= "Work with GSP " %>
</h1>
<br/>
<form action="loginServlet" method="POST" >
    <p><label>Username</label></p>
    <input type="text" name="username">
    <p><label>Password</label></p>
    <input type="password" name="password">
    <br>
    <p><input type="submit" value="Go to tasks"></p>
</form>
</body>
</html>
