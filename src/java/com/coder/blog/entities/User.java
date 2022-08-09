
package com.coder.blog.entities;
import java.sql.*;

public class User {
    private int id;
    private String username;
    private String email;
    private String password;
    private String about;
    private Timestamp dateTime;
    private String profile;

    public User(int id, String username, String email, String password, String about, Timestamp dateTime) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.about = about;
        this.dateTime = dateTime;
    }

    public User() {
    }

    public User(String username, String email, String password, String about) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.about = about;
        
    }
    //getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    
}
