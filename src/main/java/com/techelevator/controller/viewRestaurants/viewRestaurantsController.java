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
import java.io.Console;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class viewRestaurantsController {

    @Autowired
    private RestaurantDao restaurantDao;


    @RequestMapping(path = "/viewRestaurants", method = RequestMethod.POST)
    public String showRestaurantResults(@RequestParam String cuisine, @RequestParam String city, @RequestParam String deadline, HttpSession session) {
        List<Restaurant> restaurantList = restaurantDao.getRestaurantsByCuisineAndCity(cuisine, city);
        session.setAttribute("restaurantList", restaurantList);
        if (restaurantList.size() == 0) {
            return "redirect:/noResults";
        }
        String username = (String) session.getAttribute("username");
        List<Long> restaurantIds = new ArrayList<>();
        for (Restaurant res : restaurantList) {
            restaurantIds.add(res.getRestaurantId());
        }
        LocalDate deadlineDate = LocalDate.parse(deadline);
        restaurantDao.addEventToTable(restaurantIds, username, deadlineDate);
        return "redirect:/viewRestaurantsResults";
    }


    @RequestMapping("/noResults")
    public String showNoResultsScreen() {
        return "/noResults";
    }


    @RequestMapping(path = "/viewRestaurantsResults", method = RequestMethod.GET)
    public String showAllResults(HttpSession session, ModelMap modelHolder) {
        List<Restaurant> restaurantList;
        restaurantList = (List<Restaurant>) session.getAttribute("restaurantList");
        Restaurant restaurant = restaurantList.get(0);
        modelHolder.put("restaurantList", restaurantList);
        modelHolder.put("restaurant", restaurant);

        List<Long> restaurantIds = new ArrayList<>();
        for (Restaurant res : restaurantList) {
            restaurantIds.add(res.getRestaurantId());
        }

        List<List<Schedule>> allRestaurantSchedule = restaurantDao.getScheduleByRestaurantID(restaurantIds);
        modelHolder.put("allRestaurantSchedule", allRestaurantSchedule);
        return "viewRestaurantsResults";
    }


    @RequestMapping(path = "/guestForm", method = RequestMethod.GET)
    public String showGuestForm() {
        return "/guestForm";
    }


    @RequestMapping(path = "/guestForm", method = RequestMethod.POST)
    public String guestFormSubmission(@RequestParam int eventNumber, @RequestParam String hostName, HttpSession session) {
        if(restaurantDao.isDeadlineExpired(eventNumber)) {
            List<Restaurant> restaurantList = restaurantDao.getRestaurantsByEventId(eventNumber, hostName);
            List<Long> restaurantIds = new ArrayList<>();
            for (Restaurant res : restaurantList) {
                restaurantIds.add(res.getRestaurantId());
            }
            session.setAttribute("RestaurantList", restaurantList);
            return "redirect:/viewRestaurantsResults";
        } else {
            return "redirect:/eventExpired";
        }
    }


    @RequestMapping(path = "/eventExpired", method = RequestMethod.GET)
    public String showExpirationPage() {
        return "/eventExpired";
    }
}
