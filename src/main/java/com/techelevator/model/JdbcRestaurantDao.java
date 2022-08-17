package com.techelevator.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcRestaurantDao implements RestaurantDao{
    private JdbcTemplate jdbcTemplate;
    @Autowired
    public JdbcRestaurantDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Restaurant> getAllRestaurants() {
        List<Restaurant> allRestaurantsList = new ArrayList<>();
        String sqlAllRestaurants = "SELECT * FROM RESTAURANT";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlAllRestaurants);
        while (results.next()){
            Restaurant restaurant = new Restaurant();
            restaurant.setRestaurantId(results.getLong("restaurant_id"));
            restaurant.setName(results.getString("name"));
            restaurant.setStars(results.getInt("stars"));
            restaurant.setStreetAddress(results.getString("street_address"));
            restaurant.setCity(results.getString("city"));
            restaurant.setState(results.getString("state"));
            restaurant.setZipcode(results.getString("zipcode"));
            restaurant.setCategory(results.getString("category"));
            allRestaurantsList.add(restaurant);
        }
        return allRestaurantsList;
    }

    @Override
    public List<Restaurant> getRestaurantsByCuisineAndZip(String cuisine, String zipCode) {
        List<Restaurant> allRestaurantsList = new ArrayList<>();
        String sqlAllRestaurants;
        SqlRowSet results;

        if (cuisine.equals("Any Category")) {
            sqlAllRestaurants = "SELECT * FROM RESTAURANT WHERE zipcode = ?;";
            results = jdbcTemplate.queryForRowSet(sqlAllRestaurants,zipCode);
        } else {
            sqlAllRestaurants = "SELECT * FROM RESTAURANT WHERE category = ? and zipcode = ?;";
            results = jdbcTemplate.queryForRowSet(sqlAllRestaurants,cuisine,zipCode);
        }
        while (results.next()){
            Restaurant restaurant = new Restaurant();
            restaurant.setRestaurantId(results.getLong("restaurant_id"));
            restaurant.setName(results.getString("name"));
            restaurant.setStars(results.getInt("stars"));
            restaurant.setStreetAddress(results.getString("street_address"));
            restaurant.setCity(results.getString("city"));
            restaurant.setState(results.getString("state"));
            restaurant.setZipcode(results.getString("zipcode"));
            restaurant.setCategory(results.getString("category"));
            restaurant.setPhoneNumber(results.getString("phone_number"));
            allRestaurantsList.add(restaurant);
        }
        return allRestaurantsList;
    }

    public List<Schedule> getScheduleByRestaurantID(long restaurantId) {
        List<Schedule> listOfRestaurantsSchedule = new ArrayList<>();
        String sql;
        SqlRowSet results;

        sql = "SELECT * FROM SCHEDULE WHERE restaurant_id = ?;";
        results = jdbcTemplate.queryForRowSet(sql, restaurantId);

        while (results.next()) {
            Schedule schedule = new Schedule();
            schedule.setRestaurantId(results.getLong("restaurant_id"));
            schedule.setDayOfWeek(results.getInt("day_of_week"));
            schedule.setTimeOpen(results.getTime("time_open"));
            schedule.setTimeClosed(results.getTime("time_closed"));
            listOfRestaurantsSchedule.add(schedule);
        }

        return listOfRestaurantsSchedule;
    }


}
