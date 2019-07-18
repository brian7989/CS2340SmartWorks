<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Author: Brian Lee
  Date: 7/1/19
  Time: 1:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="sensor.SensorDAO" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<head>
    <title> View Sensor Sensor </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Brian Lee">
    <meta name="description" content="View Sensor page">
    <meta name="author" content="Brian Lee">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../res/style/customHeader.css" rel="stylesheet">
    <%--No way to resolve CSS conflict here. Causes font degradation--%>
    <%--Bootstrap CSS --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .header {
            position: absolute;
        }

        .card-columns {
            position: absolute;
            margin: 20% 10% 10% 20%;
        }


    </style>
</head>
<body>
<div class="header">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="../js/script.js"></script>
</div>


<div class="card-columns">
    <%
        String userID = (String) session.getAttribute("userID");
        SensorDAO sensorDAO = new SensorDAO(userID);
        try {
            ResultSet r = sensorDAO.viewSensor();
            while (r.next()) {
    %>
    <div class="card" style="width: 18rem;">
        <img src="../res/images/<%=r.getString("deviceType")%>.jpg" class="card-img-top" alt="Alarm">
        <div class="card-body">
            <h5 class="card-title"><%=r.getString("deviceName")%>
            </h5>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Device ID : <%=r.getString(1)%>
            </li>
            <li class="list-group-item">Current Status :</li>
            <li class="list-group-item">startTime :</li>
            <li class="list-group-item">floorNumber :</li>
        </ul>
        <div class="card-body">
            <a href="./switchStatus.jsp?status=<%=1%>deviceID=<%= r.getString("id")%>&deviceName=<%=r.getString("deviceName")%>"
               class="card-link">Enable</a>
            <a href="./switchStatus.jsp?status=<%=0%>deviceID=<%= r.getString("id")%>&deviceName=<%=r.getString("deviceName")%>"
               class="card-link">Disable</a></div>
    </div>
    <%
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</div>

</body>
</html>


