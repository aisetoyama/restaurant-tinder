<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

<body>
<c:url var="noResultsUrl" value="/noResults"/>
<c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>
<h1>Your Event Expired. Happy Swiping! :O</h1>
<div>
<c:forEach var="res" items="${finalistList}">

    <p>${res.name}</p>
    <p>${res.category}</p>

</c:forEach>
</div>
</body>

<%@ include file = "common/footer.jsp" %>