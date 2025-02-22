<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>

<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Update your Ad</h1>
    <c:forEach var="ad" items="${ads}">

        <form action="/ads/update" method="post">
            <div class="form-group">
                <input type="hidden" name="adId" value="${ad.id}">
                <label for="title">Title</label>
                <textarea id="title" name="title" class="form-control" type="text">${ad.title}</textarea>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </c:forEach>

</div>
</body>
</html>
