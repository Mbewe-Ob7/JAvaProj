<%-- 
    Document   : Login
    Created on : Jul 14, 2025, 10:12:00 AM
    Author     : 577522
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <h2>Student Login</h2>
    <form action="LoginServlet" method="post">
        Email: <input type="text" name="email" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>
    <br>
    <p style="color:red">${errorMessage}</p>
    </body>
</html>
