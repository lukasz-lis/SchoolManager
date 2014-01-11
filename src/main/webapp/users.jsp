<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message"/>

<t:generic-main-page>  
    <jsp:attribute name="script">
        <script>
            $(document).ready(function() {
                refreshUserList();
            });
        </script>
    </jsp:attribute>    
    <jsp:body>
        <button id="add-admin-button" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.admin"/></button>
        <button id="add-lecturer-button" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.lecturer"/></button>
        <button id="add-student-button" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.student"/></button>
        <button id="add-care-button" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.care"/></button>
        <button id="add-office-button" data-toggle="modal" data-target="#user-form-modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><fmt:message key="user.add.button.label.add.office"/></button>

        <div class="modal fade" id="user-form-modal" tabindex="-1" role="dialog" aria-labelledby="add-user-label"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="add-user-label"><fmt:message key="user.add.modal.label.add.admin"/></h4>
                    </div>
                    <div class="modal-body">
                        <form id="user-form">

                           
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><fmt:message key="label.close" /></button>
                        <button id="form-user-submit" type="button"  data-toggle="modal"  class="btn btn-primary"><fmt:message key="label.save"/></button>
                    </div>
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
                    <th scope="col"><fmt:message key="user.col.list.label.role" /></th>
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
            <td>{{:role}}</td>
            <td><button onclick="editUserButtonClick('{{:username}}')" data-toggle="modal" data-target="#user-form-modal" class="butonik btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></td>
            </tr>  
        </script>
        
        <script id="form-student-template" type="text/x-jsrender">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message
                                        key="user.add.form.label.name"/></label>
                                <input type="text" class="form-control" data-link="firstName" name="firstName" id="name"
                                       placeholder='<fmt:message key="user.add.form.label.name" />'>
                                <input type="hidden"  data-link="role" name="role" id="role">
                                               
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="username"><fmt:message
                                        key="user.add.form.label.username"/></label>  
                            {^{if username!=null }}
                                <input type="text" class="form-control" data-link="username" id="username"
                                       placeholder='<fmt:message key="user.add.form.label.username" />' disabled>                               
                                <input type="hidden" data-link="username" name="username" > 
                          {{/if}}
                             {^{if username==null }}
                                <input type="text" class="form-control id="username" name="username"
                                       placeholder='<fmt:message key="user.add.form.label.username" />'>     
                            {{/if}}                      

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
                                        <input type="text" class="form-control" id="city" data-link="adresses.city" name="adresses[0][city]"
                                               placeholder='<fmt:message key="user.add.form.label.city" />'>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="control-label" for="city"><fmt:message
                                                key="user.add.form.label.postcode"/></label>
                                        <input type="text" class="form-control" data-link="adresses.postCode" name="adresses[0][postCode]" id="postcode"
                                               placeholder='<fmt:message key="user.add.form.label.postcode" />'>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="street-name"><fmt:message
                                                key="user.add.form.label.street.name"/></label>
                                        <input type="text" class="form-control" data-link="adresses.streetName" name="adresses[0][streetName]" id="street-name"
                                               placeholder='<fmt:message key="user.add.form.label.street.name" />'>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label" for="street-number"><fmt:message
                                                key="user.add.form.label.street.local.numer"/></label>
                                        <input type="tel" class="form-control" data-link="adresses.streetNumber" name="adresses[0][streetNumber]"
                                               id="street-number"
                                               placeholder='<fmt:message key="user.add.form.label.street.local.numer" />'>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label" for="street-number"><fmt:message
                                                key="user.add.form.label.street.street.numer"/></label>
                                        <input type="tel" class="form-control" data-link="adresses.localNumber" name="localNumber" id="adresses[0][local-number]"
                                               placeholder='<fmt:message key="user.add.form.label.street.street.numer" />'>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="phone"><fmt:message
                                        key="user.add.form.label.phone.number"/></label>
                                <input type="tel" class="form-control" data-link="phoneses.phoneNumber" name="phoneses[0][phoneNumber]" id="phone"
                                       placeholder='<fmt:message key="user.add.form.label.phone.number" />'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="email"><fmt:message
                                        key="user.add.form.label.email"/></label>
                                <input type="email" class="form-control" data-link="email" name="email" id="email"
                                       placeholder='<fmt:message key="user.add.form.label.email" />'>
                            </div>  
                    {^{if username==null }}
                              <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="password"><fmt:message
                                                key="user.add.form.label.password"/></label>
                                        <input type="text" class="form-control" id="password" name="password"
                                               placeholder='<fmt:message key="user.add.form.label.password" />'>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="repeatPassword"><fmt:message
                                                key="user.add.form.label.password.repeat"/></label>
                                        <input type="text" class="form-control"  id="repeatPassword"
                                               placeholder='<fmt:message key="user.add.form.label.password.repeat" />'>
                                    </div>
                                </div>
                            </div>
                    {{/if}}
        </script>

        
        <script id="form-user-template" type="text/x-jsrender">
                            <div class="form-group ">
                                <label class="control-label" for="name"><fmt:message
                key="user.add.form.label.name"/></label>
                                <input type="text" class="form-control" data-link="firstName" name="firstName" id="name"
                                       placeholder='<fmt:message key="user.add.form.label.name" />'>
                                <input type="hidden"  data-link="role" name="role" id="role">

                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="username"><fmt:message
                key="user.add.form.label.username"/></label>
                            {^{if username!=null }}
                                <input type="text" class="form-control" data-link="username" id="username"
                                       placeholder='<fmt:message key="user.add.form.label.username" />' disabled>                               
                                <input type="hidden" data-link="username" name="username" > 
                          {{/if}}
                             {^{if username==null }}
                                <input type="text" class="form-control id="username" name="username"
                                       placeholder='<fmt:message key="user.add.form.label.username" />'>     
                            {{/if}}   
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="secname"><fmt:message
                key="user.add.form.label.secname"/></label>
                                <input type="text" class="form-control" data-link="secName" name="secName" id="secname"
                                       placeholder='<fmt:message key="user.add.form.label.secname" />'>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="phone"><fmt:message
                key="user.add.form.label.phone.number"/></label>
                                <input type="tel" class="form-control" data-link="phoneses.phoneNumber" name="phoneses[0][phoneNumber]" id="phone"
                                       placeholder='<fmt:message key="user.add.form.label.phone.number" />'>
                            </div>

                            <div class="form-group ">
                                <label class="control-label" for="email"><fmt:message
                key="user.add.form.label.email"/></label>
                                <input type="email" class="form-control" data-link="email" name="email" id="email"
                                       placeholder='<fmt:message key="user.add.form.label.email" />'>
                            </div>
                    {^{if username==null }}
                             <div class="form-group">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="password"><fmt:message
                                                key="user.add.form.label.password"/></label>
                                        <input type="text" class="form-control" id="password" name="password"
                                               placeholder='<fmt:message key="user.add.form.label.password" />'>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="repeatPassword"><fmt:message
                                                key="user.add.form.label.password.repeat"/></label>
                                        <input type="text" class="form-control"  id="repeatPassword"
                                               placeholder='<fmt:message key="user.add.form.label.password.repeat" />'>
                                    </div>
                                </div>
                            </div>
                    {{/if}}
        </script>
    </jsp:body>
</t:generic-main-page>