<%@ include file = "common/header.jsp" %>

<h1>RESULTS</h1>

<body>
<%--<c:set var="restaurant" value="${restaurant}"/>--%>


<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
    View restaurants
</button>

<!-- Modal -->
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
                <form id="main-content" method="GET" action="${formAction}">
                    <%--    <input type="button" value="like"/>--%>
                    <input type="hidden" value="${restaurantList.get(1)}"/>
                    <%--<button type = "submit" id="like">Like</button>
                    <button type = "submit" id = "dislike">Dislike</button>--%>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary bi bi-heart-fill" data-bs-dismiss="modal"> me-like</button>
                <button type="submit" class="btn btn-danger bi bi-heartbreak-fill" data-bs-dismiss="modal"> me-no-like</button>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file = "common/footer.jsp" %>
