<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload</title>
<style>
.header {
    
    padding: 5px;
    height:200px;
    background-image: url(ProductPrmo/../resources/images/ThemeBC1.jpg);
    <!--background-position: right bottom, left top;-->
    float: right;
   }
 .header h1 
 {
    text-align: center;
    color:  #FF66CC;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
    font-family: italic, bold, cursive;
    font-size:45px;
    float: center;
 }  
 
 .header  h2
 {
    text-align: center;
    color: #FFFF00;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
    font-family: italic, bold, cursive;
    font-size:35px;
    float: center;
 }  
.body  h3
 {
    text-align: center;
    color: #CC0066;
    font-family: italic, bold, cursive;
    font-size:15px;
    float: center;
 }  
 .body  p
 {
    text-align: center;
    color: #990033;
    font-family: italic, bold, cursive;
    font-size:15px;
    float: center;
 }  
 </style>


</head>
<body>
<div class="header">
<h1 font-family = "Merienda" font-size ="22px" >KansCollections Concept!</h1>
      <h2>  Choice Selector... </h2>
 </div>    
<div class="body" align="center" style="background-color:#F2FFFF; height: 1000px">
<br> <br>
      <form action="uploadfile" method="get" enctype="multipart/form-data" >
      <br> 
      <h3>A fun way  of adding your idea to the theme.</h3>
       <p> What kind of a theme is your choice ? </p>
        <table border=“2” align=“center” width=“50%”>  
          <tr> 
             <th align=”center” bgcolor=”#FF3F7C” style=”color:white” colspan= "2">
               <h4>Theme Image Upload</h4>
             </th>
          </tr>
          <tr> 
             <th align="right">Select Image:</th>
             <td><input type="file" name="image"/></td>
          </tr>
          <tr> 
             <th align="right">Select Name:</th>
             <td><input type="text" name="imageName"/></td>
           </tr>
           <tr> 
           <td><input type="submit" value="Submit" style="margin:0;"></input></td>
            <td><input type="reset" value="Reset" style="margin:0;"></input></td>
           </tr>
          </table>
        </form>
   </div>
      </body>
</html>