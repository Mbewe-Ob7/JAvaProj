<%-- 
    Document   : Login
    Created on : Jul 14, 2025, 10:12:00 AM
    Author     : 600239
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
        <form action="LoginServlet" method="post">
            <h2>Student Login</h2>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required>
            <label for="password">Password:</label>
            <div class="password-container">
                <input type="password" id="password" name="password" required>
                <button type="button" id="togglePassword" onclick="togglePasswordVisibility()">Show</button>
            </div>
            <label for="remember">
                <input type="checkbox" id="remember" name="remember"> Remember Me
            </label>
            <input type="submit" value="Login">
            <p>${errorMessage}</p>
        </form>
        <script>
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