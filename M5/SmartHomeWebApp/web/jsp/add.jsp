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
<%@ page import="java.io.PrintWriter" %>
<%
    String deviceName = request.getParameter("deviceName");
    String deviceType = request.getParameter("deviceType");
    PrintWriter script;
    String userID = (String) session.getAttribute("userID");
    SensorDAO sensorDAO = new SensorDAO(userID);
    int result = sensorDAO.addSensor(deviceName, deviceType);
    if (result == 1) {
        script = response.getWriter();
        script.println("<script>");
        script.println("window.alert('Successfully Added');");
        script.println("window.location.href='./HomePage.jsp';");
        script.println("</script>");
        script.close();
    }
%>;