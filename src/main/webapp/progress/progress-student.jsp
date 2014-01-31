<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<table class="table table-striped tablesorter">
    <thead>
        <tr>
            <th scope="col"><fmt:message key="user.col.list.label.firstName"/></th>
            <th scope="col"><fmt:message key="user.col.list.label.secName"/></th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="progresPerCourse in coursesToFilter() | filter:filterCourses">
            <td>{{progresPerCourse.course.name}}</td>
            <td>
                <a  class="btn btn-success" data-toggle="tooltip" ng-repeat="prog in progress | filter:{course: progresPerCourse.course}" title="{{prog.note}}">{{prog.progress}}</a>
            </td>
        </tr>
    </tbody>
</table>