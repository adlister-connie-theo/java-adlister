<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<%@ include file="partials/head.jsp" %>
<body class="container">
<%@ include file="partials/navbar.jsp" %>

<%@ include file="partials/form.jsp" %>
<c:if test="${param.username == 'admin'}">
    <meta http-equiv="Refresh" content="0; url='http://localhost:8080/profile.jsp'" />
</c:if>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
