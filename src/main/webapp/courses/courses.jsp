<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<button data-toggle="modal" data-target="#course-form-modal" class="btn btn-primary">
    <span class="glyphicon glyphicon-plus"></span><fmt:message key="course.add.button.label"/></button>

<div class="modal fade" id="course-form-modal" tabindex="-1" role="dialog" aria-labelledby="add-user-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="add-user-label"><fmt:message
                        key="user.add.modal.label.add.admin"/></h4>
            </div>
            <div class="modal-body">
                <form id="course-form">
                    <div class="form-group ">
                        <label class="control-label" for="name"><fmt:message key="course.form.label.name"/></label>
                        <input type="text" class="form-control" ng-model="course.name" name="name"
                               placeholder='<fmt:message key="course.form.label.name"/>'>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <a ng-click="close()" class="btn btn-default" data-dismiss="modal"><fmt:message
                        key="label.close"/></a>
                <a ng-if="course.courseID != null" ng-click="updateCourse()" data-toggle="modal" class="btn btn-primary">
                    <fmt:message key="label.save"/></a>
                <a ng-if="course.courseID == null" ng-click="createCourse()" data-toggle="modal" class="btn btn-primary">
                    <fmt:message key="label.save"/></a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<table id="list-course-table" class="table table-striped tablesorter">
    <thead>
    <tr>
        <th scope="col"><fmt:message key="course.col.list.label.name"/></th>
        <th scope="col"><fmt:message key="course.col.list.label.students"/></th>
        <th scope="col"><fmt:message key="list.label.edit"/></th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="course in courses">
        <td>{{course.name}}</td>
        <td>
            <a ng-click="showLecturers(course.courseID)" class="btn btn-primary btn-xs"><span
                    class="glyphicon glyphicon-list"></span>
            </a>
        </td>
        <td>
            <a ng-click="editCourse(course.courseID)" data-toggle="modal"
               data-target="#course-form-modal" class="butonik btn btn-primary btn-xs"><span
                    class="glyphicon glyphicon-pencil"></span></a>
        </td>
    </tr>
    </tbody>
</table>