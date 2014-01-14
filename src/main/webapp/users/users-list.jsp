<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<a ng-click="createUser('ADMIN')" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.admin"/></a>
<a ng-click="createUser('LECTURER')" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.lecturer"/></a>
<a ng-click="createStudent()" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.student"/></a>
<a ng-click="createUser('CARE')"data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.care"/></a>
<a ng-click="createUser('OFFICE')" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span
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
            <a ng-if="user.role != 'STUDENT'" ng-click="editUser(user.userID)" data-toggle="modal"
                    data-target="#user-form-modal"
                    class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a ng-if="user.role == 'STUDENT'" ng-click="editStudent(user.userID)" data-toggle="modal"
                    data-target="#user-form-modal"
                    class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
        </td>
    </tr>

    </tbody>
</table>