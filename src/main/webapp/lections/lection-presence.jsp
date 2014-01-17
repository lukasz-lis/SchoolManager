<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<form>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group ">
                <label class="control-label" for="subject"><fmt:message key="lection.form.label.subject"/></label>
                <input type="text" class="form-control" ng-model="lection.subject" name="subject"
                       placeholder='<fmt:message key="lection.form.label.subject"/>'>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group ">
                <label class="control-label" for="course"><fmt:message key="lection.form.label.course"/></label>
                <select ng-model="lection.course" id="course" class="form-control"
                        ng-options="course as course.name for course in courses">
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group ">
                <label class="control-label" for="group"><fmt:message key="lection.form.label.groupe"/></label>
                <select ng-model="lection.group" id="group" class="form-control" ng-options="group as group.name for group in groups">
                </select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group ">
                <label class="control-label" for="description"><fmt:message
                        key="lection.form.label.description"/></label>
                <textarea rows="3" class="form-control" ng-model="lection.description" name="description"
                          placeholder='<fmt:message key="lection.form.label.description"/>'></textarea>
            </div>
        </div>
    </div>
</form>

<a ng-click="seeWhatIsChoose()" class="butonik btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span> <fmt:message key="lection.add.button.label"/></a>

<table class="table table-striped tablesorter">
    <thead>
    <tr>
        <th scope="col"><fmt:message key="user.col.list.label.firstName"/></th>
        <th scope="col"><fmt:message key="user.col.list.label.secName"/></th>
        <th scope="col"><fmt:message key="lection.col.list.label.presence"/></th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="gstudent in lection.group.students">
        <td>{{gstudent.firstName}}</td>
        <td>{{gstudent.secName}}</td>
        <td>
            <a ng-click="deleteStudent($index)" class="btn btn-primary btn-xs"><span
                    class="glyphicon glyphicon-trash"></span></a>
        </td>
    </tr>
    </tbody>
</table>
