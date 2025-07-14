<%-- 
    Document   : display
    Created on : Jul 14, 2025, 10:11:21 AM
    Author     : 577522
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Display Data:</h1>
        
         <%
            String name=request.getParameter("txtName");
            String Surname=request.getParameter("txtSurname");
            String email=request.getParameter("txtEmail");
            String password=request.getParameter("txtPassword");
        %>
        
        
        <table border="1">
            <thead>
                <tr>
                    <th>Register successful</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Name:</td>
                    <td><%= name %></td>
                </tr>
                <tr>
                    <td>SurName:</td>
                    <td><%= Surname %></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><%= email %></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><%= password %></td>
                </tr>
            </tbody>
        </table
        
        <h2>Successful Register </h2>
    </body>
    
</html>
