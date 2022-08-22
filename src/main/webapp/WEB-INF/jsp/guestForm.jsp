<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

<body>

<div>Please enter the following information to gain access to your event!</div>
<br>

<c:url var="formAction" value="/guestForm"/>
<form id="main-content" method="POST" action="${formAction}">
    <label for="guestName">Enter your name: </label>
    <input type="text" id="guestName" name="guestName"/>
    <br>

    <label for="eventNumber">Enter your event number: </label>
    <input type="number" id="eventNumber" name="eventNumber"/>  <%-- change type? --%>
    <br>

    <label for="hostName"> Enter your host's name: </label>
    <input type="text" id="hostName" name="hostName"/>
    <br>
    <button type="submit">Submit</button>

</form>

</body>

<%@ include file = "common/footer.jsp" %>
