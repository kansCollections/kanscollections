package com.kanCollections.kans.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;



public class DBConnection 
{
	String sql ="select * from user where name=? and password=? ;";
	String url ="jdbc:mysql://localhost:3306/kancollections";
	//String url ="jdbc:mysql://35.229.111.207:3306/kancollections";
	
	//String uname ="root";
	//String password ="11420";
 
	// The "check" method is used to validate username and password  
	public boolean check(String uname, String pass)
	{
		System.out.println(" in DBconnection uname ="+uname );
		System.out.println(" in DBconnection pass ="+pass );
		try {
			Class.forName("com.mysql.jdbc.Driver"); // to load and register for driver class
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			
			properties.setProperty("useSSL", "false"); // for software (mysql) certificate
			properties.setProperty("autoReconnect", "true");
			
			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			//st.setString(1, "'" + uname +"'");
			//st.setString(2, "'" + pass+"'");
			st.setString(1, uname);
			st.setString(2,pass);

			ResultSet rs =st.executeQuery();
			if  (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		 return false;
	}
	
	 // The "insert" method is used to insert input values of the fields in feedback into the respective columns in the database table:Feedback
	public boolean insert(String realname, String email, String product, String service,String comments,String rating)
	{
		sql ="insert into feedback  values (?,?,?,?,?,? );";
		//realname,email, product,service,comments,rating
		System.out.println(" in DBconnection email ="+email );
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			
			properties.setProperty("useSSL", "false"); // for software (mysql) certificate
			properties.setProperty("autoReconnect", "true");
			
			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,realname);
			st.setString(2,email);
			st.setString(3,product);
			st.setString(4,service);
			st.setString(5,comments);
			st.setString(6,rating); // note: the input from the user, always comes as "string" type and not "int" but it is stored as "int" after it reaches the database as the column "rating" is defined by int values
			System.out.println(sql);
			st.executeUpdate();
		
		}
			catch (Exception e)
				{
				System.out.println(e.getMessage());
				e.printStackTrace();
			   }
	return true;
	}
	
	
public boolean insertImage (String filePath, String fileDescription)
{
	//This sql query is used to insert image and imageName into the imagetable
	sql ="insert into imagetable (image, imageName) values (?,?);";				
	//System.out.println(" in DBconnection imageName ="+imageName );
	try {
		//Database connection and SQL query related
		Class.forName("com.mysql.jdbc.Driver");
		Properties properties = new Properties();
		properties.setProperty("user", "root");
		properties.setProperty("password", "11420");
		properties.setProperty("useSSL", "false"); // for software (mysql) certificate
		properties.setProperty("autoReconnect", "true");
		
		Connection con = DriverManager.getConnection(url,properties);
		PreparedStatement st = con.prepareStatement(sql);
	 // Create a File object to get the file path of the image file and store it as a file object
		File imageFile = new File (filePath); 
	 //Create a FileInputStream object to open and read the input bytes of the image file. 
	 //FileInputStream is meant for reading streams of raw bytes such as image data
		FileInputStream  fis = new FileInputStream(imageFile) ;
		
	//setBinaryStream method is used to associate the input stream with cell in the table, here in the second column
		st.setBinaryStream(1, (InputStream) fis, (int) imageFile.length() );
		st.setString(2, fileDescription);
		st.executeUpdate();
		st.close();
	}
		catch (Exception e)
			{
			System.out.println(e.getMessage());
			e.printStackTrace();
		   }
         return true;
 }
 
			
public boolean insertDesign (String DesPath, String DesDescription,String imgid)
{
	//This sql query is used to insert Design and DesignName into the CollectionsTable
	sql ="insert into CollectionsTable (DesignImage, DesignName,imgID) values (?,?,?);";				
	//System.out.println(" in DBconnection imageName ="+imageName );
	try {
		//Database connection and SQL query related
		Class.forName("com.mysql.jdbc.Driver"); 
		Properties properties = new Properties();
		properties.setProperty("user", "root");
		properties.setProperty("password", "11420");
		properties.setProperty("useSSL", "false"); // for software (mysql) certificate
		properties.setProperty("autoReconnect", "true");
		
		Connection con = DriverManager.getConnection(url,properties);
		PreparedStatement st = con.prepareStatement(sql);
	 // Create a File object to get the file path of the image file and store it as a file object
		File designFile = new File (DesPath); 
	 //Create a FileInputStream object to open and read the input bytes of the image file. 
	 //FileInputStream is meant for reading streams of raw bytes such as image data
		FileInputStream  fis = new FileInputStream(designFile) ;
		
	//setBinaryStream method is used to associate the input stream with cell in the table, here in the second column
		st.setBinaryStream(1, (InputStream) fis, (int) designFile.length() );
		st.setString(2, DesDescription);
		st.setString(3, imgid);
		st.executeUpdate();
		st.close();
	}
		catch (Exception e)
			{
			System.out.println(e.getMessage());
			e.printStackTrace();
		   }
         return true;
 }
 }
	
	
	
