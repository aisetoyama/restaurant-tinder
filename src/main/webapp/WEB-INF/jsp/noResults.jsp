<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

<body>
<c:url var="noResultsUrl" value="/noResults"/>
<c:url var="viewRestaurantssUrl" value="/viewRestaurants"/>
<h1>No Results :( - Please choose a different <a href="${viewRestaurantssUrl}">category</a>!</h1>
</body>

<%@ include file = "common/footer.jsp" %>
