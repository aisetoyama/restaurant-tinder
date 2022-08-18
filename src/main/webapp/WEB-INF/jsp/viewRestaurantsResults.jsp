<%@ include file="common/header.jsp" %>

<%--<!DOCTYPE html>--%>
<html>
<head>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">


</head>
<body>
<div class="container text-center">
    <h3>View Results</h3>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#ModalCarousel">
        View Restaurants
    </button>

    <!-- Modal -->
    <div class="modal fade" id="ModalCarousel" tabindex="-1" role="dialog" aria-labelledby="ModalCarouselLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div id="carousel-modal-demo" class="carousel slide" data-ride="false" data-interval="false" data-wrap="false">
                    <!-- Sliding images statring here -->
                    <div class="carousel-inner">

                        <div class="item active">
                            <%--                            <p style="width: 23px">${restaurantList.get(0).name}</p>--%>
                            <%--                            <img src="images/banana.jpg" alt="${restaurantList.get(0).name}">--%>
                            <div class="card" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                                 tabindex="-1"
                                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="card-dialog">
                                    <div class="card-content">
                                        <div class="card-header">
                                            <h4 class="card-title"
                                                id="staticBackdropLabel">${restaurantList.get(0).name}</h4>
                                        </div>
                                        <div class="card-body">
                                            <c:url var="restaurantImage" value="/images/restaurant_${restaurantList.get(0).restaurantId}.png"></c:url>
                                            <img class="img-thumbnail w-50" src="${restaurantImage}" alt="restaurant image"/>
                                            <h5>Category:</h5>
                                            <p>${restaurantList.get(0).category}</p>
                                            <h5>Address:</h5>
                                            <p>${restaurantList.get(0).streetAddress}</p>
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
                                        </div>
                                        <c:if test="${restaurantList.get(0).phoneNumber != null}">
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-success bi bi-telephone-fill" data-bs-toggle="modal"
                                                    data-bs-target="#staticBackdrop"> Call To Order
                                            </button>
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <c:forEach var="index" begin="1" end="${restaurantList.size()-1}">
                            <div class="item">
                                    <%--                                <p style="width: 23px">${restaurantList.get(index).name}</p>--%>
                                    <%--                            <img src="images/banana.jpg" alt="${restaurantList.get(0).name}">--%>
                                <div class="card" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                                     tabindex="-1"
                                     aria-labelledby="staticBackdropLabel1" aria-hidden="true">
                                    <div class="card-dialog">
                                        <div class="card-content">
                                            <div class="card-header">
                                                <h4 class="card-title"
                                                    id="staticBackdropLabel1">${restaurantList.get(index).name}</h4>
                                            </div>
                                            <div class="card-body">
                                                <c:url var="restaurantImage" value="/images/restaurant_${restaurantList.get(index).restaurantId}.png"></c:url>
                                                <img class="img-thumbnail w-50" src="${restaurantImage}" alt="restaurant image"/>
                                                <h5>Category:</h5>
                                                <p>${restaurantList.get(index).category}</p>
                                                <h5>Address:</h5>
                                                <p>${restaurantList.get(index).streetAddress}</p>
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
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                    <!-- Next / Previous controls here -->
                    <div class="card-footer">
                        <a class="left carousel-control" href="#carousel-modal-demo" data-slide="next">
                            <button type="submit" class="btn btn-danger bi bi-heartbreak-fill"
                                    data-bs-target="#staticBackdrop"> Dislike
                            </button>
                        </a>
                        <a class="right fix-bottom carousel-control" href="#carousel-modal-demo" data-slide="next">
                            <button type="submit" class="btn btn-primary bi bi-heart-fill"
                                    data-bs-target="#staticBackdrop"> Like
                            </button>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="//code.jquery.com/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


</body>
</html>