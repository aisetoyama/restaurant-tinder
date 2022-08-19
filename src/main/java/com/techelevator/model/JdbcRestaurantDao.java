package com.techelevator.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
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
    public List<Restaurant> getRestaurantsByCuisineAndCity(String cuisine, String city) {
        List<Restaurant> allRestaurantsList = new ArrayList<>();
        String sqlAllRestaurants;
        SqlRowSet results;

        if (cuisine.equals("Any Category")) {
            sqlAllRestaurants = "SELECT * FROM RESTAURANT WHERE city = ?;";
            results = jdbcTemplate.queryForRowSet(sqlAllRestaurants,city);
        } else {
            sqlAllRestaurants = "SELECT * FROM RESTAURANT WHERE category = ? and city = ?;";
            results = jdbcTemplate.queryForRowSet(sqlAllRestaurants,cuisine,city);
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

    public List<List<Schedule>> getScheduleByRestaurantID(List<Long> restaurantIdList) {
        List<List<Schedule>> allRestaurantSchedule = new ArrayList<>();
        for (Long id : restaurantIdList) {
            List<Schedule> oneRestaurantSchedule = new ArrayList<>();
            String sql = "SELECT * FROM SCHEDULE WHERE restaurant_id = ?;";
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
            while (results.next()) {
                Schedule schedule = new Schedule();
                schedule.setRestaurantId(results.getLong("restaurant_id"));
                schedule.setDayOfWeek(results.getInt("day_of_week"));
                schedule.setTimeOpen(results.getTime("time_open"));
                schedule.setTimeClosed(results.getTime("time_closed"));
                oneRestaurantSchedule.add(schedule);
            }
            allRestaurantSchedule.add(oneRestaurantSchedule);
        }
        return allRestaurantSchedule;
    }

    @Override
    public void addEventToTable(List<Long> restaurantId, String username, LocalDate deadline) {
//        String cleanUsername = username.replaceAll("[^a-zA-Z0-9]", "");
        String cleanUsername = username.substring(0, username.indexOf("@"));
//        String sql = "DROP TABLE IF EXISTS "+ cleanUsername + "; CREATE TABLE " + cleanUsername + " (username varchar(255), restaurant_id integer, likes integer, dislikes integer);";
//        jdbcTemplate.update(sql);
        String sqlForUserId = "select id from app_user where user_name = ?";
        SqlRowSet results=jdbcTemplate.queryForRowSet(sqlForUserId,username);
        int user_id = 0;
        if(results.next()){

            user_id = results.getInt("id");
        }

        String insertSql;
        String sqlReference = "insert into event_user_id (user_id) values (?);";
        jdbcTemplate.update(sqlReference,user_id);
        String sqlGetMaxEventId = "select max(event_id) as event_id from event_user_id where user_id = ?";
        SqlRowSet resultsForMax = jdbcTemplate.queryForRowSet(sqlGetMaxEventId,user_id);
        int event_id = 0;
        if(resultsForMax.next()) {
            event_id = resultsForMax.getInt("event_id");
        }

        for (Long id : restaurantId) {
            insertSql = "INSERT INTO events ( event_id, host_name, restaurant_id, likes, dislikes, deadline) VALUES (?,?,?,?,?,?)";
            jdbcTemplate.update(insertSql, event_id,username, id, 0, 0,deadline);
        }
    }


}