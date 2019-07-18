<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/1/19
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <title> Welcome Screen </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../res/style/customHeader.css" rel="stylesheet">
    <link href="../res/style/HomePage.css" rel="stylesheet">
</head>
<body>
<div class="header">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="../js/script.js"></script>
</div>
</body>

<table class="tg" align="center">
    <tr>
        <td class="tg-0lax">
            <a href="./travel.jsp">Travel Mode</a>
        </td>
        <td class="tg-0lax">
            <a href="./addSensor.jsp">Add Sensor</a>
        </td>
    </tr>
    <tr>
        <td class="tg-0lax">
            <a href="./viewStatus.jsp">Sensor Status</a>
        </td>
        <td id="camera" class="tg-0lax">
            <a href="./addFloor.jsp">Floor Configuration</a>
        </td>
    </tr>
    <tr>
        <td class="tg-0lax">
            <a href="./feedback.jsp">Feedback</a>
        </td>
        <td class="tg-0lax">
            <a href="./Support.jsp">Customer Service</a>
        </td>
    </tr>
</table>
</html>

