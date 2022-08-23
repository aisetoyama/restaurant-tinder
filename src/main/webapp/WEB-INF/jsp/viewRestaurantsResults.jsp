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
    <h3>Share the following info with your friends to get their votes!</h3>
    <ul>
        <li>Link: http://localhost:8080/capstone_war_exploded/searchForEvent</li>
        <li>Event ID: ${eventId}</li>
    </ul>

    <!-- Modal -->
    <div class="modal fade" id="ModalCarousel" tabindex="-1" role="dialog" aria-labelledby="ModalCarouselLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div id="carousel-modal-demo" class="carousel slide" data-ride="false" data-interval="false"
                     data-wrap="false">
                    <!-- Sliding images statring here -->
                    <div class="carousel-inner">
                        <c:forEach var="index" begin="0" end="${restaurantList.size()-1}">
                            <c:choose>
                                <c:when test="${index ==  0}">
                                    <c:set var="activeOrNot" value="item active"/>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="activeOrNot" value=""/>
                                </c:otherwise>
                            </c:choose>
                            <div class="item ${activeOrNot}">
                                <div class="card" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                                     tabindex="-1"
                                     aria-labelledby="staticBackdropLabel1" aria-hidden="true">
                                    <div class="card-dialog">
                                        <div class="card-content">
                                            <div class="card-header">
                                                <button type="button" class="close" data-dismiss="modal">X</button>
                                                <h4 class="card-title"
                                                    id="staticBackdropLabel1">${restaurantList.get(index).name}</h4>
                                            </div>
                                            <div class="card-body">
                                                <c:url var="restaurantImage"
                                                       value="/images/restaurant_${restaurantList.get(index).restaurantId}.png"></c:url>
                                                <img class="img-thumbnail w-50" src="${restaurantImage}"
                                                     alt="restaurant image"/>

                                                <c:forEach items="${allRestaurantSchedule.get(index)}" var="schedule">
                                                        <c:if test="${schedule.dayOfWeek == dateNow && schedule.timeOpen <= timeNow && schedule.timeClosed >= timeNow}">
                                                            <span class="label label-success">Open Now!</span>
                                                        </c:if>
                                                </c:forEach>

                                                <h5>Category:</h5>
                                                <p>${restaurantList.get(index).category}</p>
                                                <h5>Address:</h5>
                                                <p>${restaurantList.get(index).streetAddress}, ${restaurantList.get(index).city}, ${restaurantList.get(index).state} ${restaurantList.get(index).zipcode}</p>
                                                <c:forEach items="${allRestaurantSchedule.get(index)}" var="schedule">
                                                    <ul id="schedule">
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
                                                    </ul>
                                                </c:forEach>
                                                <!--start of button -->

                                                <c:set var="restaurant" value="${restaurantList.get(index).restaurantId}"></c:set>
                                                <c:url var="viewRestaurantsResultsUrl1" value="/viewRestaurantsResults">
                                                    <c:param value="${restaurant}" name="restaurant"></c:param>
                                                    <c:param name="reaction" value="true"></c:param>
                                                    <c:param name="eventId" value="${eventId}"></c:param>
                                                </c:url>
                                                <c:url var="viewRestaurantsResultsUrl2" value="/viewRestaurantsResults">
                                                    <c:param value="${restaurant}" name="restaurant"></c:param>
                                                    <c:param name="reaction" value="false"></c:param>
                                                    <c:param name="eventId" value="${eventId}"></c:param>
                                                </c:url>

                                                <div class="card-footer">
                                                    <div class="row">
                                                        <form class="col" method="POST" action="${viewRestaurantsResultsUrl2}">
                                                            <button id='dislike${index}' type="submit" class="btn btn-danger bi bi-heartbreak-fill"
                                                                    data-bs-target="#staticBackdrop" onclick="disable('like${index}', 'dislike${index}')"> Dislike
                                                            </button>
                                                        </form>
                                                        <form class="col" method="POST" action="${viewRestaurantsResultsUrl1}">
                                                            <button id='like${index}' type="submit" class="btn btn-primary bi bi-heart-fill"
                                                                    data-bs-target="#staticBackdrop" onclick="disable('like${index}', 'dislike${index}')"> Like
                                                            </button>
                                                        </form>
                                                    </div>


                                                    <br>
                                                    <c:if test="${restaurantList.get(index).phoneNumber != null}">
                                                        <button type="submit" class="btn btn-success bi bi-telephone-fill" data-bs-toggle="modal"
                                                                data-bs-target="#staticBackdrop"> Call To Order
                                                        </button>
                                                    </c:if>
                                                    <!--next and previous button -->
                                                    <c:choose>
                                                        <c:when test="${index == restaurantList.size()-1}">
                                                            <a class="right fix-bottom" href="#carousel-modal-demo" data-slide="next">
                                                                <button type="submit" class="btn btn-secondary" data-dismiss="modal"
                                                                        data-bs-target="#staticBackdrop"> Submit & Close
                                                                </button>
                                                            </a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a class="right fix-bottom" href="#carousel-modal-demo" data-slide="next">
                                                                <button type="submit" class="btn btn-secondary"
                                                                        data-bs-target="#staticBackdrop" > Next
                                                                </button>
                                                            </a>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="//code.jquery.com/jquery.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script>
    function disable(likeId, dislikeId) {
// submit or validate here , disable after that using below

        document.getElementById(likeId).classList.add('disabled');
        document.getElementById(dislikeId).classList.add('disabled');

    }

</script>
</body>
</html>