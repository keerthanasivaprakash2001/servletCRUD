<%@ page import="entity.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Get Employee</title>

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

        h2 {
            margin-bottom: 25px;
            color: #333;
        }

        input {
            width: 90%;
            padding: 12px;
            margin-bottom: 12px;
            border-radius: 8px;
            border: 1px solid #666;
            font-size: 17px;
        }

        .btn {
            width: 95%;
            padding: 12px;
            margin-top: 10px;
            background-color: #007bff;
            color: white;
            font-size: 18px;
            border-radius: 8px;
            text-decoration: none;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .result-box {
            margin-top: 20px;
            padding: 12px;
            background: #f3f3f3;
            border-radius: 8px;
            font-size: 17px;
            color: #222;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Get Employee By ID</h2>

    <form action="get" method="post">
        <input type="number" name="id" placeholder="Enter Employee ID" required><br>
        <button type="submit" class="btn">Search</button>
    </form>

    <%
        Student student = (Student) request.getAttribute("student");
        if (student != null) {
    %>

    <div class="result-box">
        <p><strong>ID:</strong> <%= student.getStuddid() %></p>
        <p><strong>Name:</strong> <%= student.getStudname() %></p>
        <p><strong>Department:</strong> <%= student.getDept() %></p>
    </div>

    <% } %>

</div>

</body>
</html>
