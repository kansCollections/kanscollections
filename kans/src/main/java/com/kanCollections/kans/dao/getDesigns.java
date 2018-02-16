package com.kanCollections.kans.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;


public class getDesigns {


//To get the result set of the SQL query
	 public ResultSet getResultSet(int ID ) {
	     String sql ="select  DesignImage from collectionstable where collectionID =?;";
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

	 public ResultSet getName(int ID )
	 {
	     String sql ="select collectionID,DesignName from collectionstable where imgID =?;";
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

	 public Integer getRowCount(int ID) {
	     String sql ="select count(collectionID) from collectionstable where imgID =?;";
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
				return rs.getInt(1);
			}
						
		   	 
	     }catch (Exception e){
	    	 e.printStackTrace();
	     }
	     
	     return 0;
	    		 
	 }

	}
