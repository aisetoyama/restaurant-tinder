<%@ include file="common/header.jsp" %>


<h1>Results for ${restaurant.zipcode}</h1>

<body>

<c:set var="restaurantSchedule" value="${restaurantSchedule}"/>
<!-- Card -->
<c:forEach items="${restaurantList}" var="restaurant">
<div class="card" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="card-dialog">
        <div class="card-content">
            <div class="card-header">
                <h4 class="card-title" id="staticBackdropLabel">${restaurant.name}</h4>
            </div>
            <div class="card-body">
                <h5>Category:</h5>
                <p>${restaurant.category}</p>
                <h5>Address:</h5>
                <p>${restaurant.streetAddress}</p>
                <h5>Hours:</h5>
                <ul>
                    <c:forEach items="${restaurantSchedule}" var="schedule">
                        <li><c:choose>
                            <c:when test="${schedule.dayOfWeek == 1}">
                                <strong>Monday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:when>
                            <c:when test="${schedule.dayOfWeek == 2}">
                                <strong>Tuesday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:when>
                            <c:when test="${schedule.dayOfWeek == 3}">
                                <strong>Wednesday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:when>
                            <c:when test="${schedule.dayOfWeek == 4}">
                                <strong>Thursday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:when>
                            <c:when test="${schedule.dayOfWeek == 5}">
                                <strong>Friday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:when>
                            <c:when test="${schedule.dayOfWeek == 6}">
                                <strong>Saturday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:when>
                            <c:otherwise>
                                <strong>Sunday:</strong> ${schedule.timeOpen} - ${schedule.timeClosed}
                            </c:otherwise>
                        </c:choose></li>
                    </c:forEach>
                </ul>
                <c:url var="formAction" value="/viewRestaurantsResults"/>

            </div>


            <c:if test="${restaurant.phoneNumber != null}">
            <div class="card-footer">
                <button type="submit" class="btn btn-success bi bi-telephone-fill" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop"> Call To Order
                </button>
                </c:if>
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-primary bi bi-heart-fill" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop"> Like
                </button>
                <button type="submit" class="btn btn-danger bi bi-heartbreak-fill" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop"> Dislike
                </button>
            </div>
        </div>
    </div>

    </c:forEach>
</body>
<%@ include file="common/footer.jsp" %>


