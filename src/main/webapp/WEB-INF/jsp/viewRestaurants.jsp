<%@ include file = "common/header.jsp" %>


  <body>
  <c:url var="formAction" value="/viewRestaurants"/>
  <h1 class="row justify-content-center w-75">View Restaurants</h1>
  <form class="row justify-content-center w-25 mx-auto mt-5 form-bg" id="main-content" method="POST" action="${formAction}">
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

    <label for="zipCode">Zip Code</label>
    <input type="text" name="zipCode" id="zipCode" placeholder="00000"/>
<br>
    <button type="submit">Submit</button>

  </form>

  </body>

<%@ include file = "common/footer.jsp" %>
