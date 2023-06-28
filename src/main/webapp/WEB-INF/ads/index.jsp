<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container">
    <div class="container">
        <h1>Here Are all the ads!</h1>
        <h2>Search for an ad</h2>
            <form action="/ads" method="get">
                    <label for="ad_search">Search for Ad</label>
                    <input id="ad_search" name="ad_search" class="form-control" type="text">
                <input type="submit" class="btn btn-block btn-primary">
            </form>
        <c:forEach var="ad" items="${ads}">
            <div class="card" style="width: 18rem;">
                <img src="https://images.unsplash.com/photo-1604043705156-f448129cd111?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">${ad.title}</h5>
                    <p class="card-text">${ad.description}</p>
                    <form action="/ads/details" method="get">
                        <input name="adId" value="${ad.id}" type="hidden"/>
                        <input type="submit" class="btn btn-block btn-primary" value="See Details">
                    </form>

                </div>
            </div>
        </c:forEach>
    </div>

</div>

<%--<div class="container">--%>
<%--    <h1>Here Are all the ads!</h1>--%>
<%--    <h2>Search for an ad</h2>--%>
<%--    <form action="/ads" method="get">--%>
<%--            <label for="ad_search">Search for Ad</label>--%>
<%--            <input id="ad_search" name="ad_search" class="form-control" type="text">--%>
<%--        <input type="submit" class="btn btn-block btn-primary">--%>
<%--    </form>--%>

<%--    <c:forEach var="ad" items="${ads}">--%>
<%--        <div class="col-md-6">--%>
<%--            <h2>${ad.title}</h2>--%>
<%--            <p>${ad.description}</p>--%>
<%--            <form action="/ads/details" method="get">--%>
<%--                <input name="adId" value="${ad.id}" type="hidden"/>--%>
<%--                <input type="submit" class="btn btn-block btn-primary" value= "See Details">--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
<%--</div>--%>
<jsp:include page="/WEB-INF/partials/script.jsp"/>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
