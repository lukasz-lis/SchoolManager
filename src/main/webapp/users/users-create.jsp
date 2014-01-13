<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<form id="user-form">
    <input type="hidden" ng-model="user.role" name="role">

    <div class="form-group ">
        <label class="control-label" for="username"><fmt:message
                key="user.add.form.label.username"/></label>

        <input type="text" class="form-control" ng-model="user.username" id="username"
               placeholder='<fmt:message key="user.add.form.label.username"/>'>

    </div>

    <div class="form-group ">
        <label class="control-label" for="name"><fmt:message
                key="user.add.form.label.name"/></label>
        <input type="text" class="form-control" ng-model="user.firstName" name="firstName" id="name"
               placeholder='<fmt:message key="user.add.form.label.name"/>'>
    </div>

    <div class="form-group">
        <label class="control-label" for="secname"><fmt:message
                key="user.add.form.label.secname"/></label>
        <input type="text" class="form-control" ng-model="user.secName" name="secName" id="secname"
               placeholder='<fmt:message key="user.add.form.label.secname"/>'>
    </div>

    <div class="form-group">
        <label class="control-label" for="phone"><fmt:message
                key="user.add.form.label.phone.number"/></label>
        <input type="tel" class="form-control" ng-model="user.phoneses.phoneNumber"
               name="phoneses[0][phoneNumber]" id="phone"
               placeholder='<fmt:message key="user.add.form.label.phone.number"/>'>
    </div>

    <div class="form-group ">
        <label class="control-label" for="email"><fmt:message
                key="user.add.form.label.email"/></label>
        <input type="email" class="form-control" ng-model="user.email" name="email" id="email"
               placeholder='<fmt:message key="user.add.form.label.email"/>'>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-6">
                <label class="control-label" for="password"><fmt:message
                        key="user.add.form.label.password"/></label>
                <input type="text" class="form-control" id="password" ng-model="user.password" name="password"
                       placeholder='<fmt:message key="user.add.form.label.password"/>'>
            </div>
            <div class="col-md-6">
                <label class="control-label" for="repeatPassword"><fmt:message
                        key="user.add.form.label.password.repeat"/></label>
                <input type="text" class="form-control" id="repeatPassword"
                       placeholder='<fmt:message key="user.add.form.label.password.repeat"/>'>
            </div>
        </div>
    </div>
</form>

<button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message
        key="label.close"/></button>
<a ng-click="createUser()" id="form-user-submit" data-toggle="modal" class="btn btn-primary"><fmt:message
        key="label.save"/></a>


