<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome Welcome, ${sessionScope.user.username}!</h1>
        <div class="container">
            <h1>Here Are all your ads!</h1>

            <c:forEach var="ad" items="${ads}">
                <div class="col-md-6">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <button onclick="updateAd()">Update</button>
                    <button onclick="deleteAd()">Delete</button>
                </div>
            </c:forEach>
        </div>

    </div>
<script>
    function updateAd() {
        console.log("this is the update button")
    }
    function deleteAd() {
        console.log("this is the delete button")
        alert("are you sure you want to delete this?")
    }
</script>

</body>
</html>
