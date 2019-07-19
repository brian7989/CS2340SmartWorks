<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 2019-07-18
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    PrintWriter script;
    session.setAttribute("userID", null);
    script = response.getWriter();
    script.println("<script>");
    script.println("location.href = '../index.jsp'");
    script.println("</script>");
    script.close();
%>