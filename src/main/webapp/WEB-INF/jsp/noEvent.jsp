<%@ include file = "common/header.jsp" %>

<h1>No event found.</h1>

<body>
<c:url var="searchForEvent" value="/searchForEvent"/>
<h1>Please check your event ID and <a href="${searchForEvent}">try again</a>!</h1>
</body>
