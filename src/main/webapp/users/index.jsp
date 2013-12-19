<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="message" />

<t:generic-main-page>
    
    <jsp:attribute name="sidebartitle">
        <fmt:message key="sidebar.label.user.manage" />
    </jsp:attribute>
        
    <jsp:attribute name="sidebar">
        <a href="users/add.jsp" class="list-group-item"><fmt:message key="sidebar.label.user.add" /></a>
        <a href="users/users.jsp" class="list-group-item "><fmt:message key="sidebar.label.user.list" /></a>
    </jsp:attribute>
        
    <jsp:body>
        <div id="content" class="container"></div>
    </jsp:body>
        
</t:generic-main-page>