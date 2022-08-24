<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

<body>
<c:url var="noResultsUrl" value="/noResults"/>
<c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>
<h1>No Results :( - Please choose a different <a href="${viewRestaurantsUrl}">category</a>!</h1>
</body>

