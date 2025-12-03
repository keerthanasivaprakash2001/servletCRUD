<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>

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
            background: rgba(255, 255, 255, 0.90);
            text-align: center;
            padding: 35px 20px;
            border-radius: 12px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
        }

        h1 {
            margin-bottom: 20px;
            color: #333;
        }

        .btn {
            display: block;
            padding: 14px;
            margin: 12px auto;
            width: 80%;
            background-color: #007bff;
            color: white;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 8px;
            transition: 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .user-info {
            font-size: 17px;
            margin-top: 10px;
            color: #444;
        }

        .logout {
            margin-top: 15px;
            display: block;
            color: #ff3b3b;
            font-weight: bold;
            text-decoration: none;
        }

        .logout:hover {
            text-decoration: underline;
        }

    </style>

</head>
<body>

<div class="container">
    <h1>Admin Dashboard</h1>

    <p class="user-info">Welcome, <strong><%= session.getAttribute("username") %></strong></p>

    <a href="addStudent.jsp" class="btn">Add Employee</a>
    <a href="updateStudent.jsp" class="btn">Update Employee</a>
    <a href="deleteStudent.jsp" class="btn">Delete Employee</a>

    <a href="logout.jsp" class="logout">Logout</a>
</div>

</body>
</html>
