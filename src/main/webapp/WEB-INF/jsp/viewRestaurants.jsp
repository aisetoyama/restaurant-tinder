<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

  <body>
  <c:url var="formAction" value="/viewRestaurants"/>
  <form id="main-content" method="POST" action="${formAction}">
    <label for="cuisine">Cuisine Preference</label>
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
  <br>
    <label for="city">City</label>
    <select id="city" name="city">
      <option value = "Mountain View, CA">Mountain View, CA</option>
      <option value = "Palo Alto, CA">Palo Alto, CA</option>
      <option value = "Barbeque">Barbeque</option>
      <option value = "Cafes">Cafes</option>
      <option value = "Italian">Italian</option>
      <option value = "Chinese">Chinese</option>
      <option value = "Japanese">Japanese</option>
      <option value = "Thai">Thai</option>
      <option value = "Mexican">Mexican</option>
      <option value = "Any Category">Any Category</option>
    </select>
<br>
    <button type="submit">Submit</button>

  </form>

  </body>

<%@ include file = "common/footer.jsp" %>
