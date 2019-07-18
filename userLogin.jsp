<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Author: Brian Lee
  Date: 7/1/19
  Time: 1:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%
    String userID = request.getParameter("userID");
    String userPW = request.getParameter("userPW");
    PrintWriter script;
    UserDAO userDAO = new UserDAO();
    int result = userDAO.login(userID, userPW);
    switch (result) {
        case -2:
            script = response.getWriter();
            script.println("<script>");
            script.println("alert('Database Error. " +
                    "Please check configuration and try again.');");
            script.println("history.back()");
            script.println("</script>");
            script.close();
            break;
        case -1:
            script = response.getWriter();
            script.println("<script>");
            script.println("alert('ID not found. Please Register');");
            script.println("history.back()");
            script.println("</script>");
            script.close();
            break;
        case 0:
            script = response.getWriter();
            script.println("<script>");
            script.println("alert('Your Password Does not match!');");
            script.println("history.back()");
            script.println("</script>");
            script.close();
            break;
        case 1:
            session.setAttribute("userID", userID);
            script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'HomePage.jsp'");
            script.println("</script>");
            script.close();
            break;
    }
%>