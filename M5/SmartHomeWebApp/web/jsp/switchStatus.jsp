<%@ page import="java.io.PrintWriter" %>
<%@ page import="sensor.SensorDAO" %>

<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 2019-07-18
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>


<%
    String status = request.getParameter("status");
    String deviceID = request.getParameter("deviceID");
    String deviceName = request.getParameter("deviceName");
    String userID = (String) session.getAttribute("userID");
    SensorDAO sensorDAO = new SensorDAO(userID);
    int result = sensorDAO.setStatus(status, deviceID);
    if (result == -1) {
        PrintWriter script;
        script = response.getWriter();
        script.println("<script>");
        script.println("window.alert('Error. Please try again later.');");
        script.println("history.back()");
        script.println("</script>");
        script.close();
    } else {
        PrintWriter script;
        script = response.getWriter();
        script.println("<script>");
        script.printf("window.alert('Successfully altered status for %s. Redirecting you to previous page.');", deviceName);
        script.println("window.alert('Please refresh the page.');");
        script.println("history.back()");
        script.println("</script>");
        script.close();
    }

%>
