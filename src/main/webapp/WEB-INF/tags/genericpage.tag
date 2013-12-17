<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="asset/css/bootstrap.css">
        <link rel="stylesheet" href="asset/css/main.css">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">Profile</a></li>
                        <li><a href="#">Messages</a></li>
                    </ul>
                </div>
                <div class="col-md-8">
                    <jsp:doBody/>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery.js"></script>
        <script src="asset/js/bootstrap.js"></script>
    </body>
</html>