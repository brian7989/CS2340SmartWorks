<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 6/30/19
  Time: 7:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="en">
<head>
    <title> Welcome Dear User </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../res/style/LoginStyle.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
<div class="my_navBar">
    <script src="../js/script.js"></script>
</div>
</body>
<form method="post">
    <div class="imgcontainer">
        <img src="../res/images/Avatar.png" alt="Avatar" class="avatar">
    </div>
    <label><b>Username</b></label>
    <label>
        <input type="text" placeholder="Enter Username" name="userID" required>
    </label>

    <label><b>Password</b></label>
    <label>
        <input type="password" placeholder="Enter Password" name="userPW" required>
    </label>

    <button type="login" formaction="userLogin.jsp" value="Login">Login</button>
    <button type="register" formaction="userRegistration.jsp" value="Register">Register</button>
</form>
