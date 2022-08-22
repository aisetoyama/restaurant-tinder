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
        Long eventId = restaurantDao.addEventToTable(restaurantIds, username, deadlineDate);
        session.setAttribute("eventId", eventId);
        return "redirect:/viewRestaurantsResults";
    }


    @RequestMapping("/noResults")
    public String showNoResultsScreen() {
        return "/noResults";
    }


    @RequestMapping(path = "/viewRestaurantsResults", method = RequestMethod.GET)
    public String showAllResults(HttpSession session, ModelMap modelHolder) {
        List<Restaurant> restaurantList = (List<Restaurant>) session.getAttribute("restaurantList");
        Long eventId = (Long) session.getAttribute("eventId");

        System.out.println("Event ID: " + eventId);
        modelHolder.put("restaurantList", restaurantList);
        modelHolder.put("eventId", eventId);

        List<Long> restaurantIds = new ArrayList<>();
        for (Restaurant res : restaurantList) {
            restaurantIds.add(res.getRestaurantId());
        }

        List<List<Schedule>> allRestaurantSchedule = restaurantDao.getScheduleByRestaurantID(restaurantIds);
        modelHolder.put("allRestaurantSchedule", allRestaurantSchedule);
        return "viewRestaurantsResults";
    }


    @RequestMapping(path = "/searchForEvent", method = RequestMethod.GET)
    public String showGuestForm() {
        return "searchForEvent";
    }


    @RequestMapping(path = "/searchForEvent", method = RequestMethod.POST)
    public String guestFormSubmission(@RequestParam Long eventNumber, HttpSession session) {
        if(restaurantDao.isWithinDeadline(eventNumber)) {
            // Get restaurants by event id and store into session
            List<Restaurant> restaurantListByEvent = restaurantDao.getRestaurantsByEventId(eventNumber);
            session.setAttribute("restaurantList", restaurantListByEvent);
            session.setAttribute("eventId", eventNumber);

            List<Long> restaurantIds = new ArrayList<>();
            for (Restaurant res : restaurantListByEvent) {
                restaurantIds.add(res.getRestaurantId());
            }
            return "redirect:/viewRestaurantsResults";
        } else {
            return "viewFinalists";
        }
    }


    @RequestMapping(path = "/viewFinalists", method = RequestMethod.GET)
    public String showExpirationPage(HttpSession session, ModelMap modelHolder) {
        Long eventId = (Long) session.getAttribute("eventId");
        List<Restaurant> finalistList = restaurantDao.finalistRestaurants(eventId);
        modelHolder.put("finalistList", finalistList);
        return "viewFinalists";
    }
}
