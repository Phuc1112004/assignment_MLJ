package com.assignment.model;

public class Post {
    int id;
    int userID;
    String title;
    String body;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public Post(int id, int userID, String title, String body) {
        this.id = id;
        this.userID = userID;
        this.title = title;
        this.body = body;
    }
}

