<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/12/19
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
</html>
<html>
<head>
    <title> Add Sensor </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Brian Lee">
    <meta name="description" content="Add Sensor page">
    <meta name="author" content="Brian Lee">
    <meta http-equiv="refresh" content="600">
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
    <%--No way to resolve CSS conflict here. Causes font degradation--%>
    <%--Bootstrap CSS --%>
    <style>
        .header {
            position: absolute;
        }

        .bg-white {
            position: absolute;
            margin-top: 10%;
            margin-left: 35%;
        }

    </style>
</head>
<body>
<div class="my_navBar">
    <script src="../js/script.js"></script>
</div>

<div class="jumbotron bg-white">
    <h1 class="display-3">Hello, user!</h1>
    <p class="lead">Here, you can add your new sensors</p>
    <hr class="my-4">
    <p>Please enter the NAME and TYPE of your new sensor in the indicated fields</p>
    <form action="./add.jsp">
        <div class="form-group">
            <label for="exampleFormControlInput1">Name of Your New Sensor</label>
            <input type="device" class="form-control" id="exampleFormControlInput1" placeholder="EX: SmartIoT" name="deviceName" required>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Select Sensor Type</label>
            <select class="form-control" id="exampleFormControlSelect1" name="deviceType">
                <option>Light</option>
                <option>Camera</option>
                <option>Speaker</option>
            </select>
        </div>
        <div class="form-group"> <!-- Submit button !-->
            <button type="submit" class="btn btn-secondary btn-lg active">Submit</button>
        </div>
    </form>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>
