package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * SiteController
 */
@Controller
public class SiteController {
    @Autowired
    private AuthProvider auth;

    @RequestMapping(path = "/private", method = RequestMethod.GET)
    public String privatePage(ModelMap modelHolder) throws UnauthorizedException {
        if (auth.userHasRole(new String[] { "admin", "user" })) {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDateTime now = LocalDateTime.now();
            modelHolder.put("todayDate", dtf.format(now));
            return "viewRestaurants";
        } else {
            throw new UnauthorizedException();
        }
    }

    @RequestMapping(path = "/admin", method = RequestMethod.GET)
    public String adminPage() throws UnauthorizedException {
        if (auth.userHasRole(new String[] { "admin" })) {
            return "administration/admin";
        } else {
            throw new UnauthorizedException();
        }
    }

    @RequestMapping(path = "/about", method = RequestMethod.GET)
    public String aboutPage() throws UnauthorizedException {
        return "about";
    }

    @RequestMapping(path = "/viewRestaurants", method = RequestMethod.GET)
    public String viewRestaurants() throws UnauthorizedException {
        return "viewRestaurants";
    }
}
