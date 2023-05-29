package com.assignment;

import com.assignment.JSONManagement;

public class Main {
    public static void main(String[] args) {
        try {
            JSONManagement jsonManagement = new JSONManagement();

            jsonManagement.readJSONPerson();

//            jsonManagement.readJSONFromAPI();
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
