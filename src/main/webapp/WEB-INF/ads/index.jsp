<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />


<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">

</body>



<div class="container">
    <h1>Here Are all the ads!</h1>
    <h2>Search for an ad</h2>
    <form action="/ads" method="get">
            <label for="ad_search">Search for Ad</label>
            <input id="ad_search" name="ad_search" class="form-control" type="text">
        <input type="submit" class="btn btn-block btn-primary">
    </form>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <form action="/ads/details" method="get">
                <label for="ad_id"></label>
                <input style="display: none;" name="ad_id" id="ad_id" value=${ad.id} type="text"/>
                <input type="submit" class="btn btn-block btn-primary" value= "See Details">
            </form>
        </div>
    </c:forEach>
</div>

</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>
