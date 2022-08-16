<%@ include file = "common/header.jsp" %>

<h1>RESULTS</h1>

<body>
<%--<c:set var="restaurant" value="${restaurant}"/>--%>
<p>${restaurant.name}</p>
<p>${restaurant.category}</p>

<input type="button" value="like">
<input type="hidden" value="">

</body>

<%@ include file = "common/footer.jsp" %>
