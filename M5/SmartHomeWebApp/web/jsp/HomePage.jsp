<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/1/19
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <title> Welcome Screen </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../res/style/customHeader.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

</head>
<body>

<div class="my_navBar">
    <script src="../js/script.js"></script>
</div>


<header>
    <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active" style="background-image: url('../res/images/smartHomeOne.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h2 class="display-4">Brian Lee</h2>
                    <p class="lead">Full Stack, Project Leader</p>
                </div>
            </div>
            <div class="carousel-item" style="background-image: url('../res/images/smartHomeTwo.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h2 class="display-4">Albert Xing</h2>
                    <p class="lead">Front-end UI</p>
                </div>
            </div>
            <div class="carousel-item" style="background-image: url('../res/images/smartHomeThree.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h2 class="display-4">Jay Jagaarnath</h2>
                    <p class="lead">Supporter</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<h1 id="welcomeTxt">
    Welcome <%=(String) session.getAttribute("userID")%>, to our CS2340 SmartWorks Project
</h1>


<!-- Page Content -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Add Sensor</h5>
                        <p class="card-text">Here, the users will be able to add their own sensors.</p>
                        <a href="./addSensor.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">View/Configure</h5>
                        <p class="card-text">Here, the users will be able to view and configure their personal
                            devices.</p>
                        <a href="./viewStatus.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Customer Service</h5>
                        <p class="card-text">If you are having any technical problems, you can contact us via the
                            provided
                            form.</p>
                        <a href="./Support.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Logout</h5>
                        <p class="card-text">A simple logout redirection. Bye bye!</p>
                        <a href="./Logout.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>


</html>

