<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
/* Style the header */
.header {
    
    padding: 5px;
    height:200px;
    background-image: url(kans/../resources/images/SariForBackground.jpg);
    <!--background-position: right bottom, left top;-->
    float: right;
   }
   
  .header h1
 {
 	text-align:center;
 	text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
    color: rgb(255, 255, 0);
    font-family: italic, bold, Papyrus;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
    font-size:40px;
    font-weight: 900;
    
  }
  
   .header h2
 {
    text-align: center;
    color: rgb(0, 255, 0);
    font-family: italic, bold, cursive;
    font-size:25px;
    float: center;
 } 
 
 /* Style the top navigation bar */
.topnav ul{
    overflow: hidden;
    background: linear-gradient(to bottom, #000066 0%, #660066 100%);
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.topnav li {
    float: left;
    background: linear-gradient(to bottom, #000066 0%, #660066 100%);
}

/* Style the topnav links */
.topnav  a {
    display: block;
    color: #00FFFF;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    background: linear-gradient(to bottom, #000066 0%, #660066 100%);
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: #00FFFF;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: #00FFFF;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
 
.column1 {
    float: left;
    padding: 10px;
    height: 1000px; /* Should be removed. Only for demonstration */
    width: 25%;
}
 
 .column1 img {
  border-radius: 10%;
  padding: 10px;
 }
 
 .column1 h1
{
 color: hsl(240, 100%, 50%);
 text-align: justify;
}

.column1 p 
{
color: #E4005D; 
font-size:20px;
font-family:Apple Chancery, bold, cursive;
}

.column1 .MusicContainer button 
 {
        
        color: white;
        width: 200px;
        height: 230px;
        border: 0px;
       padding: 0px 0px 10px 65px;
        cursor: pointer;
        
        box-shadow: 2px 2px 5px hsla(0,0%,0%,.7);
        border-radius: 5px;
        background: -webkit-linear-gradient(left, #cdb060 0%,#a5862e 100%); /* Chrome10+,Safari5.1+ */
  }

  .column1 .MusicContainer img 
   {
        display: block;
        left: 0;
        position: absolute;
        top: -2%;
        z-index: 1;
    }
 
    
.column2 
{
    float: left;
    padding: 10px;
    height: 1000px; /* Should be removed. Only for demonstration */
    width: 45%;
    float: Center;
}

.column2 h1
{
 
   font-family:italic, bold, Papyrus;
    color: #990000;
    font-size:  35px;
    text-align: center;
    float: Center;
 }

.column2 h2
{ 
    color: #006900;
    font-size: "5";
    font-family: italic, bold, cursive;
    float: justify;
    text-align: center;
  }


.column3 {
    float: left;
    padding: 10px;
    height: 1000px; /* Should be removed. Only for demonstration */
    width: 25%;
}

 .column3 img {
  border-radius: 10%;
  padding: 10px;
 }

.column3 h1
{
 color: hsl(240, 100%, 50%);
 text-align: justify;
}
.column3 p {
color: #E4005D; 
font-size:20px;
font-family:Apple Chancery,bold, cursive;
}


.column3 .MagicContainer button 
 {       
        float: left;
        color: white;
        width: 200px;
        height: 230px;
        border: 0px;
       cursor: pointer;
        box-shadow: 2px 2px 5px hsla(0,0%,0%,.7);
        border-radius: 5px;
        background: -webkit-linear-gradient(left, #cdb060 0%,#a5862e 100%); /* Chrome10+,Safari5.1+ */
  }

  .column3 .MagicContainer img 
   {
        display: block;
        left: 0;
        position: absolute;
        top: -2%;
        z-index: 1;
    }

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
 
</style>

<!-- Program for adding music to the website using JS -->

 <!--  <script src="<c:url value="kans/../resources/JS/Music.js" />"></script> -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
 <div class="header"> 
  <h1 >KansCollections Choice...</h1>
  <h2>Select a sari that speaks about you!</h2>
 <br><br><br>
  </div>
  
 <div class="topnav">
<ul>
  <li><a href="Home.jsp">Home </a></li>
  <li><a href="Display.jsp">Pick</a></li>
  <div class="dropdown">
    <button class="dropbtn">Participate 
  <i class="fa fa-caret-down"></i>
    </button>
  <div class="dropdown-content">
  <a href="ImageUpload.jsp">Theme Upload</a>
  <a href="Design.jsp"> Design Upload</a>
 </div>
  </div>
  <li><a href="#Pay">Pay</a></li> 
 <li style="float:right"><a href="#Contact">Contact</a></li>
  <li style="float:right"><a href="#CustRegistration">Connect</a></li>
  <li style="float:right"><a href="#Chat">Chat</a></li>                         
  <li style="float:right"><a href="userfeedback.jsp">Convey</a></li>
 </ul>
 </div>
 
  <div class="row">
  <div class="column1" style="background-color:#EAFFCB;">
    <h1>Traditional Eastern...</h1>
    <img src="kans/../resources/images/TradiA.jpg" width="300" height="350" /> 
   <p>Give your personality, a touch of your tradition, check our traditional collections.</p>
  <div class="MusicContainer">
  <ul> <li><a href="Musical.jsp">
  <button class="button" style="background-image:url(kans/../resources/images/musically.jpg)"></button></a></li></ul>
</div>
  </div>
  <div class="column2" style="background-color:#EAFFCB;">
   <h1>...A Customer-centric Selection.</h1>
   <h2>Elect an ensemble that matches your MOOd!!</h2>
</div>

  <div class="column3" style="background-color:#EAFFCB;">  
    <h1>...Trendy Indo-Western </h1>
    <img src="kans/../resources/images/TrendyA .jpg" width="300" height="350" />
    <br>
    <p  >Give your creativity a chance to display, check our trendy Indo-Western collections.</p>
    <div class="MagicContainer">
    <ul> <li><a href="connect.jsp">
  <button class="button" style="background-image:url(kans/../resources/images/magically.jpg)"></button></a></li></ul>
   </div>
    
  <!--  <div class="MagicContainer">
  <img src="kans/../resources/images/magically.jpg" width="90" height="90"  />
  <button class="btn">Connect magically!</button>
  -->
</div>  
  </div>
  
</body>
</html>
