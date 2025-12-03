<%@ page import="entity.Student" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Deleted</title>

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
            text-align: center;
            border-radius: 12px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
        }
        .success {
            font-size: 20px;
            color: green;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .not-found {
            font-size: 20px;
            font-weight: bold;
            color: red;
            margin-bottom: 20px;
        }
        .details-box {
            padding: 10px;
            font-size: 17px;
            text-align: left;
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
    </style>

</head>
<body>

<div class="container">

    <% String message = (String) request.getAttribute("message"); %>

    <% if("Employee Deleted Successfully!".equals(message)) { %>
    <p class="success"><%= message %></p>
    <% } else { %>
    <p class="not-found"><%= message %></p>
    <% } %>

    <% Student student = (Student) request.getAttribute("student"); %>
    <% if(student != null) { %>
    <div class="details-box">
        <p><strong>ID:</strong> <%= student.getStuddid() %></p>
        <p><strong>Name:</strong> <%= student.getStudname() %></p>
        <p><strong>Department:</strong> <%= student.getDept() %></p>
    </div>
    <% } %>

    <a href="deleteStudent.jsp" class="btn">Back to Delete Employee</a>
</div>

</body>
</html>
