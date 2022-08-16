<%@ include file = "common/header.jsp" %>

<h1>RESULTS</h1>

<body>
<%--<c:set var="restaurant" value="${restaurant}"/>--%>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
    View restaurants
</button>


<!-- Modal -->
<c:forEach items="${restaurantList}" var="restaurant">

<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="staticBackdropLabel">Restaurants for ${restaurant.zipcode}</h4>
            </div>
            <div class="modal-body">
                <h5>Category:</h5>
                <p>${restaurant.category}</p>
                <h5>Name:</h5>
                <p>${restaurant.name}</p>
                <c:url var="formAction" value="/viewRestaurantsResults"/>
                <%--<form id="main-content" method="GET" action="${formAction}">
                    &lt;%&ndash;    <input type="button" value="like"/>&ndash;%&gt;
                    &lt;%&ndash;<input type="hidden" value="${restaurantList.get(1)}"/>&ndash;%&gt;
                    &lt;%&ndash;<button type = "submit" id="like">Like</button>
                    <button type = "submit" id = "dislike">Dislike</button>&ndash;%&gt;
                </form>--%>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary bi bi-heart-fill" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> me-like</button>
                <button type="submit" class="btn btn-danger bi bi-heartbreak-fill" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> me-no-like</button>
            </div>
            <button type="submit" class="btn btn-danger bi bi-heartbreak-fill" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> next</button>

        </div>
    </div>
</div>

</c:forEach>
</body>
<%@ include file = "common/footer.jsp" %>
