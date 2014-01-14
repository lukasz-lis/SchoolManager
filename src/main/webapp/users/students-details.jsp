<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<form novalidate="novalidate" id="user-form">
    <input type="hidden" ng-model="user.role" name="role">

    <div class="form-group ">
        <label class="control-label" for="username"><fmt:message
                key="user.add.form.label.username"/></label>

        <input type="text" class="form-control" ng-model="user.username" id="username"
               placeholder='<fmt:message key="user.add.form.label.username"/>' disabled>

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
        <div class="row">
            <div class="col-md-4">
                <label class="control-label" for="city"><fmt:message
                        key="user.add.form.label.city"/></label>
                <input type="text" class="form-control" id="city" ng-model="user.adresses.city"
                       placeholder='<fmt:message key="user.add.form.label.city" />'>
            </div>
            <div class="col-md-4">
                <label class="control-label" for="postcode"><fmt:message
                        key="user.add.form.label.postcode"/></label>
                <input type="text" class="form-control" ng-model="user.adresses.postcode" id='postcode' 
                       placeholder='<fmt:message key="user.add.form.label.postcode" />'>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-6">
                <label class="control-label" for="street-name"><fmt:message
                        key="user.add.form.label.street.name"/></label>
                <input type="text" class="form-control" ng-model="user.adresses.streetName" id="street-name"
                       placeholder='<fmt:message key="user.add.form.label.street.name" />'>
            </div>
            <div class="col-md-3">
                <label class="control-label" for="street-number"><fmt:message
                        key="user.add.form.label.street.local.numer"/></label>
                <input type="text" class="form-control" ng-model="user.adresses.streetNumber"
                       id="street-number"
                       placeholder='<fmt:message key="user.add.form.label.street.local.numer" />'>
            </div>
            <div class="col-md-3">
                <label class="control-label" for="street-number"><fmt:message
                        key="user.add.form.label.street.street.numer"/></label>
                <input type="text" class="form-control" ng-model="user.adresses.localNumber" id="local-number"
                       placeholder='<fmt:message key="user.add.form.label.street.street.numer" />'>
            </div>
        </div>
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
    
</form>

<a ng-click="close()" class="btn btn-default" ><fmt:message
        key="label.close"/></a>
<a ng-click="updateUser()"  class="btn btn-primary"><fmt:message
        key="label.save"/></a>

