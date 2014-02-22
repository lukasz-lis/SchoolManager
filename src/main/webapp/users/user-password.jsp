<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<form class="col-md-4" novalidate="novalidate" id="user-form">

    <div class="form-group "  ng-class="{ 'has-error' : password.oldPassword.$invalid && !password.oldPassword.$pristine }">
        <label class="control-label" for="username"><fmt:message
                key="password.old"/></label>

        <input type="password" class="form-control" ng-model="password.oldPassword" required>
        <p ng-show="password.oldPassword.$invalid && !password.oldPassword.$pristine" class="help-block"><fmt:message
                key="password.req.old"/></p>
    </div>

    <div class="form-group "  ng-class="{ 'has-error' :password.newPassword.$invalid && !password.newPassword.$pristine }">
        <label class="control-label" for="username"><fmt:message
                key="password.new"/></label>

        <input type="password" class="form-control" ng-model="password.newPassword" required>
        <p ng-show="password.newPassword.$invalid && !password.newPassword.$pristine" class="help-block"><fmt:message
                key="password.req.new"/></p>
    </div>

    <div class="form-group "  ng-class="{ 'has-error' : password.repeatPassword.$invalid && !password.repeatPassword.$pristine }">
        <label class="control-label" for="username"><fmt:message
            key="password.repeat"/></label>

        <input type="password" class="form-control" ng-model="password.repeatPassword" required>
        <p ng-show="password.repeatPassword.$invalid && !password.repeatPassword.$pristine" class="help-block"><fmt:message
                key="password.req.repeat"/></p>
    </div>

</form>

<a href="#/" class="btn btn-default" ><fmt:message
        key="label.close"/></a>
<a ng-click="updateUser()"  class="btn btn-primary"><fmt:message
        key="label.save"/></a>

