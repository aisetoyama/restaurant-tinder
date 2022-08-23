<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

<body>
<c:url var="noResultsUrl" value="/noResults"/>
<c:url var="viewRestaurantsUrl" value="/viewRestaurants"/>
<h1>Your Event Expired. Happy Swiping! :O</h1>
<div>
<c:set value="1" var="rank"/>
<c:forEach var="res" items="${finalistList}">
    <p>#${rank}</p>
    <p>Name: ${res.name}</p>
    <p>Category: ${res.category}</p>
    <p># of Stars: ${res.stars}</p>
    <p>Address: ${res.streetAddress}, ${res.city}, ${res.state} ${res.zipcode}</p>
    <p>Phone Number: ${res.phoneNumber}</p>
    <c:set value="${rank+1}" var="rank"/>

</c:forEach>
</div>
</body>

<%@ include file = "common/footer.jsp" %>