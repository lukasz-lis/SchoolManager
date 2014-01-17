<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<a ng-click="newLection()" class="butonik btn btn-primary"><span
        class="glyphicon glyphicon-plus"></span> <fmt:message key="lection.add.button.label"/></a>

<table id="list-group-table" class="table table-striped tablesorter">
    <thead>
        <tr>
            <th scope="col"><fmt:message key="lection.col.list.label.subject"/></th>
            <th scope="col"><fmt:message key="lection.col.list.label.course"/></th>
            <th scope="col"><fmt:message key="lection.col.list.label.group"/></th>
            <th scope="col"><fmt:message key="lection.col.list.label.details"/></th>
        </tr>
    </thead>
    <tbody>
        <tr ng-repeat="lection in lections">
            <td>{{lection.subject}}</td>
            <td>{{lection.course.name}}</td>
            <td>{{lection.group.name}}</td>
            <td>
                <a ng-click="showStudents(lection.lectionID)" class="butonik btn btn-primary btn-xs"><span
                        class="glyphicon glyphicon-list"></span></a>
            </td>      
        </tr>
    </tbody>
</table>

