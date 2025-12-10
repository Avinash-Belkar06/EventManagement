package com.eventmanagement.main.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String eventname;
    private String date;
    private String location;
    private String description;

    public Event() {   // ✅ Default constructor required by JPA
    }

    public Event(String eventname, String date, String location, String description) {
        this.eventname = eventname;
        this.date = date;
        this.location = location;
        this.description = description;
    }

    // ✅ Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String geteventname() {
        return eventname;
    }

    public void seteventname(String eventname) {
        this.eventname = eventname;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
