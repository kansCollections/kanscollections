<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
/* Style the header */
body
{height: 700px;
background-color: #ddd;
 }
.top img {
    float: center;
    height: 70px; /* Should be removed. Only for demonstration */
    width: 590px;
background-color: #ddd;
}
  .header img {
    float: left;
   
    height: 600px; /* Should be removed. Only for demonstration */
    width: 70px;
background-color: #ddd;
}
.content 
{
  float: left;
  height: 600px; 
  width: 450px;
background-color: #ddd;
}
.content form
{
align-content: center;
  float: center;
  height: 600px; 
   width: 70%; 
background-color: #ddd;
}
.content h3
{
align-content: center;
float: center;
}
.content fieldset 
{
width: 400px

 }
 
.footer img {
    float: left;

    height: 600px; /* Should be removed. Only for demonstration */
    width: 70px;
background-color: #ddd;
}

 .bottom img 
 {

padding: 0px 0px 0px 0px;

    float: left;
   height: 70px; /* Should be removed. Only for demonstration */
    width: 590px;
background-color: #ddd;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="top"> 
<img src="kans/../resources/images/topfeed.jpg" width="350" height="500" />
 </div>
 
<div class="header"> 
<img src="kans/../resources/images/FeedHead.jpg" width="350" height="500" />
 </div>
 
 <div class="content">
<form method="get" action="addfeedback" >

 <table border="1" cellpadding="5" cellspacing="2">
<h3> Give your feedback here: </h3>

Your name: <br>
<input type="text" name="realname"><br>
<br>

Your email: <br>
<input type="text" name="email"><br>
<br>

Your Product Type: <br>
<input type="text" name="product"><br>

<br>
Your Favorite Service: <br>
<input type="text" name="service"><br>
<br>

Your comments: <br>
<textarea name="comments" rows="10" cols="50"></textarea><br><br>


<fieldset class="rating"> 
    <legend>Please rate:</legend>
    <input type="radio" id="star1" name="rating" value="1" /><label for="star5" title="Sucks big time">1 star</label>
    <input type="radio" id="star2" name="rating" value="2" /><label for="star4" title="Kinda bad">2 stars</label>
    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Meh">3 stars</label>
    <input type="radio" id="star4" name="rating" value="4" /><label for="star2" title="Pretty good">4 stars</label>
    <input type="radio" id="star5" name="rating" value="5" /><label for="star1" title="Rocks!">5 stars</label>
</fieldset>

<input type="submit" value="Submit">


</table>
</form>

 </div>
 <div class="footer"> 
<img src="kans/../resources/images/FeedFoot.jpg" width="350" height="500" />
 </div>
 
 <div class="bottom"> 
<img src="kans/../resources/images/bottomfeed.jpg" width="350" height="500" />
 </div>
</body>
</html>