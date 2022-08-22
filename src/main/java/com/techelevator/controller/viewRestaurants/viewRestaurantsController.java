package com.techelevator.controller.viewRestaurants;

import com.techelevator.model.Restaurant;
import com.techelevator.model.RestaurantDao;
import com.techelevator.model.Schedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.ArrayList;
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
        List<Restaurant> restaurantList = (List<Restaurant>) session.getAttribute("restaurantList");
        System.out.println("HERE at showAllResults: " +  restaurantList);
        modelHolder.put("restaurantList", restaurantList);

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
        if(restaurantDao.isWithinDeadline(eventNumber)) {
            // Get restaurants by event id and store into session
            List<Restaurant> restaurantListByEvent = restaurantDao.getRestaurantsByEventId(eventNumber, hostName);
            session.setAttribute("restaurantList", restaurantListByEvent);

            List<Long> restaurantIds = new ArrayList<>();
            for (Restaurant res : restaurantListByEvent) {
                restaurantIds.add(res.getRestaurantId());
            }
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
