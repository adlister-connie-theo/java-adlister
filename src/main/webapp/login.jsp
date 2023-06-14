<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<%@ include file="partials/head.jsp" %>
<body>
<%@ include file="partials/navbar.jsp" %>
<div class="container">
    <%@ include file="partials/form.jsp" %>
    <c:if test="${param.username.equals('admin') && param.password.equals('password')}">
        <meta http-equiv="Refresh" content="0; url='http://localhost:8080/profile.jsp'"/>
    </c:if>
</div>


<%@ include file="partials/scripts.jsp" %>

</body>
</html>
