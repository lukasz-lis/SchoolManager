<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<form novalidate="novalidate" id="user-form">
    <input type="hidden" ng-model="user.role" name="role">

    <div class="form-group "  ng-class="{ 'has-error' : password.oldPassword.$invalid && !password.oldPassword.$pristine }">
        <label class="control-label" for="username"><fmt:message
                key="user.add.form.label.username"/></label>

        <input type="text" class="form-control" ng-model="password.oldPassword"
               placeholder='<fmt:message key="user.add.form.label.username"/>' required>
        <p ng-show="password.oldPassword.$invalid && !password.oldPassword.$pristine" class="help-block">You name is required.</p>
    </div>

    <div class="form-group "  ng-class="{ 'has-error' :password.newPassword.$invalid && !password.newPassword.$pristine }">
        <label class="control-label" for="username"><fmt:message
                key="user.add.form.label.username"/></label>

        <input type="text" class="form-control" ng-model="password.newPassword"
               placeholder='<fmt:message key="user.add.form.label.username"/>' required>
        <p ng-show="password.newPassword.$invalid && !password.newPassword.$pristine" class="help-block">You name is required.</p>
    </div>

    <div class="form-group "  ng-class="{ 'has-error' : password.repeatPassword.$invalid && !password.repeatPassword.$pristine }">
        <label class="control-label" for="username"><fmt:message
            key="user.add.form.label.username"/></label>

        <input type="text" class="form-control" ng-model="password.repeatPassword"
               placeholder='<fmt:message key="user.add.form.label.username"/>' required>
        <p ng-show="password.repeatPassword.$invalid && !password.repeatPassword.$pristine" class="help-block">You name is required.</p>
    </div>

</form>

<a ng-click="close()" class="btn btn-default" ><fmt:message
        key="label.close"/></a>
<a ng-click="updateUser()"  class="btn btn-primary"><fmt:message
        key="label.save"/></a>

