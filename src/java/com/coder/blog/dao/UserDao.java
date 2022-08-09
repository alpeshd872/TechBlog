
package com.coder.blog.dao;

import com.coder.blog.entities.User;

import java.sql.*;
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    //method to insert user into database
    public boolean saveUser(User  user){
        boolean flag = false;
        try{
        String query = "insert into users(username,email,password,about) values(?,?,?,?)";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setString(1, user.getUsername());
        pstmt.setString(2, user.getEmail());
        pstmt.setString(3, user.getPassword());
        pstmt.setString(4, user.getAbout());
        
        pstmt.executeUpdate();
        flag = true;  
        }catch(Exception e){
        e.printStackTrace();
        }
        return flag;
    }
    //Get user by useremail and password
    public User getUserByEmailAndPassword(String email, String password){
     User user = null;
     try{
         String query = "select * from users where email=? and password=?";
         PreparedStatement pstmt = con.prepareStatement(query);
         pstmt.setString(1,email);
         pstmt.setString(2, password);
         ResultSet set = pstmt.executeQuery();
         if(set.next()){
         user = new User(); 
         user.setUsername(set.getString("username"));
         user.setId(set.getInt("id"));
         user.setEmail(set.getString("email"));
         user.setPassword(set.getString("password"));
         user.setAbout(set.getString("about"));
         user.setDateTime(set.getTimestamp("rdate"));
         user.setProfile(set.getString("profile"));
         }
     }catch(Exception e){
         e.printStackTrace();
     }
    return user;
    } 

    public boolean updateUser(User user) {
        boolean f = false;
        try {

            String query = "update users set username=? , email=? , password=? , about=? , profile=? where  id =?";
            PreparedStatement pre = con.prepareStatement(query);
            pre.setString(1, user.getUsername());
            pre.setString(2, user.getEmail());
            pre.setString(3, user.getPassword());
            pre.setString(4, user.getAbout());
            pre.setString(5, user.getProfile());
            pre.setInt(6, user.getId());

            pre.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
      
        
    }

