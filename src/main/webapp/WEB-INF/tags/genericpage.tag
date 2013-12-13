<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="asset/css/bootstrap.css">
    <link rel="stylesheet" href="asset/css/main.css">

</head>
<body>
<div id="body">
    <jsp:doBody/>
</div>

<script src="https://code.jquery.com/jquery.js"></script>
<script src="asset/js/bootstrap.js"></script>
</body>
</html>