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
    <link href="res/style/LoginStyle.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-light navbar-light sticky-top">
    <a class="navbar-brand" href="WelcomeScreen.html"><img src="res/images/SmartWorks1.1.png" alt="SmartWorks Logo" width = "120"; height = "60"></a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp"><span class="glyphicon glyphicon-log-in"></span>Login</a>
      </li>
      <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Features
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Product Tours</a>
        <a class="dropdown-item" href="#">Packages</a>
        <a class="dropdown-item" href="#">Demos</a>
      </div>
    </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Tutorials</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">FAQs</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
    </ul>
  </div>
</nav>
<br>
</body>


<div class="container">
<form>
  <div class="imgcontainer">
        <img src="res/images/Avatar.png" alt="Avatar" class="avatar">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-success">Submit</button>
  <button type="register" class="btn btn-outline-success">Register</button>
  <div class="container" style="background-color:#f1f1f1">
        <button type="button" class="btn btn-outline-danger" >
            <a href="index.jsp">Cancel</a>
        </button>
        <span class="psw"><a href="ResetPass.html">Forgot password?</a></span>
    </div>

</form>


</div>
</html>
