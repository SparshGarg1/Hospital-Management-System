<%@page errorPage="component/error.jsp" %>
<%@ include file="component/db.jsp" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
        .container{
            position: relative;
            top: 25vh;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
        .box1{
            border: 2px solid rgb(173, 167, 167);
            padding: 55px;
            border-radius: 10px;
            width: 300px;
            text-align: center;
            margin: 0 12px;
            box-shadow: 10px 10px lightblue;
            color: #212529;
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
    <a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i> Medi<span style="color:red;">Home</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mb-2 mb-lg-0">
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

<!-- Showing Doctor Count -->

<%
String qr = "select * from doctor";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
int i=0;
while(rs.next())
{
	i++;
}
%>

<!--user count  -->
<%
String qr1 = "select * from user";
Statement st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery(qr1);
int j=0;
while(rs1.next())
{
	j++;
}
%>

<!--Appoinment count  -->
<%
String qr2 = "select * from appoinment";
Statement st2 = con.createStatement();
ResultSet rs2 = st2.executeQuery(qr1);
int k=0;
while(rs2.next())
{
	k++;
}
%>

<!-- creating 3 box for showing data  -->
<div class="container">
        <div class="doc box1">
            <i class="fa fa-user-doctor fa-3x" "></i>
            <h2>Total Doctors</h2>
            <h2><%=i %></h2>
        </div>
        <div class="user box1">
            <i class="fa fa-user fa-3x"></i>
            <h2>Total User</h2>
            <h2><%=j %></h2>
        </div>
        <%-- <div class="appo box1">
            <i class="fa fa-calendar-check fa-3x"></i>
            <h2>Total Appoinments</h2>
            <h2><%=k %></h2>
        </div> --%>
    </div>
</body>
</html>