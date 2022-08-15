package com.techelevator.controller.viewRestaurants;

import com.techelevator.model.JdbcRestaurantDao;
import com.techelevator.model.RestaurantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class viewRestaurantsController {
    @Autowired
    private RestaurantDao restaurantDao;
//    @RequestMapping(path = "/viewRestaurants", method = RequestMethod.POST)
//    public String takeRestaurantParameters(@RequestParam String cuisine, @RequestParam String zipCode, ModelMap modelHolder) {
//
//            return "redirect:/viewRestaurantsResults";
//
//    }
    @RequestMapping(value = "/viewRestaurantsResults", method = RequestMethod.GET)
    public String viewRestaurantsResults(@RequestParam String cuisine, @RequestParam String zipCode, ModelMap modelHolder){
        modelHolder.put("restaurantList", restaurantDao.getRestaurantsByCuisineAndZip(cuisine,zipCode));
        return "viewRestaurantsResults";
    }
}
