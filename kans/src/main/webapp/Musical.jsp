<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Test</title>
<link href="<c:url value="/resources/CSS/MusicStyle.css" />" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/JS/Music.js"></script>
<script src="<c:url value="/resources/JS/Music.js" />"></script>
<script src="${MusicJs}"></script>
</head>
<body>
<div class="column1">
<br><br>
<audio controls>
 		<source src="kans/../resources/Motivation AShamaluev.mp3" type="audio/mpeg">
 		Your browser does not support the audio element.
</audio>
   <div class="unbreakable-container">  
  <div class="unbreakable">
    <span class="un">Checkout</span><span class="break">New</span><span class="able">Arrival</span>
  </div>
  <div class="ks"> Spring Collection!</div>
</div>
</div>  
<div class="column2">
<div class="heading"> 
<h1> A musical way to shop... </h1>
<img src="kans/../resources/images/musicHeader.jpg" width="400" height="500" /> 
		
	</div>
	<div>
</div>	
</div>
</body>
</html>