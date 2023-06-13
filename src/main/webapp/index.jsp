<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setAttribute("numbers", new int[]{1, 2, 3, 4, 5, 6, 7}); %>

<%! int counter = 1; %>
<%! int [] nums = {1, 2, 3, 4, 5, 6, 7}; %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %>
    <c:if test="true">
        <h1>Variable names should be very descriptive</h1>
    </c:if>
    <c:if test="false">
        <h1>single letter variable names are good</h1>
    </c:if>
<h3> <%= request.getParameter("age")%></h3>
<h3> ${param.age} </h3>
<c:if test="${param.howdy.equals('yall')}">
    <p>Howdy back at you</p>
</c:if>

<c:choose>
    <c:when test="<%= counter == 1%>">
            <p>Inside the choose, counter is 1</p>
    </c:when>
    <c:otherwise>
            <p>Inside the choose, counter is not 1</p>
    </c:otherwise>
</c:choose>

<c:forEach items="${numbers}" var="n">
    <p>Current element in numbers is ${n}</p>
</c:forEach>

<ul>
    <c:forEach items="<%= nums %>" var="aNum">
        <li>aNum is ${aNum}</li>
    </c:forEach>
</ul>

<p>You submitted a book title of ${param.book_title}</p>
<form method="POST" action="index.jsp">
    <label for="book_title">Book Title: </label>
    <input type="text" name="book_title" id="book_title">
    <button type="submit">submit</button>
</form>
</body>
</html>
