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
        <jsp:param name="title" value="Ad Details Page" />
    </jsp:include>
<%--    <link rel="stylesheet" type="text/css" href="/css/styles.css">--%>
</head>
<body>
<body style="background-image: url('/assets/photo-1541140134513-85a161dc4a00.avif');">

<jsp:include page="/WEB-INF/partials/navbar.jsp" />



 <h1>This is the Ads Detail Page</h1>
 <c:forEach var="ad" items="${ads}">
     <div class="col-md-6">
         <h2>${ad.title}</h2>
         <p>${ad.description}</p>
     </div>
 </c:forEach>
</body>
<footer>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</footer>
</html>