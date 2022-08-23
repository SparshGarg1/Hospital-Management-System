<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login Page</title>
<%@ include file="component/allcss.jsp" %>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
/* *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
*/
body{
    height: 100vh;  
    background: black;
} 
.contain{
	margin: 20vh auto;
	width:80%;
    background: rgb(15, 15, 15);
    width: 350px;
    height: 450px;
    border-radius: 20px;
    display: flex;
    justify-content: center;
    flex-direction: column;
    color: white;
    padding: 2em;
}


.head{
    font-size: 2em;
    margin-bottom: 0.5em;
}
.bo {
    margin: 0.2em 0;
}
.contain .bo p{
    color: rgba(255, 255, 255, 0.781);
}
.contain .bo div{
    position: relative;
    width: 100%;
    height: 40px;
    margin: 0.5em 0;
}
.contain .bo input{
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgb(19, 19, 19);
    color: white;
    border: none;
    outline: none;
    padding-left: 0.8em;
    border-radius: 10px;
    transition: all .4s
}

.contain .bo input:focus::placeholder{
    color: white;
}
.contain .bo div::before{
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 102%;
    height: 105%;
    border-radius: 10px;
    background: linear-gradient(to right, #ff416c, #ff4b2b);
}
.loginBtn{
    width: 102%;
    height: 40px;
    border: none;
    border-radius: 10px;
    margin: 0.5em 0;
    transform: translate(-1%);
    cursor: pointer;
    color: white;
    background: linear-gradient(to right, #ff416c, #ff4b2b);
    transition: all .4s;
}

.loginBtn:hover{
    transform: translate(-1%, 5%);
    box-shadow: 0 0 10px #ff416d65;
}
.text{
    font-size: 0.8em;
    margin-top: 0.5em;
    text-align: center;
    color: rgba(255, 255, 255, 0.623);
}
.text a{
    color: rgba(255, 255, 255, 0.911);
}
</style>
</head>
<body>
<%@ include file="component/navbar.jsp" %>
<div class="contain">
        <p class="head">User SignUp</p>
        <form action="UserSignUp">
        <div class="bo">
            <p>Name</p>
            <div>
                <input type="text" name="name" id="" placeholder="Enter Your Name">
            </div>
        </div>
        <div class="bo">
            <p>Email</p>
            <div>
                <input type="email" name="email" id="" placeholder="Enter Your Email">
            </div>
        </div>
        <div class="bo">
            <p>Password</p>
            <div>
                <input type="password" name="pwd" id="" placeholder="Enter Your Password">
            </div>
        </div> 
        <button type="submit"  class="loginBtn">Register</button>
        </form>
        <p class="text">Already have an account? <a href="user_login.jsp">LogIn</a></p>
    </div>
</body>
</html>