package com.techelevator.controller.viewRestaurants;

import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import com.techelevator.model.Schedule;
import com.techelevator.model.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class viewRestaurantsController {

    @Autowired
    private RestaurantDao restaurantDao;

//    @Autowired
//    private UserDao userDao;


    @RequestMapping(path = "/viewRestaurants", method = RequestMethod.POST)
    public String showRestaurantResults(@RequestParam String cuisine, @RequestParam String city, @RequestParam LocalDateTime deadline, HttpSession session) {
        List<Restaurant> restaurantList = restaurantDao.getRestaurantsByCuisineAndCity(cuisine, city);
        session.setAttribute("restaurantList", restaurantList);
        if (restaurantList.size() == 0) {
            return "redirect:/noResults";
        }
        String username = (String) session.getAttribute("username");

        List<Long> restaurantIds =  new ArrayList<>();
        for (Restaurant res : restaurantList) {
            restaurantIds.add(res.getRestaurantId());
        }

        restaurantDao.createEventTable(restaurantIds, username);

        return "redirect:/viewRestaurantsResults";
    }
    @RequestMapping("/noResults")
    public String showNoResultsScreen() {
        return "/noResults";
    }




    @RequestMapping(path="/viewRestaurantsResults", method = RequestMethod.GET)
    public String showAllResults(HttpSession session, ModelMap modelHolder){
        List<Restaurant> restaurantList = (List<Restaurant>) session.getAttribute("restaurantList");
        Restaurant restaurant = restaurantList.get(0);
        modelHolder.put("restaurantList", restaurantList);
        modelHolder.put("restaurant", restaurant);

        List<Long> restaurantIds =  new ArrayList<>();
        for (Restaurant res : restaurantList) {
            restaurantIds.add(res.getRestaurantId());
        }

        List<Schedule> schedulesList = (List<Schedule>) session.getAttribute("schedulesList");
        List<List<Schedule>> allRestaurantSchedule = restaurantDao.getScheduleByRestaurantID(restaurantIds);
        modelHolder.put("schedulesList", schedulesList);
        modelHolder.put("allRestaurantSchedule", allRestaurantSchedule);

        return "viewRestaurantsResults";
    }


}
