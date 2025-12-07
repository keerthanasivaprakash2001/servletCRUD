<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>

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
            margin: 110px auto;
            background: rgba(255, 255, 255, 0.92);
            padding: 30px 20px;
            border-radius: 12px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.8);
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 18px;
        }

        label {
            font-size: 16px;
            color: #444;
            margin-top: 8px;
            text-align: left;
            width: 90%;
            display: block;
        }

        input {
            width: 90%;
            padding: 12px;
            margin: 8px 0 14px 0;
            border-radius: 8px;
            border: 1px solid #666;
            font-size: 16px;
        }

        input:focus {
            border-color: #007bff;
        }

        .btn {
            width: 95%;
            padding: 12px;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            color: white;
            cursor: pointer;
            margin-top: 10px;
            display: block;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .back {
            margin-top: 15px;
            display: block;
            color: #ff3b3b;
            font-weight: bold;
            text-decoration: none;
        }

        .back:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

<div class="container">
    <h2>Add student</h2>

    <form action="add" method="post">
        <label for="sid">Student ID</label>
        <input type="number" id="sid" name="id" required>

        <label for="sname">Student Name</label>
        <input type="text" id="sname" name="name" required>

        <label for="dept">Department</label>
        <input type="text" id="dept" name="dept" required>

        <button type="submit" class="btn">Add Student</button>
    </form>

    <a href="dashboard.jsp" class="back">Back to Dashboard</a>
</div>

</body>
</html>
