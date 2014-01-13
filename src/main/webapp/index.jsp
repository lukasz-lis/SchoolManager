<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<!DOCTYPE html>
<!--[if lt IE 7]> <html subject="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html subject="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html subject="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html  ng-app="kujon"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="asset/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="asset/css/main.css">
    <script src="asset/js/vendor/angular/angular.min.js"></script>
    <script src="asset/js/vendor/angular/angular-route.js"></script>
    <script src="asset/js/vendor/angular/angular-resource.js"></script>
    <script src="asset/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
<!--[if lt IE 7]>
<p subject="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to
    improve your experience.</p>
<![endif]-->

<div class="modal fade" id="please-wait-dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4><fmt:message key="label.inprogress"/></h4>
            </div>
            <div class="modal-body">
                <div class="progress progress-striped active">
                    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                         aria-valuemax="100" style="width: 100%">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<header>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><fmt:message key="school.manager"/></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#"><fmt:message key="navi.label.desktop"/></a></li>
                    <li><a href="#about"><fmt:message key="navi.label.reports"/></a></li>
                    <li><a href="#contact"><fmt:message key="navi.label.stats"/></a></li>
                    <li><a href="#/users"><fmt:message key="navi.label.users"/></a></li>
                    <li><a href="group"><fmt:message key="navi.label.groups"/></a></li>
                    <li><a href="course"><fmt:message key="navi.label.courses"/></a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"/></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-bell"/></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-tasks"/></a></li>
                </ul>
            </div>
            <!--/.navbar-collapse -->
        </div>
    </div>
</header>

<section id="page">
    <div class="container">
        <div ng-view></div>
    </div>
</section>


<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
<script src="asset/js/vendor/bootstrap.min.js"></script>
<script src="asset/js/vendor/jquery.serializeJSON.min.js"></script>
<script src="asset/js/vendor/ng-table.js"></script>


<script src="asset/js/functions.js"></script>
<script src="asset/js/main.js"></script>
<script src="asset/js/app.js"></script>
<script src="asset/js/models.js"></script>
<script src="asset/js/services.js"></script>
<script src="asset/js/controllers.js"></script>
<script src="asset/js/routes.js"></script>
</head>

<script>
    var _gaq = [
        ['_setAccount', 'UA-XXXXX-X'],
        ['_trackPageview']
    ];
    (function (d, t) {
        var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
        g.src = '//www.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g, s)
    }(document, 'script'));
</script>
</body>
</html>