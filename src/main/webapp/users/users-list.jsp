<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<a ng-click="createUser('ADMIN')" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.admin"/></a>
<a ng-click="createUser()" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.lecturer"/></a>
<a ng-click="createUser()" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.student"/></a>
<a ng-click="createUser()"data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.care"/></a>
<a ng-click="createUser()" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.office"/></a>


<table id="list-user-table" class="table table-striped tablesorter">
    <thead>
    <tr>
        <th scope="col"><fmt:message key="user.col.list.label.username"/></th>
        <th scope="col"><fmt:message key="user.col.list.label.firstName"/></th>
        <th scope="col"><fmt:message key="user.col.list.label.secName"/></th>
        <th scope="col"><fmt:message key="user.col.list.label.email"/></th>
        <th scope="col"><fmt:message key="user.col.list.label.role"/></th>
        <th scope="col"><fmt:message key="list.label.edit"/></th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="user in users">
        <td>{{user.username}}</td>
        <td>{{user.firstName}}</td>
        <td>{{user.secName}}</td>
        <td>{{user.email}}</td>
        <td>{{user.role}}</td>
        <td>
            <a ng-click="showUser(user.userID)" data-toggle="modal"
                    data-target="#user-form-modal"
                    class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
        </td>
    </tr>

    </tbody>
</table>


<script id="form-user-template" type="text/x-jsrender">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message
        key="user.add.form.label.name"/></label>
                                <input type="text" class="form-control" data-link="firstName" name="firstName" id="name"
                                       placeholder='<fmt:message key="user.add.form.label.name"/>'>
                                <input type="hidden"  data-link="role" name="role" id="role">

                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="username"><fmt:message
        key="user.add.form.label.username"/></label>
                            {^{if username!=null }}
                                <input type="text" class="form-control" data-link="username" id="username"
                                       placeholder='<fmt:message key="user.add.form.label.username"/>' disabled>
                                <input type="hidden" data-link="username" name="username" > 
                          {{/if}}
                             {^{if username==null }}
                                <input type="text" class="form-control id="username" name="username"
                                       placeholder='<fmt:message key="user.add.form.label.username"/>'>
                            {{/if}}   
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="secname"><fmt:message
        key="user.add.form.label.secname"/></label>
                                <input type="text" class="form-control" data-link="secName" name="secName" id="secname"
                                       placeholder='<fmt:message key="user.add.form.label.secname"/>'>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="phone"><fmt:message
        key="user.add.form.label.phone.number"/></label>
                                <input type="tel" class="form-control" data-link="phoneses.phoneNumber" name="phoneses[0][phoneNumber]" id="phone"
                                       placeholder='<fmt:message key="user.add.form.label.phone.number"/>'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="email"><fmt:message
        key="user.add.form.label.email"/></label>
                                <input type="email" class="form-control" data-link="email" name="email" id="email"
                                       placeholder='<fmt:message key="user.add.form.label.email"/>'>
                            </div>
                    {^{if username==null }}
                             <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="password"><fmt:message
        key="user.add.form.label.password"/></label>
                                        <input type="text" class="form-control" id="password" name="password"
                                               placeholder='<fmt:message key="user.add.form.label.password"/>'>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="repeatPassword"><fmt:message
        key="user.add.form.label.password.repeat"/></label>
                                        <input type="text" class="form-control"  id="repeatPassword"
                                               placeholder='<fmt:message key="user.add.form.label.password.repeat"/>'>
                                    </div>
                                </div>
                            </div>
                    {{/if}}






</script>
