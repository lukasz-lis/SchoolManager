<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <fmt:setBundle basename="message" />
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

        <script src="asset/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        <div class="container">
            <form class="form-signin form-horizontal" id="loginform" name="loginform" method="post" action="">
                <div class="form-group">
                    <input name="username" id="username" type="text" class="form-control" placeholder='<fmt:message key="login.label.username" />' required autofocus>
                </div>
                <div class="form-group">
                    <input name="password" id="password" type="password" class="form-control" placeholder='<fmt:message key="login.label.password" />' required>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input name="remeber" id="remeber" type="checkbox" value="remember-me"><fmt:message key="login.label.remeberme" />
                    </label>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary"  name="Login" type="submit"><fmt:message key="login.label.singin"></fmt:message></button>
                </div>
            </form>
        </div> <!-- /container -->       

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
        <script src="asset/js/vendor/bootstrap.min.js"></script>
        <script src="asset/js/main.js"></script>
        <script>
            var _gaq = [['_setAccount', 'UA-XXXXX-X'], ['_trackPageview']];
            (function(d, t) {
                var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
                g.src = '//www.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g, s)
            }(document, 'script'));
        </script>
    </body>
</html>