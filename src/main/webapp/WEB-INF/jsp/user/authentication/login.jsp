<%@ include file = "../../common/header.jsp" %>

<c:url var="loginUrl" value="/login"/>
<form class="row justify-content-center w-50 mx-auto mt-5 border rounded p-5 form-bg" action="${loginUrl}" method="POST">
    <h1 class="text-center">login</h1>
    <div class="form-group">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="Username">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>
    <button type="submit" class="btn btn-default">Login</button>
</form>

<%@ include file = "../../common/footer.jsp" %>
