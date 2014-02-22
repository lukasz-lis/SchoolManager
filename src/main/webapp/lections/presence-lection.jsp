<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>


<table class="table table-striped tablesorter">
    <thead>
    <tr>
        <th scope="col"><fmt:message key="presence.col.list.label.course"/></th>
        <th scope="col"><fmt:message key="presence.col.list.label.presence"/></th>
        <th scope="col"><fmt:message key="presence.col.list.label.absent"/></th>
        <th scope="col"><fmt:message key="presence.col.list.label.late"/></th>
    </tr>
    </thead>
    <tbody>
    <tr ng-repeat="progresPerCourse in coursesToFilter() | filter:filterCourses">
        <td>{{progresPerCourse.lection.course.name}}</td>
        <td>
            <a  class="btn btn-success" >{{(presences | filter: {presened : 'o'}).length}}</a>
        </td>
        <td>
            <a  class="btn btn-danger" >{{(presences | filter: {presened : 'n'}).length}}</a>
        </td>
        <td>
            <a  class="btn btn-warning" >{{(presences | filter: {presened : 's'}).length}}</a>
        </td>
    </tr>
    </tbody>
</table>