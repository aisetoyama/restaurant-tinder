package com.techelevator.model;

public interface EventsDao {
    public void updateLikes(Long restaurantId, String hostName);
    public void updateDislikes(Long restaurantId, String hostName);
}
