<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">

        <a class="navbar-brand" href="/ads">Adlister</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <c:choose>
                    <c:when test="${user == null}">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/register">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/login">Login</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ads">Ads</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/ads/create">Create Ads</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/logout">Logout</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <form class="d-flex align-items-center">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<%--<nav class="navbar navbar-default ">--%>
<%--    <div class="container-fluid">--%>
<%--        <!-- Brand and toggle get grouped for better mobile display -->--%>
<%--        <div class="navbar-header">--%>
<%--            <a class="navbar-brand" href="/ads">Adlister</a>--%>
<%--        </div>--%>
<%--        <c:choose>--%>
<%--            <c:when test="${user == null}">--%>
<%--                <ul class="nav navbar-nav navbar-right">--%>
<%--                    <li><a href="/login">Login</a></li>--%>
<%--                </ul>--%>
<%--            </c:when>--%>
<%--            <c:otherwise>--%>
<%--                <ul class="nav navbar-nav navbar-right">--%>
<%--                    <li><a href="/profile">Profile</a></li>--%>
<%--                    <li><a href="/ads">Ads</a></li>--%>
<%--                    <li><a href="/ads/create">Create Ads</a></li>--%>
<%--                    <li><a href="/logout">Logout</a></li>--%>
<%--                </ul>--%>

<%--            </c:otherwise>--%>
<%--        </c:choose>--%>
<%--    </div><!-- /.navbar-collapse -->--%>
<%--    </div><!-- /.container-fluid -->--%>
<%--</nav>--%>