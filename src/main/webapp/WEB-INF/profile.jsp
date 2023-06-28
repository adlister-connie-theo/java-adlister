<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <div class="container">
        <h1>Here Are all your ads!</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="card" style="width: 18rem;">
                <img src="https://images.unsplash.com/photo-1604043705156-f448129cd111?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80"
                     class="card-img-top" alt="...">
                <div class="card-body">
                    <form action="/ads/update" method="get">
                        <input type="hidden" id="ad_id" value=${ad.id} name="adId">
                        <h5 class="card-title">${ad.title}</h5>
                        <p class="card-text">${ad.description}</p>
                        <button type="submit">Update</button>
                    </form>
                    <form action="/profile" method="post">
                        <input type="hidden" value=${ad.id} name="adId">
                        <button type="submit">Delete</button>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>

</div>
<jsp:include page="/WEB-INF/partials/script.jsp" />
</body>
</html>
