<%@page import="java.sql.ResultSet"%>
<%@page errorPage="component/error.jsp" %>
<%@ include file="component/db.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allcss.jsp" %>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        .main{
            display: flex;
            align-items: center;
            justify-content:space-between;
            flex-wrap: wrap;
        }
    
        .contain{
            margin: 5vh 30vh;
            background: rgb(15, 15, 15);
            width: 350px;
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
            text-align: center;
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
            background: rgb(255, 255, 255);
            color: rgb(0, 0, 0);
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
<% 
	HttpSession ses=request.getSession();
	String email =(String) ses.getAttribute("uid");
	int id1=0; 
	String name = "";
	String dob = "";
	String qualification = "";
	String specialist = "";
	String mobile = "";
	String qr = "select * from doctor where email=?";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{
		id1 = rs.getInt("id");
		name = rs.getString("name");
		dob = rs.getString("dob");
		qualification = rs.getString("qualification");
		specialist = rs.getString("specialist");
		mobile = rs.getString("mobile");
		
	}
%>
<!-- navbar  -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#222831;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i> Medi<span style="color:red;">Home</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctorportal.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">PATIENT</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <%=name %>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
          	<li><a class="dropdown-item" href="doctoreditprofile.jsp">Edit Profile</a></li>
            <li><a class="dropdown-item" href="DoctorLogout">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- form -->
<div class="main">
    <div class="contain">
        <p class="head">Change Password</p>
        <form action="ChangePasswordFromDoctorEditProfile?id=<%= id1 %>" method="post">
        <div class="bo">
            <p>New Password</p>
            <div>
                <input type="password" name="npwd" id="" placeholder="Enter new Password" required>
            </div>
        </div>
        <div class="bo">
            <p>Old Password</p>
            <div>
                <input type="password" name="pwd" id="" placeholder="Enter Old Passwords" required>
            </div>
        </div>
        <button type="submit"  class="loginBtn">Change Password</button> 
        </form>
    </div>
    <div class="contain">
        <p class="head">Profile Details</p>
        <form action="UpdateDoctorfromdoctoreditprofile?id1=<%=id1 %>" method="post">
        <div class="bo">
            <p>Name</p>
            <div>
                <input type="text" name="name" value="<%= name%>">
            </div>
        </div>
        <div class="bo">
            <p>Date Of Birth</p>
            <div>
                <input type="text" name="dob" value="<%= dob%>">
            </div>
        </div>
        <div class="bo">
            <p>Qualification</p>
            <div>
                <input type="text" name="qualification" value="<%= qualification%>">
            </div>
        </div>
        <div class="bo">
            <p>Specialization</p>
            <div>
                <input type="text" name="specialist" value="<%= specialist%>">
            </div>
        </div>
        
        <div class="bo">
            <p>Mobile</p>
            <div>
                <input type="text" name="mobile" value="<%= mobile%>">
            </div>
        </div>
        <button type="submit"  class="loginBtn">Update</button> 
        </form>
    </div>
</div>
</body>
</html>