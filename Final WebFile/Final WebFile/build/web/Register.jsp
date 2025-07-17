<%-- 
    Document   : Register
    Created on : Jul 14, 2025, 10:10:49 AM
    Author     : 600239
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <form action="display.jsp" method="post">
            <h2>Student Registration</h2>
            <label for="name">Name:</label>
            <input type="text" id="name" name="txtName" required>
            <label for="surname">Surname:</label>
            <input type="text" id="surname" name="txtSurname" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="txtEmail" required>
            <label for="password">Password:</label>
            <div class="password-container">
                <input type="password" id="password" name="txtPassword" required>
                <button type="button" id="togglePassword" onclick="togglePasswordVisibility()">Show</button>
            </div>
            <label for="remember">
                <input type="checkbox" id="remember" name="remember"> Remember Me
            </label>
            <div class="button-container">
                <input type="submit" value="Submit" name="btnSubmit">
                <input type="reset" value="Clear" name="btnClear">
                <input type="button" onclick="goToLogin()" value="Login" name="btnLogin">
            </div>
            <p class="slogan">Your Mental Health is Important, choose you!</p>
            <p class="error">${errorMessage}</p>
        </form>
        <script>
            function goToLogin() {
                window.location.href = 'Login.jsp';
            }

            function togglePasswordVisibility() {
                const passwordInput = document.getElementById('password');
                const toggleButton = document.getElementById('togglePassword');
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                    toggleButton.textContent = 'Hide';
                } else {
                    passwordInput.type = 'password';
                    toggleButton.textContent = 'Show';
                }
            }
        </script>
    </body>
</html>