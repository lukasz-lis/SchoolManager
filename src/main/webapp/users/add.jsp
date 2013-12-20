<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message" />
<form class="form-horizontal" role="form">
    <div class="row">
        <div class="col-md-6">

            <div class="form-group ">
                <label class="col-md-4 control-label" for="name"><fmt:message key="user.add.form.label.name" /></label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="firstName" id="name" placeholder='<fmt:message key="user.add.form.label.name" />'>
                </div>
            </div>  
                
            <div class="form-group ">
                <label class="col-md-4 control-label" for="username"><fmt:message key="user.add.form.label.username" /></label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="username" id="username" placeholder='<fmt:message key="user.add.form.label.username" />'>
                </div>
            </div> 
                
            <div class="form-group">
                <label class="col-md-4 control-label" for="secname"><fmt:message key="user.add.form.label.secname" /></label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="secName" id="secname" placeholder='<fmt:message key="user.add.form.label.secname" />'>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="city"><fmt:message key="user.add.form.label.city.postcode" /></label>
                <div class="col-md-4">
                    <input type="text" class="form-control" id="city" placeholder='<fmt:message key="user.add.form.label.city" />'>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" name="postCode" id="postcode" placeholder='<fmt:message key="user.add.form.label.postcode" />'>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="phone"><fmt:message key="user.add.form.label.phone.number" /></label>
                <div class="col-md-5">
                    <input type="tel" class="form-control" name="phoneNumber" id="phone" placeholder='<fmt:message key="user.add.form.label.phone.number" />'>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="street-name"><fmt:message key="user.add.form.label.street.name" /></label>
                <div class="col-md-8">
                    <input type="text" class="form-control" name="streetName" id="street-name" placeholder='<fmt:message key="user.add.form.label.street.name" />'>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="street-number"><fmt:message key="user.add.form.label.street.number.local" /></label>
                <div class="col-md-4">
                    <input type="tel" class="form-control" name="streetNumber" id="street-number" placeholder='<fmt:message key="user.add.form.label.street.local.numer" />'>
                </div>
                <div class="col-md-4">
                    <input type="tel" class="form-control" name="localNumber" id="local-number" placeholder='<fmt:message key="user.add.form.label.street.street.numer" />'>
                </div>
            </div>

            <div class="form-group ">
                <label class="col-md-4 control-label" for="email"><fmt:message key="user.add.form.label.email" /></label>
                <div class="col-md-8">
                    <input type="email" class="form-control" name="email" id="email" placeholder='<fmt:message key="user.add.form.label.email" />'>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="password"><fmt:message key="user.add.form.label.password" /></label>
                <div class="col-md-4">
                    <input type="password" class="form-control" name="password" id="password" placeholder='<fmt:message key="user.add.form.label.password" />'>
                </div>   
                <div class="col-md-4">
                    <input type="password" class="form-control" id="password-repeat" placeholder='<fmt:message key="user.add.form.label.password.repeat" />'>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-4 col-md-4">
                    <button id="user-add-button" type="button" class="btn btn-default"><fmt:message key="user.add.form.label.add.button" /></button>
                </div>
            </div>
        </div>
    </div>
</form>
