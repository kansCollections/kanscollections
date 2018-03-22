<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
    <style>
    
    .header {
    
    padding: 5px;
    height:150px;
    background-image: url(ProductPrmo/../resources/images/PickBC.jpg);
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
   
.floating-box {
    display: inline-block;
    width: 175px;
    height: 185px;
    margin: 10px;
    box-shadow: 5px 5px 25px black;
    align=middle;
}


</style>
    
  </head>

  <body >
  <form action="main" method="post" name="myForm1">
  <div class="header"> 
  <h1> The Designs For Your Theme! </h2>
      </div>
  <br><br>
   
<%@ page import="com.kanCollections.kans.dao.getDesigns" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.sql.ResultSet" %>
<%


System.out.println("Attri, ID  "+ request.getSession().getAttribute("id"));

//Commeting Cookies
//Cookie[] cookies = request.getCookies();
//for (int i = 0; i < cookies.length; i++) {
//  String name = cookies[i].getName();
//  String value = cookies[i].getValue();
 // System.out.println("nm "+ name);
 //  System.out.println("val  "+ value);
//	};

  getDesigns imgtest = new getDesigns();
  ResultSet listofrows; 
  String  radioID= request.getSession().getAttribute("id").toString();
  listofrows=imgtest.getName( Integer.parseInt(radioID) );
  
	//while (listofrows.next())
do
	{
	out.print("<div class=\"floating-box\">");
	out.print("<img src=\"GetSearchPic?id="+listofrows.getString(1)+"\" align=\"middle\" width=\"117\" height=\"150\">");
	out.print("<p>"+listofrows.getString(2) +"</p>");
	out.print("</div>");
	}while (listofrows.next());
	
%>
<br> <br>
      <!-- To go back to home page will talk to the indexController -->
      <input type="submit" id="mySubmit" value="Goback">
      </form>
      </body>
</html>