<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Page</title>
<%@ include file="component/allcss.jsp" %>
<style>
    .main{
        /* border: 2px solid green; */
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding-top: 25px;
    }
    .heading{
        border: 2px solid black;
        position: relative;
        text-align: center;
        padding: 0%;
        width: 20%;
        background-color: #198754;
        
    }
    /* Bordered form */
form {
border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
width: 100%;
padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid #ccc;
box-sizing: border-box;
}

/* Set a style for all buttons */
button {
background-color: #04AA6D;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
width: auto;
padding: 10px 18px;
background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
text-align: center;
margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
width: 40%;
border-radius: 50%;
}

/* Add padding to containers */
.container {
padding: 16px;
}

/* The "Forgot password" text */
span.psw {
float: right;
padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
span.psw {
display: block;
float: none;
}
.cancelbtn {
width: 100%;
}
}
</style>
</head>
<body>
<%@ include file="component/navbar.jsp" %>
<div class="main">
    <div class="heading">
        <h1>Admin Login</h1>
    </div>
    
        <form action="AdminL" method="post">
            <div class="container" class="formc">
              <label for="uname"><b>Username</b></label>
              <input type="text" placeholder="Enter Username" name="id" required>
          
              <label for="psw"><b>Password</b></label>
              <input type="password" placeholder="Enter Password" name="pwd" required>
          
              <button type="submit">Login</button>
              <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
              </label>
            </div>
          </form>
    
</div>
</body>
</html>











