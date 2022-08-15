package com.techelevator.model;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface RestaurantDao {

    public List<Restaurant> getAllRestaurants();

    public List<Restaurant> getRestaurantsByCuisineAndZip(String cuisine, String zipCode);


}
