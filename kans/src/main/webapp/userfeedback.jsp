<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><form method="get" action="addfeedback" >

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
<textarea name="comments" rows="15" cols="50"></textarea><br><br>



<fieldset class="rating">
    <legend>Please rate:</legend>
    <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Rocks!">5 stars</label>
    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Pretty good">4 stars</label>
    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Meh">3 stars</label>
    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Kinda bad">2 stars</label>
    <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sucks big time">1 star</label>
</fieldset>


<input type="submit" value="Submit">
</form>

</body>
</html>