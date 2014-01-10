<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<t:generic-main-page>
<jsp:attribute name="script">
        <script>
            $(document).ready(function() {
                refreshGroupList();
            });
        </script>
    </jsp:attribute>
<jsp:body>
<button id="add-group-button" data-toggle="modal" data-target="#group-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="group.add.button.label"/></button>

<div class="modal fade" id="group-form-modal" tabindex="-1" role="dialog" aria-labelledby="add-user-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="add-user-label"><fmt:message key="user.add.modal.label.add.admin"/></h4>
            </div>
            <div class="modal-body">
                <form id="group-form">


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="label.close" /></button>
                <button id="form-group-submit" type="button"  data-toggle="modal"  class="btn btn-primary"><fmt:message key="label.save"/></button>
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
        <th scope="col"><fmt:message key="group.col.list.label.name" /></th>
        <th scope="col"><fmt:message key="group.col.list.label.students" /></th>
        <th scope="col"><fmt:message key="list.label.edit" /></th>
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>

<script id="list-group-template" type="text/x-jsrender">
            <tr>
            <td>{{:name}}</td>
            <td><button onclick="editButtonClick('{{:name}}')" data-toggle="modal" data-target="#edit-user-modal" class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-list"></span></button></td>
            <td><button onclick="editGroupButtonClick('{{:name}}')" data-toggle="modal" data-target="#group-form-modal" class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></td>
            </tr>
        </script>

<script id="form-group-template" type="text/x-jsrender">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message key="group.form.label.name"/></label>
                                <input type="text" class="form-control" data-link="name" name="name"
                                       placeholder='<fmt:message key="group.form.label.name" />'>
                               
                                <input type="hidden" data-link="groupID" name="{{:groupID !=null ? 'groupID' : ''}}" >
                               
                            </div>
        </script>

</jsp:body>
</t:generic-main-page>