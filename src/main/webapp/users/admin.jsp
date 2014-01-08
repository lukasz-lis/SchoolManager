<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<t:generic-main-page>  
    <jsp:attribute name="script">
        <script>
            $(document).ready(function() {
                refreshAdminList();
            });
        </script>
    </jsp:attribute>    
    <jsp:body>
        <button id="add-user-button" data-toggle="modal" data-target="#add-user-modal" class="btn btn-primary"><fmt:message key="user.add.button.label.add.admin"/></button>

        <div class="modal fade" id="add-user-modal" tabindex="-1" role="dialog" aria-labelledby="add-user-label"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="add-user-label"><fmt:message key="user.add.modal.label.add.admin"/></h4>
                    </div>
                    <form id="add-user-form" class="ajax-form" action="api/administrators" method="post">
                        <div class="modal-body">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message
                                        key="user.add.form.label.name"/></label>
                                <input type="text" class="form-control" name="firstName" id="name"
                                       placeholder='<fmt:message key="user.add.form.label.name" />'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="username"><fmt:message
                                        key="user.add.form.label.username"/></label>
                                <input type="text" class="form-control" name="username" id="username"
                                       placeholder='<fmt:message key="user.add.form.label.username" />'>

                            </div>

                            <div class="form-group">
                                <label class="control-label" for="secname"><fmt:message
                                        key="user.add.form.label.secname"/></label>
                                <input type="text" class="form-control" name="secName" id="secname"
                                       placeholder='<fmt:message key="user.add.form.label.secname" />'>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="control-label" for="city"><fmt:message
                                                key="user.add.form.label.city"/></label>
                                        <input type="text" class="form-control" id="city"
                                               placeholder='<fmt:message key="user.add.form.label.city" />'>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="control-label" for="city"><fmt:message
                                                key="user.add.form.label.postcode"/></label>
                                        <input type="text" class="form-control" name="postCode" id="postcode"
                                               placeholder='<fmt:message key="user.add.form.label.postcode" />'>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="street-name"><fmt:message
                                                key="user.add.form.label.street.name"/></label>
                                        <input type="text" class="form-control" name="streetName" id="street-name"
                                               placeholder='<fmt:message key="user.add.form.label.street.name" />'>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label" for="street-number"><fmt:message
                                                key="user.add.form.label.street.local.numer"/></label>
                                        <input type="tel" class="form-control" name="streetNumber"
                                               id="street-number"
                                               placeholder='<fmt:message key="user.add.form.label.street.local.numer" />'>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label" for="street-number"><fmt:message
                                                key="user.add.form.label.street.street.numer"/></label>
                                        <input type="tel" class="form-control" name="localNumber" id="local-number"
                                               placeholder='<fmt:message key="user.add.form.label.street.street.numer" />'>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="phone"><fmt:message
                                        key="user.add.form.label.phone.number"/></label>
                                <input type="tel" class="form-control" name="phoneNumber" id="phone"
                                       placeholder='<fmt:message key="user.add.form.label.phone.number" />'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="email"><fmt:message
                                        key="user.add.form.label.email"/></label>
                                <input type="email" class="form-control" name="email" id="email"
                                       placeholder='<fmt:message key="user.add.form.label.email" />'>
                            </div>

                            <div class="form-group">
                                <label class=" control-label" for="password"><fmt:message
                                        key="user.add.form.label.password"/></label>

                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" name="password" id="password"
                                               placeholder='<fmt:message key="user.add.form.label.password" />'>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" id="password-repeat"
                                               placeholder='<fmt:message key="user.add.form.label.password.repeat" />'>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="label.close" /></button>
                            <input id="add-user-submit" type="submit"  data-toggle="modal"  class="btn btn-primary" value="<fmt:message key='user.add.form.label.add.button'/>" >
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="edit-user-modal" tabindex="-1" role="dialog" aria-labelledby="admin-add-label"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="admin-add-label"><fmt:message key="user.add.modal.label.add.admin"/></h4>
                    </div>
                    <form id="edit-user-form" class="ajax-form" role="form" action="api/administrators" method="put">
                        <div class="modal-body">        

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="label.close" /></button>
                            <input id="edit-user-submit" type="submit"  data-toggle="modal"  class="btn btn-primary" value="<fmt:message key='user.add.form.label.add.button'/>" >
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->


        <table id="list-user-table" class="table table-striped tablesorter">
            <thead>
                <tr>
                    <th scope="col"><fmt:message key="user.col.list.label.username" /></th>
                    <th scope="col"><fmt:message key="user.col.list.label.firstName" /></th>
                    <th scope="col"><fmt:message key="user.col.list.label.secName" /></th>
                    <th scope="col"><fmt:message key="user.col.list.label.email" /></th>
                    <th scope="col"><fmt:message key="list.label.edit" /></th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>

        <script id="list-user-template" type="text/x-jsrender">
            <tr>
            <td>{{:username}}</td>                    
            <td>{{:firstName}}</td>
            <td>{{:secName}}</td>
            <td>{{:email}}</td>
            <td><button onclick="editButtonClick('{{:username}}', 'api/administrators')" data-toggle="modal" data-target="#edit-user-modal" class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></td>
            </tr>  
        </script>

        <script id="form-edit-template" type="text/x-jsrender">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message
                key="user.add.form.label.name"/></label>
                                <input type="text" class="form-control" data-link="firstName" name="firstName" id="name"
                                       placeholder='<fmt:message key="user.add.form.label.name" />'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="username"><fmt:message
                key="user.add.form.label.username"/></label>
                                <input type="text" class="form-control" data-link="username" name="username" id="username"
                                       placeholder='<fmt:message key="user.add.form.label.username" />' disabled>

                            </div>

                            <div class="form-group">
                                <label class="control-label" for="secname"><fmt:message
                key="user.add.form.label.secname"/></label>
                                <input type="text" class="form-control" data-link="secName" name="secName" id="secname"
                                       placeholder='<fmt:message key="user.add.form.label.secname" />'>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="control-label" for="city"><fmt:message
                key="user.add.form.label.city"/></label>
                                        <input type="text" class="form-control" id="city" data-link="city" name="city"
                                               placeholder='<fmt:message key="user.add.form.label.city" />'>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="control-label" for="city"><fmt:message
                key="user.add.form.label.postcode"/></label>
                                        <input type="text" class="form-control" data-link="postCode" name="postCode" id="postcode"
                                               placeholder='<fmt:message key="user.add.form.label.postcode" />'>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="street-name"><fmt:message
                key="user.add.form.label.street.name"/></label>
                                        <input type="text" class="form-control" data-link="streetName" name="streetName" id="street-name"
                                               placeholder='<fmt:message key="user.add.form.label.street.name" />'>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label" for="street-number"><fmt:message
                key="user.add.form.label.street.local.numer"/></label>
                                        <input type="tel" class="form-control" data-link="streetNumber" name="streetNumber"
                                               id="street-number"
                                               placeholder='<fmt:message key="user.add.form.label.street.local.numer" />'>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label" for="street-number"><fmt:message
                key="user.add.form.label.street.street.numer"/></label>
                                        <input type="tel" class="form-control" data-link="localNumber" name="localNumber" id="local-number"
                                               placeholder='<fmt:message key="user.add.form.label.street.street.numer" />'>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="phone"><fmt:message
                key="user.add.form.label.phone.number"/></label>
                                <input type="tel" class="form-control" data-link="phoneNumber" name="phoneNumber" id="phone"
                                       placeholder='<fmt:message key="user.add.form.label.phone.number" />'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="email"><fmt:message
                key="user.add.form.label.email"/></label>
                                <input type="email" class="form-control" data-link="email" name="email" id="email"
                                       placeholder='<fmt:message key="user.add.form.label.email" />'>
                            </div>          
        </script>

    </jsp:body>
</t:generic-main-page>