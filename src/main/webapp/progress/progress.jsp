<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<div class="modal fade" id="progress-form-modal" tabindex="-1" role="dialog" aria-labelledby="progress-form-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="progress-form-modal-label"><fmt:message
                        key="progress.add.form.modal.label"/></h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group ">
                                <label class="control-label" for="course"><fmt:message key="progress.add.form.label.course"/></label>
                                <select ng-model="progress.course" id="course" class="form-control"
                                        ng-options="course as course.name for course in courses">
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group ">
                                <label class="control-label" for="progress"><fmt:message key="progress.add.form.label.progress"/></label>
                                <input type="text" class="form-control" ng-model="progress.progress" name="progress"
                                       placeholder='<fmt:message key="progress.add.form.label.progress"/>'>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group ">
                                <label class="control-label" for="note"><fmt:message key="progress.add.form.label.note"/></label>
                                <input type="text" class="form-control" ng-model="progress.note" name="note"
                                       placeholder='<fmt:message key="progress.add.form.label.note"/>'>
                            </div>
                        </div>
                    </div>
                </form>

                <table class="table table-striped tablesorter">
                    <thead>
                        <tr>
                            <th scope="col"><fmt:message key="progress.add.form.label.course"/></th>
                            <th scope="col"><fmt:message key="progress.add.form.label.progress"/></th>
                            <th scope="col"><fmt:message key="progress.add.form.label.note"/></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="progress in prog">
                            <td>{{progress.course.name}}</td>
                            <td>{{progress.progress}}</td>
                            <td>{{progress.note}}</td>

                        </tr>
                    </tbody>
                </table>

            </div>
            <div class="modal-footer">
                <a ng-click="close()" class="btn btn-default" data-dismiss="modal"><span
                        class="glyphicon glyphicon-remove"></span> <fmt:message
                        key="label.close"/></a>
                <a ng-click="saveProgress()" data-toggle="modal"
                   class="btn btn-primary"><span
                        class="glyphicon glyphicon-floppy-diske"></span> <fmt:message key="label.save"/></a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="col-md-4">
    <form>
        <div class="form-group ">
            <label class="control-label" for="group"><fmt:message key="lection.form.label.groupe"/></label>
            <select ng-model="group" id="group" class="form-control"
                    ng-options="group as group.name for group in groups">
            </select>
        </div>
    </form>
</div>

<table class="table table-striped tablesorter">
    <thead>
        <tr>
            <th scope="col"><fmt:message key="user.col.list.label.firstName"/></th>
            <th scope="col"><fmt:message key="user.col.list.label.secName"/></th>
            <th scope="col"><fmt:message key="progress.col.list.label.progres"/></th>
            <th scope="col"><fmt:message key="progress.col.list.label.add"/></th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="stud in students">
            <td>{{stud.student.firstName}}</td>
            <td>{{stud.student.secName}}</td>
            <td>
                <a  class="btn btn-success" data-toggle="tooltip" ng-repeat="prog in stud.progress" title="{{prog.note}}">{{prog.progress}}</a>
            </td>
            <td>
                <a ng-click="addProgress(stud.student)" data-toggle="modal" data-target="#progress-form-modal" class="butonik btn btn-primary btn-xs"><span
                        class="glyphicon glyphicon-list"></span></a>
            </td>      
        </tr>
    </tbody>
</table>