<%@ page import="java.io.PrintWriter" %>
<%@ page import="sensor.SensorDAO" %><%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 2019-07-18
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String startTime = request.getParameter("startTime");
    String endTime = request.getParameter("endTime");
    String deviceID = (String) session.getAttribute("deviceID");
    String userID = (String) session.getAttribute("userID");

    PrintWriter script;
    SensorDAO sensorDAO = new SensorDAO(userID);
    int result = sensorDAO.setTime(startTime, endTime, deviceID);

    if (result == 1) {
        script = response.getWriter();
        script.println("<script>");
        script.println("window.alert('Successfully configured Time');");
        script.printf("window.alert('Please refresh the page.');");
        script.println("history.back()");
        script.println("</script>");
        script.close();
    }
%>