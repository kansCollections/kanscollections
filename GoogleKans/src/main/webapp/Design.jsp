<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Design</title>
<link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
<style>

.header {
    
    padding: 5px;
    height:200px;
    background-image: url(ProductPrmo/../resources/images/DesignBC1.jpg);
    <!--background-position: right bottom, left top;-->
    float: right;
   }
 .header h1
 {
    text-align: center;
    color: rgb(0, 255, 0);
    font-family: italic, bold, cursive;
    font-size:35px;
    float: center;
 } 
 .header h2
 {
    text-align: center;
    color: #FFFF00;
    font-family: italic, bold, cursive;
    font-size:25px;
    float: center;
 } 
 .body p
 {
 align-content:center;
  font-size:20px;
  color: #990033;
 }
 
 </style>
</head>
<body>
<div class="header">
      <h1 font-family = "Merienda" font-size ="22px" >The Sari Sense!....</h1>
      <h2>Do you want to be a KanCollections designer?</h2>
      <h2>Check-in your design!</h2>
     
      </div>
      <div class="body" align="center" style="background-color:#F2FFFF; height: 1000px">
      <form action="DesignUpload" method=get enctype="multipart/form-data" >
       <br> <br> <br>
       <p> We want to participate in your selection. And, we would love for you to contribute to our collection. 
      If you like to share your "Sari Sense", upload here and don't forget to name it.
       Our weavers and dress makers will create the most liked design! </p>
       
      <br> <br> <br>
        <table border=“2” align=“center” width=“50%”>  
          <tr> 
             <th align=”center” bgcolor= ”DeepPink” style=”color:white” colspan= "2">
               <h4>Design Upload</h4>
             </th>
          </tr>
            <tr> 
             <th align="right">Select Design Category :</th>
             <td>
             <select name="category" style="width:250px;">
             <option value="-1">Select one</option>
             
             	<%@ page import="java.sql.*" %>;
				<%@ page import="java.util.*"%>;

             <%

             
             String sql ="select imageID,imageName from imagetable order by	1 ;";
         	//String url ="jdbc:mysql://localhost:3306/kancollections";
         	String url ="jdbc:mysql://35.229.69.146:3306/kancollections";
             try {
     			Class.forName("com.mysql.jdbc.Driver"); // to load and register for driver class
     			Properties properties = new Properties();
     			properties.setProperty("user", "root");
     			properties.setProperty("password", "11420");
     			
     			properties.setProperty("useSSL", "false"); // for software (mysql) certificate
     			properties.setProperty("autoReconnect", "true");
     			
     			Connection con = DriverManager.getConnection(url,properties);
     			PreparedStatement st = con.prepareStatement(sql);

     			ResultSet rs =st.executeQuery();
     		
     			while  (rs.next()) {
				
				out.print("<option value=\"" +rs.getInt(1)+ "\">" + rs.getString(2) +"</option>");				

     			}
     			con.close();
    		} catch (Exception e) {
    			e.printStackTrace();}
             
             %>
             
             </td>
           </select>
          </tr>
          
          
          <tr> 
             <th align="right">Select Design:</th>
             <td><input type="file" name="file"/></td>
          </tr>
          
          
          <tr> 
             <th align="right">Name your design:</th>
             <td><input type="text" name="imageName"/></td>
           </tr>
           <tr> 
           <td><input type="submit" value="Submit" style="margin:0;"></input></td>
            <td><input type="reset" value="Reset" style="margin:0;"></input></td>
           </tr>
          </table>
        </form>
        </div>
        <% 
             Cookie category = new Cookie("category", request.getParameter("category"));
             response.addCookie(category);
             %>
      </body>
</html>