<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
</head>

<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">

<jsp:include page="partials/navbar.jsp"/>

<div class="container">
    <h1>Please fill in your information.</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
            <c:choose>
                <c:when test="${usernameIsEmpty}">
                    <p>Username cannot be empty</p>
                </c:when>
                <c:when test="${usernameExists}">
                    <p>Username exists already, please try another.</p>
                </c:when>
            </c:choose>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
            <c:if test="${emailIsEmpty}">
                <p>Email cannot be empty</p>
            </c:if>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
            <c:if test="${passwordIsEmpty}">
                <p>Password cannot be empty</p>
            </c:if>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
            <c:if test="${passwordDoesntMatch}">
                <p>Password does not match</p>
            </c:if>
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
<jsp:include page="/WEB-INF/partials/script.jsp"/>
</body>
<footer>
<%--    <jsp:include page="/WEB-INF/partials/footer.jsp"/>--%>
</footer>
</html>
