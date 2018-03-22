<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
    <style>
   
.header {
    
    padding: 5px;
    height:200px;
    background-image: url(ProductPrmo/../resources/images/PickDisplayBC.jpg);
    <!--background-position: right bottom, left top;-->
    float: right;
   }
   
 .header h1 
 {
    text-align: center;
    color:  #FFFF00;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
    font-family: italic, bold, cursive;
    font-size:45px;
    float: center;
 }  
 
 .body  h5
 {
    text-align: center;
    color: #0000CC;
    font-family: italic, bold, cursive;
    font-size:18px;
    float: center;
 }  
 
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
    
  </head>

  <body >
  <div class="header">
      <h1 font-family = "Merienda" font-size ="22px" >Create, Comment, Compare.</h1>
      
   </div>
    
 <div class="body" align="center" style="background-color:#FFFFCC; height: 2000px">
 <br> <br> 
  <form action="pick" method="get" name="myForm1">
  
  
 <!-- Multiple buttons calling different actions -->
 
  <!-- To go to Search page -->
  <input name="pickbtn" type="submit" class="btn" value="SEARCH" />
  
  <!-- To go to Delete page -->
  <input name="pickbtn" type="submit" class="btn" value="DELETE" />
  
  <!-- To go back to home page will talk to the indexController -->
      <input type="submit" name="pickbtn" class="btn" value="GOHOME"/>
      
  <h5>Contribute to a theme.</h5>
    <h5>Check our designs for your theme.</h5>
  
      <table align='center' style="width: 50%">
      <tr>
      <th>Theme Name </th>
      <th>Theme Look </th>
      <th>Comment</th>
      <th>Rating</th>
      </tr>
      
  
   
<%@ page import="com.kanCollections.kans.dao.getImage" %>
<%@ page import="java.sql.ResultSet" %>
<% 
 // To build the radioselection values dynamically using the resultset from the database
	getImage imgtest = new getImage();
    ResultSet listofrowids;
    listofrowids=imgtest.get();
//out.print("<form action=\" Search \" method=\"post \">");
	//for (int i=1 ; i<= imgtest.get(); i++  ){
		int i;
	do {
		i=listofrowids.getInt(1);
		//out.print("<tr> <td align='center'>"+  i + "</td><td align='center'><img src=\"image?id="+i+"\" width=\"117\" height=\"150\"</td></tr>" );
		out.print("<tr> <td align='center'>" + " <input type=\"radio\" name=\"Radioselection\"  value=\""+ i+"\"> " +imgtest.getName(i) +  "</td><td align='center'><img src=\"GetPicture?id="+i+"\" width=\"117\" height=\"150\"</td>" );
		//out.print("<td> </td> <td> </td></tr>"  );
	out.print("<td> <textarea rows=\"10\" cols=\"40\" name=\"comment\" name=\"comment" +i + "\" >Enter Comments here... </textarea></td> <td> </td></tr>"  );
		
	}while(listofrowids.next());
//	out.print("</form>");
%>



      </table>
      
      </form>
     <!--    creating a cookie object and assigning the radioselection value to the cookie object -->
              <% 
             Cookie prdName = new Cookie("Radioselection", request.getParameter("Radioselection"));
             response.addCookie(prdName); //adding cookie in the response 
             %>
     </div>
      </body>
       
</html>