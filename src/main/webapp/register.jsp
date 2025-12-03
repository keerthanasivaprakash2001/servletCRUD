<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: Arial;
        }
        .register-container {
            width: 400px;
            margin: 120px auto;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 20px #000;
            text-align: center;
        }
        input, select {
            width: 90%;
            padding: 12px;
            margin: 8px 0;
            border-radius: 8px;
            border: 1px solid #666;
            font-size: 16px;
        }
        .btn {
            width: 95%;
            padding: 12px;
            margin-top: 10px;
            background-color: #28a745;
            color: white;
            border-radius: 8px;
            font-size: 18px;
            border: none;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #1e7e34;
        }
    </style>
</head>
<body>

<div class="register-container">
    <h2>Create New Account</h2>

    <form action="regist" method="post">
        <input type="number" name="id" placeholder="Enter ID" required><br>
        <input type="text" name="name" placeholder="Enter Name" required><br>
        <input type="password" name="password" placeholder="Enter Password" required><br>

        <select name="role" required>
            <option value="">Select Role</option>
            <option value="Admin">Admin</option>
            <option value="User">User</option>
        </select><br>

        <button type="submit" class="btn">Register</button>
    </form>
</div>

</body>
</html>
