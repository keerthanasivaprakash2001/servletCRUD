<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Employee</title>

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
            margin-bottom: 20px;
        }

        label {
            width: 90%;
            display: block;
            text-align: left;
            margin-top: 8px;
            font-size: 16px;
            color: #444;
        }

        input {
            width: 90%;
            padding: 12px;
            margin: 6px 0 14px 0;
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
            background-color: #d9534f;
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 12px;
        }

        .btn:hover {
            background-color: #b52b27;
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
    <h2>Delete Student</h2>

    <form action="delete" method="post">
        <label for="sid">Enter Student ID</label>
        <input type="number" id="sid" name="id" required>

        <button type="submit" class="btn">Delete Student</button>
    </form>

    <a href="dashboard.jsp" class="back">Back to Dashboard</a>
</div>

</body>
</html>
