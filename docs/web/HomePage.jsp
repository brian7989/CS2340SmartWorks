<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/1/19
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<html>
<head>
    <title> Welcome Screen </title>
    <meta charset = "UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href = "res/style/HomePage.css" rel = "stylesheet">
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
  <div class="jumbotron">
    <h1>SmartWorks Main Menu</h1>
    <p>Welcome to the Main Menu. Managing your Smart Home is just a click away. </p>
  </div>
</div>

<div class="container">
  <table class="table table-borderless" align="center">
      <tr>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Alarm Configuration
   </button>
     </td>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Schedule
   </button>
    </td>
      </tr>
      <tr>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Battery Levels
   </button></td>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Cameras
   </button></td>
      </tr>
      <tr>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Floor Plan
   </button></td>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Devices
   </button></td>
      </tr>
      <tr>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Feedback
   </button></td>
        <td><button type = "button" class = "btn btn-light btn-lg">
      Live Chat Support
   </button>
</td>
</tr>
  </table>
</div>
</html>

