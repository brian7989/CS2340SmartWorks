<%@ page import="util.Gmail" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.Properties" %>
<%
    String userEmail = request.getParameter("userEmail");
    String problemTitle = request.getParameter("problemTitle");
    String issueDescription = request.getParameter("issueDescription");

    String host = "http://localhost:8080/";
    String from = userEmail;
    String to = "brian.ts.lee.0907@gmail.com";
    String subject = problemTitle;
    String content = issueDescription;

    Properties p = new Properties();
    p.put("mail.smtp.user", from);
    p.put("mail.smtp.host", "smtp.googlemail.com");
    p.put("mail.smtp.port", "465");
    p.put("mail.smtp.starttls.enable", "true");
    p.put("mail.smtp.auth", "true");
    p.put("mail.smtp.debug", "true");
    p.put("mail.smtp.socketFactory.port", "465");
    p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    p.put("mail.smtp.socketFactory.fallback", "false");

    try {
        Authenticator auth = new Gmail();
        Session ses = Session.getInstance(p, auth);
        ses.setDebug(true);
        MimeMessage msg = new MimeMessage(ses);
        msg.setSubject(subject);
        Address fromAddr = new InternetAddress(from);
        msg.setFrom(fromAddr);
        Address toAddr = new InternetAddress(to);
        msg.addRecipient(Message.RecipientType.TO, toAddr);
        msg.setContent(content, "text/html;charset=UTF8");
        Transport.send(msg);
    } catch (Exception e) {
        e.printStackTrace();
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Database Error. " +
                "Please check configuration and try again.');");
        script.println("history.back()");
        script.println("</script>");
        script.close();
    };
%>

<html>
<head>
    <title> Email Successfully Sent </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Brian Lee">
    <meta name="description" content="Email Successfully Sent">
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
            position: relative;
        }
        .alert-success {
            position: absolute;
            margin: 10% 20%;
            width: 60%;
        }
    </style>
</head>
<body>
<div class="header">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="../js/script.js"></script>
</div>
<div class="alert alert-success" role="alert">
    Email Successfully Sent!
    SmartWorks developers will respond to you within 2~3 business days.
    Now redirecting you to Homepage...
</div>
<meta http-equiv="refresh" content="3;./HomePage.jsp" />
</body>
</html>


