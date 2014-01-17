<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<button ng-click="showStudents()" data-toggle="modal" data-target="#add-student-group-modal"
        class="btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span> <fmt:message key="group.students.add.button.label"/></button>
<a ng-click="saveStudents()" class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> <fmt:message
        key="label.save"/></a>
<a ng-click="back()" class="btn btn-primary"><span class="glyphicon glyphicon-ban-circle"></span> <fmt:message
        key="label.cancel"/></a>


<div class="modal fade" id="add-student-group-modal" tabindex="-1" role="dialog"
     aria-labelledby="group-students-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="group-students-modal-label"><fmt:message
                        key="group.students.add.modal.label"/></h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col"><fmt:message key="user.col.list.label.firstName"/></th>
                        <th scope="col"><fmt:message key="user.col.list.label.secName"/></th>
                        <th scope="col"><fmt:message key="label.add"/></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="student in students">
                        <td>{{student.firstName}}</td>
                        <td>{{student.secName}}</td>
                        <td>
                            <a ng-click="addStudent($index)" class="btn btn-primary btn-xs"><span
                                    class="glyphicon glyphicon-plus"></span></a>
                        </td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="modal-footer">
                <a ng-click="close()" class="btn btn-default" data-dismiss="modal"><span
                        class="glyphicon glyphicon-remove"></span> <fmt:message key="label.close"/></a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<table class="table table-striped tablesorter">
    <thead>
    <tr>
        <th scope="col"><fmt:message key="user.col.list.label.firstName"/></th>
        <th scope="col"><fmt:message key="user.col.list.label.secName"/></th>
        <th scope="col"><fmt:message key="label.delete"/></th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="gstudent in group.students">
        <td>{{gstudent.firstName}}</td>
        <td>{{gstudent.secName}}</td>
        <td>
            <a ng-click="deleteStudent($index)" class="btn btn-primary btn-xs"><span
                    class="glyphicon glyphicon-trash"></span></a>
        </td>
    </tr>
    </tbody>
</table>
