<%-- 
    Document   : Register
    Created on : Jul 14, 2025, 10:10:49 AM
    Author     : 577522
--%>
<script>
  function goToLogin() {
    // You can add validation or other logic here
    window.location.href = 'Login.jsp';
    
  }
</script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background-image: url("images/india.jpg");
                background-repeat: no-repeat;
                
            }

            
            
            
        </style>
        
    <form name="display" action="display.jsp" method="POST">
        <table border="0">
            <thead>
                <tr>
                    <th>Register Form:</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Enter Name:</td>
                    <td><input type="text" name="txtName" value="" size="50" /></td>
                </tr>
                <tr>
                    <td>Enter SurName:</td>
                    <td><input type="text" name="txtSurname" value="" size="50" /></td>
                </tr>
                <tr>
                    <td>Enter Email:</td>
                    <td><input type="text" name="txtEmail" value="" size="50" /></td>
                </tr>
                <tr>
                    <td>Enter Password:</td>
                    <td><input type="text" name="txtPassword" value="" size="50" /></td>
                </tr>
            </tbody>
        </table>
        
        <input type="submit" value="Submit" name="btnSubmit" />
        <input type="reset" value="Clear" name="btnClear" />
        <input type="button" onclick="goToLogin()" value="Login" name="btnLogin" />
             
    </form>
        
    
        
    </head>
    <body>
        <h1></h1>
    </body>
    <h6>Your Mental Health is Important, choose you!</h6>
</html>
