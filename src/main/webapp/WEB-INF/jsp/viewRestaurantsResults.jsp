<%@ include file = "common/header.jsp" %>

<h1>RESULTS</h1>

<body>
<%--<c:set var="restaurant" value="${restaurant}"/>--%>
<p>${restaurant.name}</p>
<p>${restaurant.category}</p>
<c:url var="formAction" value="/viewRestaurantsResults"/>
<form id="main-content" method="GET" action="${formAction}">
<%--    <input type="button" value="like"/>--%>
    <input type="hidden" value="${restaurantList.get(1)}"/>
    <button type = "submit" id="like">Like</button>
    <button type = "submit" id = "dislike">Dislike</button>
</form>

</body>

<%@ include file = "common/footer.jsp" %>
