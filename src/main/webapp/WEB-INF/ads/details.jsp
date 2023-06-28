<%--
  Created by IntelliJ IDEA.
  User: consuellamoore
  Date: 6/27/23
  Time: 3:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details Page"/>
    </jsp:include>
    <%--    <link rel="stylesheet" type="text/css" href="/css/styles.css">--%>
</head>

<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<h1>This is the Ads Detail Page</h1>
<div>
    <form>
        <c:forEach var="ad" items="${ads}">
            <div class="card" style="width: 18rem;">
                <img src="https://images.unsplash.com/photo-1604043705156-f448129cd111?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <div class="col-md-6">
                        <h2>${ad.title}</h2>
                        <p>${ad.description}</p>
                    </div>

                        <%--        <form action="/ads/details" method="get">--%>
                        <%--            <input name="adId" value="${ad.id}" type="hidden"/>--%>
                        <%--            <input type="submit" class="btn btn-block btn-primary" value="See Details">--%>
                </div>
            </div>
        </c:forEach>

    </form>
</div>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp"/>
</footer>
</html>