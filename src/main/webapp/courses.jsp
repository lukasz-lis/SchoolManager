<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<t:generic-main-page>
<jsp:attribute name="script">
        <script>
            $(document).ready(function() {
                refreshCourseList();
            });
        </script>
    </jsp:attribute>
<jsp:body>
<button id="add-course-button" data-toggle="modal" data-target="#course-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="course.add.button.label"/></button>

<div class="modal fade" id="course-form-modal" tabindex="-1" role="dialog" aria-labelledby="add-user-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="add-user-label"><fmt:message key="user.add.modal.label.add.admin"/></h4>
            </div>
            <div class="modal-body">
                <form id="course-form">


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="label.close" /></button>
                <button id="form-course-submit" type="button"  data-toggle="modal"  class="btn btn-primary"><fmt:message key="label.save"/></button>
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
        <th scope="col"><fmt:message key="course.col.list.label.name" /></th>
        <th scope="col"><fmt:message key="course.col.list.label.students" /></th>
        <th scope="col"><fmt:message key="list.label.edit" /></th>
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>

<script id="list-course-template" type="text/x-jsrender">
            <tr>
            <td>{{:name}}</td>
            <td><button onclick="editButtonClick('{{:name}}')" data-toggle="modal" data-target="#course-form-modal" class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-list"></span></button></td>
            <td><button onclick="editCourseButtonClick('{{:name}}')" data-toggle="modal" data-target="#course-form-modal" class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></td>
            </tr>
        </script>

<script id="form-course-template" type="text/x-jsrender">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message key="course.form.label.name"/></label>
                                <input type="text" class="form-control" data-link="name" name="name"
                                       placeholder='<fmt:message key="course.form.label.name" />'>
                               {^{if name!=null }}
                                <input type="hidden" data-link="courseID" name="{{:courseID !=null ? 'courseID' : ''}}" >
                               {{/if}}
                            </div>
        </script>

</jsp:body>
</t:generic-main-page>