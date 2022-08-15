<%@ include file = "common/header.jsp" %>

<h1>View Restaurants</h1>

  <body>
  <form id="main-content" method="GET">
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
</select>
  <br>

    <label for="zipCode">Zip Code</label>
    <input type="text" name="zipCode" id="zipCode" placeholder="00000"/>
<br>
    <button type="submit">Submit</button>

  </form>

  </body>

<%@ include file = "common/footer.jsp" %>
