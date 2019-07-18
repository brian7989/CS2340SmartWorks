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
    <link href="../res/style/customHeader.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <style>
        .card-columns {
            position: absolute;
            margin: 20% 10% 10% 20%;
        }

        .mb-3 {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="my_navBar">
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
    <div class="card w-auto" style="width: 18rem;">
        <img src="../res/images/<%=r.getString("deviceType")%>.jpg" class="card-img-top" alt="Alarm">
        <div class="card-body">
            <h5 class="card-title"><%=r.getString("deviceName")%>
            </h5>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Device ID : <%=r.getString(1)%>
            </li>
            <li class="list-group-item">Current Status : <%=r.getString("status")%>
            </li>
            <li class="list-group-item">
                <h3>Schedule</h3>
                <p>startTime : <%=r.getString("startTime")%>
                </p>
                <p>endTime : <%=r.getString("endTime")%>
                </p>
                <p>NOTE: Write in format YYYY-MM-DD HH:MM</p>

                <form action="./setTime.jsp" method="get">
                    <div class="input-group">

                        <input type="text" class="form-control" placeholder="2019-07-15 11:30" name="startTime"
                               aria-label="Start Time" aria-describedby="button-addon2">
                        <input type="text" class="form-control" placeholder="2019-07-18 11:45" name="endTime"
                               aria-label="End Time"
                               aria-describedby="button-addon2">
                        <%
                            request.getSession().setAttribute("deviceID", r.getString("deviceID"));
                        %>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="submit" id="button-addon1">
                                Set Time
                            </button>
                        </div>
                    </div>
                </form>
            </li>
            <li class="list-group-item">floorNumber : <%=r.getString("floorNumber")%>
                <form action="./setFloor.jsp" method="get">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Set Floor" name="floorNumber"
                               aria-label="Set Floor" aria-describedby="button-addon2">
                        <%
                            request.getSession().setAttribute("deviceID", r.getString("deviceID"));
                        %>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="submit" id="button-addon3">
                                Locate
                            </button>
                        </div>
                    </div>
                </form>
            </li>
        </ul>
        <div class="card-body">
            <a href="./switchStatus.jsp?status=<%="enabled"%>&deviceID=<%=r.getString("deviceID")%>&deviceName=<%=r.getString("deviceName")%>"
               class="card-link">Enable</a>
            <a href="./switchStatus.jsp?status=<%="disabled"%>&deviceID=<%=r.getString("deviceID")%>&deviceName=<%=r.getString("deviceName")%>"
               class="card-link">Disable</a>
        </div>
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


