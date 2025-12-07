<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Not Found</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('https://images.unsplash.com/photo-1522199710521-72d69614c702');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, Helvetica, sans-serif;
        }

        .container {
            width: 450px;
            margin: 120px auto;
            background: rgba(255, 255, 255, 0.92);
            padding: 30px 20px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
        }

        .error {
            font-size: 20px;
            font-weight: bold;
            color: #d9534f;
            margin-bottom: 20px;
        }

        .btn {
            margin-top: 20px;
            display: block;
            background-color: #d9534f;
            color: white;
            padding: 12px;
            font-size: 18px;
            border-radius: 8px;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #b52b27;
        }

        .id-display {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

    </style>
</head>
<body>

<div class="container">

    <% String message1 = (String) request.getAttribute("message1"); %>

    <% if("No Employee Found!".equals(message1)) { %>
    <p class="success"><%= message1 %></p>
    <% } %>

    <p class="error">
        No Student Found with ID:
        <%= request.getAttribute("id")
        %>
    </p>

    <a href="dashboard.jsp" class="back-btn">Back</a>
</div>

</body>
</html>
