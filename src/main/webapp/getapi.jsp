<%@ page import="entity.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>

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
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .details-box {
            background: #f9f9f9;
            border-radius: 8px;
            padding: 15px;
            font-size: 18px;
            color: #444;
        }

        p {
            margin: 10px 0;
            font-size: 17px;
        }

        .back {
            margin-top: 18px;
            display: block;
            color: #007bff;
            font-weight: bold;
            text-decoration: none;
        }

        .back:hover {
            text-decoration: underline;
        }

        .not-found {
            font-size: 18px;
            font-weight: bold;
            color: red;
        }
    </style>

</head>
<body>

<div class="container">
    <h2>Employee Details</h2>

    <% Student student = (Student) request.getAttribute("student"); %>

    <% if (student != null) { %>

    <div class="details-box">
        <p><strong>ID:</strong> <%= student.getStuddid() %></p>
        <p><strong>Name:</strong> <%= student.getStudname() %></p>
        <p><strong>Department:</strong> <%= student.getDept() %></p>
    </div>

    <% } else { %>

    <p class="not-found">No Employee Found!</p>

    <% } %>

    <a href="getStudent.jsp" class="back">Back</a>
</div>

</body>
</html>
