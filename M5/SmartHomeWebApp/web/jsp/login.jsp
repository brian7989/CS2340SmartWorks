<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 6/30/19
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<html>
<head>
    <title> Welcome Dear User </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../res/style/customHeader.css" rel="stylesheet">
    <link href="../res/style/LoginStyle.css" rel="stylesheet">
</head>
<body>
<div class="header">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="../js/script.js"></script>
</div>
</body>
<form method="post">
    <div class="imgcontainer">
        <img src="../res/images/Avatar.png" alt="Avatar" class="avatar">
    </div>
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="userID" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="userPW" required>

    <button type="login" formaction="./jsp/userLogin.jsp" value="Login">Login</button>
    <button type="register" formaction="./jsp/userRegistration.jsp" value="Register">Register</button>

    <div class="container" style="background-color:#f1f1f1">
        <button type="button" class="cancelbtn">
            <a href="login.jsp">Cancel</a>
        </button>
        <span class="psw">Forgot <a href="ResetPass.html">password?</a></span>
    </div>
</form>
</html>
