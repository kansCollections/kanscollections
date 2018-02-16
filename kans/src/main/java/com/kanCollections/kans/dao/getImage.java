package com.kanCollections.kans.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;


public class getImage {

	 public ResultSet get(int ID ) {
	     String sql ="select  image from imagetable where imageID =?;";
	     String url ="jdbc:mysql://localhost:3306/kancollections";
	     try {
	     Class.forName("com.mysql.jdbc.Driver");
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			properties.setProperty("useSSL", "false");
			properties.setProperty("autoReconnect", "true");
			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,ID);
			ResultSet rs =st.executeQuery();
			if  (rs.next())	{
				return rs;
			}
						
		   	 
	     }catch (Exception e){
	    	 e.printStackTrace();
	     }
	     
	     return null;
	    		 
	 }

	 public String getName(int ID )
	 {
	     String sql ="select imageName from imagetable where imageID =?;";
	     String url ="jdbc:mysql://localhost:3306/kancollections";
	     try {
	     Class.forName("com.mysql.jdbc.Driver");
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			properties.setProperty("useSSL", "false");
			properties.setProperty("autoReconnect", "true");
			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,ID);
			ResultSet rs =st.executeQuery();
			if  (rs.next())	{
				return rs.getString(1);
			}
						
		   	 
	     }catch (Exception e){
	    	 e.printStackTrace();
	     }
	     
	     return null;
	    		 
	 }

	 public Integer get() {
	     String sql ="select count(imageID) from imagetable ;";
	     String url ="jdbc:mysql://localhost:3306/kancollections";
	     try {
	     Class.forName("com.mysql.jdbc.Driver");
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			properties.setProperty("useSSL", "false");
			properties.setProperty("autoReconnect", "true");
			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			//st.setInt(1,ID);
			ResultSet rs =st.executeQuery();
			if  (rs.next())	{
				return rs.getInt(1);
			}
						
		   	 
	     }catch (Exception e){
	    	 e.printStackTrace();
	     }
	     
	     return 0;
	    		 
	 }

	}
