<%@ page import="java.util.List" %>
<%@ page import="entity.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>

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
            width: 850px;
            margin: 80px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 17px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #999;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f3f3f3;
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

        .no-data {
            font-size: 18px;
            font-weight: bold;
            color: red;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>All Students</h2>

    <%
        List<Student> students = (List<Student>) request.getAttribute("student");

        if (students != null && !students.isEmpty()) {
    %>
    <form action="getall" method="get">
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
        </tr>

        <% for (Student s : students) { %>
        <tr>
            <td><%= s.getStuddid() %></td>
            <td><%= s.getStudname() %></td>
            <td><%= s.getDept() %></td>
        </tr>
        <% } %>
    </table>
    </form>

    <% } else { %>
    <p class="no-data">No Students Found!</p>
    <% } %>

    <a href="dashboard.jsp" class="back">Back to Dashboard</a>
</div>

</body>
</html>
