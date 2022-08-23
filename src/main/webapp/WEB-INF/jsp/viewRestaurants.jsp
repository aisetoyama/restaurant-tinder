<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

  <body>
  <c:url var="formAction" value="/viewRestaurants"/>
<%--  <form id="main-content" method="POST" action="${formAction}">--%>
<%--    <label for="cuisine">Cuisine Preference: </label>--%>
<%--<select id="cuisine" name="cuisine">--%>
<%--  <option value = "American">American</option>--%>
<%--  <option value = "Spanish">Spanish</option>--%>
<%--  <option value = "Barbeque">Barbeque</option>--%>
<%--  <option value = "Cafes">Cafes</option>--%>
<%--  <option value = "Italian">Italian</option>--%>
<%--  <option value = "Chinese">Chinese</option>--%>
<%--  <option value = "Japanese">Japanese</option>--%>
<%--  <option value = "Thai">Thai</option>--%>
<%--  <option value = "Mexican">Mexican</option>--%>
<%--  <option value = "Any Category">Any Category</option>--%>
<%--</select>--%>
<%--  <br>--%>
<%--    <label for="city">City: </label>--%>
<%--    <select id="city" name="city">--%>
<%--      <option value = "Mountain View">Mountain View, CA</option>--%>
<%--      <option value = "Palo Alto">Palo Alto, CA</option>--%>
<%--    </select>--%>
<%--<br>--%>
<%--    <label for="deadline"> Voting Deadline: </label>--%>
<%--    <input type="date" id="deadline" name="deadline" min="${todayDate}"/>--%>

<%--    <button type="submit">Submit</button>--%>

<%--  </form>--%>

  <form class="row justify-content-center w-50 mx-auto mt-5 border-white rounded p-5 form-bg shadow" action="${formAction}" method="POST">
    <h1 class="text-center salmon-text-color">view restaurants</h1>
    <div class="form-group mb-3">
      <label class="form-label" for="cuisine">Cuisine Preference: </label>
      <select id="cuisine" name="cuisine">
        <option value = "American">American</option>
        <option value = "Spanish">Spanish</option>
        <option value = "Barbeque">Barbeque</option>
        <option value = "Cafes">Cafes</option>
        <option value = "Italian">Italian</option>
        <option value = "Chinese">Chinese</option>
        <option value = "Japanese">Japanese</option>
        <option value = "Thai">Thai</option>
        <option value = "Mexican">Mexican</option>
        <option value = "Any Category">Any Category</option>
      </select>
    </div>
    <div class="form-group mb-3">
      <label class="form-label" for="city">City: </label>
      <select id="city" name="city">
        <option value = "Mountain View">Mountain View, CA</option>
        <option value = "Palo Alto">Palo Alto, CA</option>
      </select>
    </div>
    <div class="form-group mb-3">
      <label class="form-label" for="deadline"> Voting Deadline: </label>
      <input type="date" id="deadline" name="deadline"/>
    </div>
    <button type="submit" class="btn btn-default btn-color w-25 mt-3">Submit</button>
  </form>

  </body>

<%@ include file = "common/footer.jsp" %>
