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
        .image img{
            margin: 5vh 30vh;
            border-radius: 15px;
            filter: brightness(80%);
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
       
        select{
            position: relative;
            width: 100%;
            height: 40px;
            margin: 0.5em 0;
            border-radius: 10px;
            /* background: linear-gradient(to right, #ff416c, #ff4b2b); */
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
<!-- Fetching Detail os User -->
<%
	HttpSession ses = request.getSession();
	String email = (String) ses.getAttribute("email");
	String qrp = "select * from user where email=?";
	PreparedStatement ps = con.prepareStatement(qrp);
	ps.setString(1, email);
	String name="";
	ResultSet rsp = ps.executeQuery();
	if(rsp.next())
	{
	name = rsp.getString("name");
	}
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#222831;">
  <div class="container-fluid">
    <a class="navbar-brand" href="userportal.jsp"><i class="fas fa-clinic-medical"></i> Medi<span style="color:red;">Home</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userportal.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userappoinment.jsp">APPOINMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="userviewappoinment.jsp">VIEW APPOINMENT</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <%=name %>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
          	<li><a class="dropdown-item" href="userchangepassword.jsp?email=<%= email %>">Change Password</a></li>
            <li><a class="dropdown-item" href="UserLogout">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>


<div class="main">
    <div class="image">
        <img src="img/doc-3.jpg" alt="">
    </div>
    <div class="contain">
        <p class="head">User Appoinment</p>
        <form action="UserAppoinmentSubmit?email=<%=email %>" method="post">
        <div class="bo">
            <p>Full Name</p>
            <div>
                <input type="text" name="name" placeholder="Enter Patient Name">
            </div>
        </div>
        <label for="gender" class="bo">Gender</label>
            <select id="gender" name="gender" >
             <option value="Male">Male</option>
             <option value="Female">Female</option>
             <option value="Others">Others</option>
        </select>
        <div class="bo">
            <p>Age</p>
            <div>
                <input type="text" name="age" placeholder="Enter Patient Age">
            </div>
        </div>
        <div class="bo">
            <p>Appoinment Date</p>
            <div>
                <input type="text" name="appdate" placeholder="YYYY-MM-DD">
            </div>
        </div>
        <div class="bo">
            <p>Email</p>
            <div>
                <input type="email" name="email" placeholder="Enter your Email">
            </div>
        </div>
        <div class="bo">
            <p>Phone No.</p>
            <div>
                <input type="text" name="mobile" placeholder="Enter Your Phone Number">
            </div>
        </div>
        <div class="bo">
            <p>Disease</p>
            <div>
                <input type="text" name="Disease" placeholder="Enter Your Disease">
            </div>
        </div>
       
        <label for="doctor" class="bo">Choose a Doctor:</label>
            <select id="doctor" name="doctor" >
            <%
            	String qr1 = "select * from doctor";
            	PreparedStatement ps1 = con.prepareStatement(qr1);
            	ResultSet rs1 = ps1.executeQuery();
            	if(rs1.next())
            	{
            		do
            		{
            			int id = rs1.getInt("id");
            			String dname = rs1.getString("name");
            			%>
            		
            			<option value=<%=id%>><%=dname%></option>
            			<%
            		}
            		while(rs1.next());
            	}
            	con.close();
            %>
        </select>
        
        <button type="submit"  class="loginBtn">Submit</button> 
        </form>
    </div>
</div>

</body>
</html>