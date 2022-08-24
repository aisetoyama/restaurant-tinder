<%@ include file = "common/header.jsp" %>

<h1>Page not found</h1>

<body>
<c:url var="home" value="/home"/>
<h2>We're sorry, we couldn't find the page you requested.
    <br>
    Browse our <a href="${home}">homepage</a>!
</h2>
</body>

<%@ include file = "common/footer.jsp" %>