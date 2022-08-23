<%@page import="sun.font.CreatedFontTracker"%>
<%@page import="com.sun.org.glassfish.gmbal.IncludeSubclass"%>
<%@page errorPage="component/error.jsp" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        
        .main{
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            position: absolute;
            margin:auto;
        }

       .tr1 {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        .show1{
            text-align: center;
            margin: 5vh 2vw;
            width:60%;
            background: rgb(15, 15, 15);
            border-radius: 20px;
            color: white;
            padding: 2em;
        }
        .contain{
            margin: 5vh 2vw;
            width:80%;
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
<%@ include file="component/allcss.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	HttpSession ses=request.getSession();
	String id=(String) ses.getAttribute("uid");
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#222831;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i>Medi<span style="color:red;">Home</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminportal.jsp">HOME</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admindoctor.jsp">DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="adminpatient.jsp">PATIENT</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Admin
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="AdminLogout">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<section class="main">
    <div class="contain">
        <p class="head">Doctor Registration</p>
        <form action="DoctorReg" method="post">
        <div class="bo">
            <p>Name</p>
            <div>
                <input type="text" name="name" id="" placeholder="Enter Name">
            </div>
        </div>
        <div class="bo">
            <p>Date Of Birth</p>
            <div>
                <input type="text" name="dob" id="" placeholder="YYYY-MM-DD">
            </div>
        </div>
        <div class="bo">
            <p>Qualification</p>
            <div>
                <input type="text" name="qualification" id="" placeholder="Enter Qualification">
            </div>
        </div>
        <div class="bo">
            <p>Specialization</p>
            <div>
                <input type="text" name="specialist" id="" placeholder="Enter Specialization">
            </div>
        </div>
        <div class="bo">
            <p>Email</p>
            <div>
                <input type="email" name="email" id="" placeholder="Enter Email">
            </div>
        </div>
        <div class="bo">
            <p>Mobile</p>
            <div>
                <input type="text" name="mobile" id="" placeholder="Enter Mobile Number">
            </div>
        </div>
        <div class="bo">
            <p>Password</p>
            <div>
                <input type="password" name="password" id="" placeholder="Enter Password">
            </div>
        </div> 
        <button type="submit"  class="loginBtn">Register Doctor</button> 
        </form>
    </div>
    <%@ include file="component/db.jsp" %>
    <div class="show1">
        <p class="head">Doctor Details</p>
        <table>
            <tr class="tr1">
              <th class="tr1">S.No</th>
              <th class="tr1">Name</th>
              <th class="tr1">D.O.B</th>
              <th class="tr1">Qualification</th>
              <th class="tr1">Specialization</th>
              <th class="tr1">Email</th>
              <th class="tr1">Mobile</th>
              <th class="tr1">Action</th>
            </tr>
            
            <%
             String qr = "select * from doctor";
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(qr);
             if(rs.next())
             {
            	 do{
            	int id1 = rs.getInt("id");
            	String name = rs.getString("name");
         		String dob = rs.getString("dob");
         		String qualification = rs.getString("qualification");
         		String specialist = rs.getString("specialist");
         		String email = rs.getString("email");
         		String mobile = rs.getString("mobile");
         		%>
         		<tr class="tr1">
                <th class="tr1"><%=id1 %></th>
                <th class="tr1"><%=name %></th>
                <th class="tr1"><%=dob %></th>
                <th class="tr1"><%=qualification %></th>
                <th class="tr1"><%=specialist %></th>
                <th class="tr1"><%=email %></th>
                <th class="tr1"><%=mobile %></th>
                <th class="tr1"><a href="admindoctoredit.jsp?id1=<%=id1 %>" style="text-decoration:none; color:	rgb(66, 186, 150);">Edit <i class="fa-solid fa-pen-to-square"></i></a><a href="DoctorDelete?id=<%=id1 %>" style="color: red; text-decoration:none;"> Delete <i class="fa-solid fa-trash-can"></i></a></th>
              </tr>
              <% 
            	 }while(rs.next());
             }
             else{
            	 out.println("no record found");
             }
            %>
            
          </table>
    </div>
</section>
</body>
</html>