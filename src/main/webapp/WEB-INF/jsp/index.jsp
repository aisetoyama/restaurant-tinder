<%@ include file = "common/header.jsp" %>

<body>
    <h1 class="text-center mt-3">Restaurant Tinder</h1>
    <div class="card mx-auto text-center shadow" style="max-width: 500px">
        <div class="card-body">
            <img class="cover-img" src="images/color_logo.png" alt="colored logo"/>
        </div>
    </div>
    <h4 class="text-center mt-3">Meet and Eat</h4>
    <h5 class="text-center">Swiping right has never tasted better</h5>
    <h6 class="text-center text-muted">Warning: may become pregnant (with a food baby)</h6>

<p>You can log in as:</p>
<table>
    <thead>
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Admin</td>
        <td>admin</td>
        <td>admin</td>
    </tr>
    <tr>
        <td>User</td>
        <td>user</td>
        <td>user</td>
    </tr>
    </tbody>
</table>

<p>Logged in users have access to the Private page.</p>
<p>Only users with <em>admin</em> role will see the <em>Adminstration</em> menu item.</p>

<%@ include file = "common/footer.jsp" %>
