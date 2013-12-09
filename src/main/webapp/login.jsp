<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericpage>
    <jsp:body>
        <div class="container">

            <form class="form-signin form-horizontal" id="loginform" name="loginform" method="post" action="">
                <div class="form-group">
                    <input name="username" id="username" type="text" class="form-control" placeholder="Email address" required autofocus>
                </div>
                <div class="form-group">
                    <input name="password" id="password" type="password" class="form-control" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input name="remeber" id="remeber" type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary"  name="Login" type="submit">Sign in</button>
                </div>
            </form>
        </div>
    </jsp:body>
</t:genericpage>
