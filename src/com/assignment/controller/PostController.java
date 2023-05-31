package com.assignment.controller;

import com.assignment.model.Post;
import com.assignment.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PostController {
    String INSERT_POST ="INSERT INTO posts VALUES(?,?,?,?)";
    public boolean insertNewPost (Post post) throws Exception{
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        try {
            conn = DBUtil.getMySQlConnection();
            preparedStatement = conn.prepareStatement(INSERT_POST);

            preparedStatement.setInt(1,post.getId());
            preparedStatement.setInt(2,post.getUserID());
            preparedStatement.setString(3,post.getTitle());
            preparedStatement.setString(4,post.getBody());

            return ( preparedStatement.executeUpdate() > 0);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            try{
                preparedStatement.close();
                conn.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
        return false;
    }
}
