package com.techelevator.model;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

public interface RestaurantDao {

    public List<Restaurant> getAllRestaurants();

    public List<Restaurant> getRestaurantsByCuisineAndCity(String cuisine, String city);

    public List<List<Schedule>> getScheduleByRestaurantID(List<Long> restaurantId);

    public void addEventToTable(List<Long> restaurantId, String username, LocalDate deadline);


}
