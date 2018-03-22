<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
/* Style the header */
.header {
    padding: 5px;
    height:100px;
    background-image: url(kans/../resources/images/LoginHead.jpg);
    <!--background-position: right bottom, left top;-->
    float: right;
   }
    .login
{
    float: center;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
    background-image: url(kans/../resources/images/LoginBC.jpg);
   <!-- width: 100%;-->
    float: Center;
}
 .login h1
 {
 	text-align:center;
 	text-shadow: 0 0 3px #FF0000, 0 0 5px #0000FF;
    color: #FF0066;
    font-family: italic, bold, Papyrus;
    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
    font-size:20px;
    font-weight: 900;
    
  }
  .footer {
    padding: 5px;
    height:100px;
    background-image: url(kans/../resources/images/LoginHead.jpg);
    <!--background-position: right bottom, left top;-->
    float: right;
   }
 </style>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<div class="header"> 
 </div>
<div class="login">
 <br><br>
 <h1 > Enter KansCollections Choice...</h1>
       <form method="post" action="validate_usr">
            <center>
            <table border="1" cellpadding="5" cellspacing="2">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="name" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" />
                            &nbsp;&nbsp;
                            <input type="reset" value="Reset" />
                        </td>                        
                    </tr>                    
                </tbody>
            </table>
            </center>
        </form>
     </div>
  <div class="footer"> 
 </div>   
</body>
</html>