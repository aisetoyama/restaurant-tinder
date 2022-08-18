package com.techelevator.model;

import java.util.List;

public interface RestaurantDao {

    public List<Restaurant> getAllRestaurants();

    public List<Restaurant> getRestaurantsByCuisineAndCity(String cuisine, String city);

    public List<List<Schedule>> getScheduleByRestaurantID(List<Long> restaurantId);


}
