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
<style>
.contain{
            margin: 5vh auto;
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
</head>
<body>
<%
String id1 = request.getParameter("id1");
String qr = "select * from doctor where id=?";
PreparedStatement st = con.prepareStatement(qr);
st.setString(1, id1);
ResultSet rs = st.executeQuery();
if(rs.next())
{
	    String name = rs.getString("name");
		String dob = rs.getString("dob");
		String qualification = rs.getString("qualification");
		String specialist = rs.getString("specialist");
		String email = rs.getString("email");
		String mobile = rs.getString("mobile");
		%> 
		<div class="contain">
        <p class="head">Update Doctor Details</p>
        <form action="UpdateDoctor?id1=<%=id1 %>" method="post">
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
            <p>Email</p>
            <div>
                <input type="email" name="email" value="<%= email%>">
            </div>
        </div>
        <div class="bo">
            <p>Mobile</p>
            <div>
                <input type="text" name="mobile" value="<%= mobile%>">
            </div>
        </div>
        <button type="submit"  class="loginBtn">Update Doctor Details</button> 
        </form>
    </div>
		<%
}
else
{
	out.println("no record found");
}
%>

</body>
</html>