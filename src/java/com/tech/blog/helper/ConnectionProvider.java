package com.tech.blog.helper;
import java.sql.*;

public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection(){
        try{
            
            if(con == null){
            //load the driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            //Creating connection
            String url="jdbc:mysql://localhost:3307/techblog";
            String username = "root";
            String password = "Q%4@sozD";
            
            con = DriverManager.getConnection(url, username, password);
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return con;
    }
    
}
