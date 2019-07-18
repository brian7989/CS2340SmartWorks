<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/12/19
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html>
<head>
    <title> Customer Support </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Brian Lee">
    <meta name="description" content="Customer Support Page">
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

        #customerServiceForm {
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
<%--Contact Form--%>
<form id="customerServiceForm" method="post">
    <div class="form-group">
        <label for="userEmail">Email address</label>
        <input type="email" class="form-control" name="userEmail" id="userEmail" placeholder="name@example.com"
               required>
    </div>
    <div class="form-group">
        <label for="problemTitle">Issue Title</label>
        <input type="problemTitle" class="form-control" name="problemTitle" id="problemTitle"
               placeholder="EX: Camera Malfunction" required>
    </div>
    <div class="form-group">
        <label for="issueDescription">Issue Description</label>
        <textarea class="form-control" name="issueDescription" id="issueDescription" rows="3" required></textarea>
    </div>
    <div class="form-group"> <!-- Submit button !-->
        <button type="submit" formaction="./emailSendAction.jsp" class="btn btn-secondary btn-lg active">Submit
        </button>
    </div>
</form>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>
