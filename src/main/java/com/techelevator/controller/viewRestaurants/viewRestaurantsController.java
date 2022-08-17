package com.techelevator.controller.viewRestaurants;

import com.techelevator.model.JdbcRestaurantDao;
import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import com.techelevator.model.Schedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class viewRestaurantsController {

    @Autowired
    private RestaurantDao restaurantDao;


    @RequestMapping(path = "/viewRestaurants", method = RequestMethod.POST)
    public String showRestaurantResults(@RequestParam String cuisine, @RequestParam String zipCode, HttpSession session) {
        List<Restaurant> restaurantList = restaurantDao.getRestaurantsByCuisineAndZip(cuisine, zipCode);
        session.setAttribute("restaurantList", restaurantList);
        if(restaurantList.size() == 0){
            return "redirect:/noResults";
        }
        return "redirect:/viewRestaurantsResults";
    }


    @RequestMapping("/noResults")
    public String showRegistrationSuccessScreen() {
        return "/noResults";
    }


    @RequestMapping(path="/viewRestaurantsResults", method = RequestMethod.GET)
    public String showAllResults(HttpSession session, ModelMap modelHolder){
        List<Restaurant> restaurantList = (List<Restaurant>) session.getAttribute("restaurantList");
        Restaurant restaurant = restaurantList.get(0);
        modelHolder.put("restaurantList", restaurantList);
        modelHolder.put("restaurant", restaurant);

        List<Schedule> schedulesList = (List<Schedule>) session.getAttribute("schedulesList");
        List<Schedule> restaurantSchedule = restaurantDao.getScheduleByRestaurantID(restaurant.getRestaurantId());
        modelHolder.put("schedulesList", schedulesList);
        modelHolder.put("restaurantSchedule", restaurantSchedule);

        return "viewRestaurantsResults";
    }


}
