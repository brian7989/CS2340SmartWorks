<%@ page import="sensor.SensorDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 2019-07-18
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String floorNumber = request.getParameter("floorNumber");
    String deviceID = (String)request.getSession().getAttribute("deviceID");
    System.out.println(deviceID);
    PrintWriter script;
    String userID = (String) session.getAttribute("userID");
    SensorDAO sensorDAO = new SensorDAO(userID);
    int result = sensorDAO.setFloor(floorNumber, deviceID);
    if (result == -1) {
        script = response.getWriter();
        script.println("<script>");
        script.println("window.alert('Error. Please try again later.');");
        script.println("history.back()");
        script.println("</script>");
        script.close();
    } else {
        script = response.getWriter();
        script.println("<script>");
        script.printf("window.alert('Successfully configured floor.');");
        script.printf("window.alert('Please refresh the page.');");
        script.println("history.back()");
        script.println("</script>");
        script.close();
    }
%>