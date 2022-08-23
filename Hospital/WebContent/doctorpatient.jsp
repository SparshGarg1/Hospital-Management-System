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
            flex-direction: row;
            justify-content: center;
            flex-wrap: wrap;
            height: 100vh;
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
            width:70%;
            background: rgb(15, 15, 15);
            border-radius: 20px;
            color: white;
            padding: 2em;
        }
        .contain{
            margin: 5vh 2vw;
            width:80%;
            
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
       .contain img{
       border-radius: 25px;
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
          <a class="nav-link active" aria-current="page" href="doctorpatient.jsp">PATIENT</a>
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

<section class="main">
<div class="contain">
       <img alt="" src="img/doc-3.jpg">
    </div>
    <div class="show1">
        <p class="head">Appoinment Details</p>
        <table>
            <tr class="tr1">
              <th class="tr1">Patient Name</th>
              <th class="tr1">Gender</th>
              <th class="tr1">Age</th>
              <th class="tr1">Appoinment Date</th>
              <th class="tr1">Email</th>
              <th class="tr1">Phone No.</th>
              <th class="tr1">Disease</th>
              <th class="tr1">Status</th>
              <th class="tr1">Action</th>
            </tr>
            
            <%
             String qr1 = "select * from appoinment where doctor=?";
             PreparedStatement ps1 = con.prepareStatement(qr1);
             ps1.setInt(1, id1);
             ResultSet rs1 = ps1.executeQuery();
             if(rs1.next())
             {
            	 do{
            	String Name = rs1.getString("name");
         		String Gender = rs1.getString("gender");
         		int Age = rs1.getInt("age");
         		String Appdate = rs1.getString("appdate");
         		String Email = rs1.getString("email");
         		String Mobile = rs1.getString("mobile");
         		String Doctor= "";
         		String Disease = rs1.getString("Disease");
         		String Doctorns = rs1.getString("doctor");
         		String Status = rs1.getString("status");
         		String qr2 = "select * from doctor where id=?";
                PreparedStatement ps2 = con.prepareStatement(qr2);
                int Doctorn = Integer.parseInt(Doctorns);
                ps2.setInt(1, Doctorn);
                ResultSet rs2 = ps2.executeQuery();
                if(rs2.next())
                {
                	Doctor = rs2.getString("name");
                }
         		%>
         		<tr class="tr1">
                <td class="tr1"><%=Name %></td>
                <td class="tr1"><%=Gender %></td>
                <td class="tr1"><%=Age %></td>
                <td class="tr1"><%=Appdate %></td>
                <td class="tr1"><%=Email %></td>
                <td class="tr1"><%=Mobile %></td>
                <td class="tr1"><%=Disease %></td>
                <form action="StatusUpdate?email=<%=Email %>" method="post">
                <td class="tr1"><input type="text" name="status" value=<%=Status %>></td>
        		<td class="tr1"><button type="submit"  class="loginBtn">Update</button> </td>
        		</form>
              </tr>
              <% 
            	 }while(rs1.next());
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