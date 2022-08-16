package com.techelevator.controller.viewRestaurants;

import com.techelevator.model.JdbcRestaurantDao;
import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class viewRestaurantsController {

    @Autowired
    private RestaurantDao restaurantDao;


    @RequestMapping(path = "/viewRestaurants", method = RequestMethod.POST)
    public String showRestaurantResults(@RequestParam String cuisine, @RequestParam String zipCode) {
        return "redirect:/viewRestaurantsResults";
    }


    @RequestMapping(path="/viewRestaurantsResults", method = RequestMethod.GET)
    public String showAllResults(){
    return "viewRestaurantsResults";

    }
}




//    @RequestMapping(value = "/viewRestaurants", method = RequestMethod.GET)
//    public String viewRestaurantsResults(HttpServletRequest request){
////        List<Restaurant> restaurantList = restaurantDao.getRestaurantsByCuisineAndZip(cuisine, zipCode);
//        String cuisine = request.getParameter("cuisine");
//        String zipcode = request.getParameter("zipcode");
//        List<Restaurant> restaurantList = restaurantDao.getRestaurantsByCuisineAndZip(cuisine, zipcode);
//        request.setAttribute("restaurant", restaurantList.get(0));
////        for (Restaurant restaurant : restaurantList) {
////            viewOneRestaurant(restaurant, modelHolder);
////        }
////        modelHolder.put("restaurantList", restaurantDao.getRestaurantsByCuisineAndZip(cuisine,zipCode));
//        return "redirect:/viewRestaurantsResults";
//    }
//
//    @RequestMapping(value = "/viewRestaurantsResults", method = RequestMethod.GET)
//    public String viewOneRestaurant() {
////        modelHolder.put("restaurant", restaurant);
//        return "viewRestaurantsResults";
//    }
//}
