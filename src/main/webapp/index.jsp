<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('https://images.unsplash.com/photo-1522199710521-72d69614c702');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, Helvetica, sans-serif;
        }

        .login-container {
            width: 350px;
            margin: 120px auto;
            background: rgba(255, 255, 255, 0.90);
            padding: 30px 20px;
            border-radius: 12px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
            text-align: center;
        }

        h2 {
            color: #333;
        }

        input {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #666;
            font-size: 16px;
        }

        input:focus {
            border-color: #007BFF;
        }

        .btn {
            width: 95%;
            padding: 12px;
            margin-top: 10px;
            border-radius: 8px;
            border: none;
            background-color: #007BFF;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }

        .register-link {
            margin-top: 12px;
            font-size: 16px;
        }

        .register-link a {
            color: blue;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>

    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
    <p class="error"><%= error %></p>
    <% } %>

    <form action="login" method="post">
        <input type="text" name="name" placeholder="Enter Username" required><br>
        <input type="password" name="password" placeholder="Enter Password" required><br>
        <button type="submit" class="btn">Login</button>
    </form>

    <p class="register-link">New User? <a href="register.jsp">Register</a></p>

</div>

</body>
</html>
