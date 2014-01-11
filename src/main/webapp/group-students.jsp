<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<div class="container">
    <div class="modal fade" id="group-form-modal" tabindex="-1" role="dialog" aria-labelledby="add-user-label"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="add-user-label"><fmt:message
                            key="user.add.modal.label.add.admin"/></h4>
                </div>
                <div class="modal-body">
                    <form id="group-form">


                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message
                            key="label.close"/></button>
                    <button id="form-group-submit" type="button" data-toggle="modal" class="btn btn-primary">
                        <fmt:message key="label.save"/></button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->


    <table id="list-students-table" class="table table-striped tablesorter">
        <thead>
        <tr>
            <th scope="col"><fmt:message key="group.col.list.label.name"/></th>
            <th scope="col"><fmt:message key="group.col.list.label.students"/></th>
            <th scope="col"><fmt:message key="label.delete"/></th>
        </tr>
        </thead>
        <tbody>
        </tbody>
    </table>


    <script id="table-students-template" type="text/x-jsrender">
        <tr>
            <td>{{:firstName}}</td>
            <td>{{:secName}}</td>
            <td>
                <button data-toggle="modal"
                        data-target="#group-form-modal" class="butonik btn btn-primary btn-xs"><span
                        class="glyphicon glyphicon-trash"></span></button>
            </td>
        </tr>
    </script>

</div>
