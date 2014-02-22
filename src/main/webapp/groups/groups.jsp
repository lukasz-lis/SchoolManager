<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<button data-toggle="modal" data-target="#group-form-modal" class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span> <fmt:message key="group.add.button.label"/></button>

<div class="modal fade" id="group-form-modal" tabindex="-1" role="dialog" aria-labelledby="group-form-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 ng-if="group.groupID == null"  class="modal-title" id="group-form-modal-label"><fmt:message
                        key="group.add.form.modal.label"/></h4>
                <h4 ng-if="group.groupID != null"  class="modal-title" id="group-form-modal-label"><fmt:message
                        key="group.edit.form.modal.label"/></h4>
            </div>
            <div class="modal-body">
                <form id="group-form">
                    <div class="form-group ">
                        <label class="control-label" for="name"><fmt:message key="group.form.label.name"/></label>
                        <input type="text" class="form-control" ng-model="group.name" name="name"
                               placeholder='<fmt:message key="group.form.label.name"/>'>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <a ng-click="close()" class="btn btn-default" data-dismiss="modal"><span
                        class="glyphicon glyphicon-remove"></span> <fmt:message
                        key="label.close"/></a>
                <a ng-if="group.groupID != null" ng-click="updateGroup()" data-toggle="modal"
                   class="btn btn-primary"><span
                        class="glyphicon glyphicon-floppy-diske"></span> <fmt:message key="label.save"/></a>
                <a ng-if="group.groupID == null" ng-click="createGroup()" data-toggle="modal"
                   class="btn btn-primary"><span
                        class="glyphicon glyphicon-floppy-disk"></span> <fmt:message key="label.save"/></a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<table id="list-group-table" class="table table-striped tablesorter">
    <thead>
    <tr>
        <th scope="col"><fmt:message key="group.col.list.label.name"/></th>
        <th scope="col"><fmt:message key="group.col.list.label.students"/></th>
        <th scope="col"><fmt:message key="list.label.edit"/></th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="group in groups">
        <td>{{group.name}}</td>
        <td>
            <a ng-click="showStudents(group.groupID)" class="butonik btn btn-primary btn-xs"><span
                    class="glyphicon glyphicon-list"></span></a>
        </td>
        <td>
            <a ng-click="editGroup(group.groupID)" data-toggle="modal"
               data-target="#group-form-modal" class="butonik btn btn-primary btn-xs"><span
                    class="glyphicon glyphicon-pencil"></span></a>
        </td>
    </tr>
    </tbody>
</table>

