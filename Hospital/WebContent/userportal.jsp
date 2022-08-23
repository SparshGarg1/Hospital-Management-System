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

<!-- index page code copy as page should look same  -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos1.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos3.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container p-3">
<h1 class="text-center fs-2">Key Feature Of Hospital</h1>
<div class="card-columns">
  <div class="card bg-primary p-2 m-2 border-dark shadow rounded">
    <div class="card-body text-center">
      <p class="card-text font-weight-bold">100% Safety</p>
    </div>
  </div>
  <div class="card bg-secondary p-2 m-2 border-dark shadow rounded">
    <div class="card-body text-center">
      <p class="card-text font-weight-bold">Friendly Doctors</p>
    </div>
  </div>
  <div class="card bg-success p-2 m-2 border-dark shadow rounded">
    <div class="card-body text-center">
      <p class="card-text">Clean Environment</p>
    </div>
  </div>
  <div class="card bg-danger p-2 m-2 border-dark shadow rounded">
    <div class="card-body text-center">
      <p class="card-text font-weight-bold">Medical Research</p>
    </div>
  </div>
  <div class="card bg-warning p-2 m-2 border-dark shadow rounded">
    <div class="card-body text-center">
      <p class="card-text font-weight-bold">Personalized and specialized  Care for patients</p>
    </div>
  </div>
  <div class="card bg-info p-2 m-2 border-dark shadow rounded">
    <div class="card-body text-center">
      <p class="card-text font-weight-bold">Ultra modern technologies</p>
    </div>
  </div>
</div>
</div>
<hr>


<div class="container p-3">
<h1 class="text-center fs-2">Our Teams</p>
<div class="py-5 text-center text-info background-info" style="">
<div class="container">
<div class="row">
<div class="col-lg-4 col-md-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" alt="Card image cap" width="200" src="img/doc-1.jpg">
<h4 class="text-dark">Dr. John kandy</h4>
<h4 class="mb-0 text-secondary">Cardiologist</h4>
</div>
<div class="col-lg-4 col-md-6 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="img/doc-2.jpg" alt="Card image cap" width="200">
<h4 class="text-dark">Dr. Sam ilana</h4>
<h4 class="mb-0 text-secondary">General surgeon</h4>
</div>
<div class="col-lg-4 p-4"> <img class="img-fluid d-block mb-3 mx-auto rounded-circle" src="img/doc-3.jpg" width="200">
<h4 class="text-dark">Dr. Maria Samantha</h4>
<h4 class="mb-0 text-secondary">Neurosurgeon</h4>
</div>
</div>
</div>
</div> 
</div>


<!-- Footer -->
<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      <!-- Github -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    <!-- Section: Social media -->

    <!-- Section: Form -->
    <section class="">
      <form action="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto">
            <p class="pt-2">
              <strong>Sign up for our newsletter</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
            <div class="form-outline form-white mb-4">
              <input type="email" id="form5Example21" class="form-control" />
              <label class="form-label" for="form5Example21">Email address</label>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-auto">
            <!-- Submit button -->
            <button type="submit" class="btn btn-outline-light mb-4">
              Subscribe
            </button>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </form>
    </section>
    <!-- Section: Form -->

    <!-- Section: Text -->
    <section class="mb-4">
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
        eum harum corrupti dicta, aliquam sequi voluptate quas.
      </p>
    </section>
    <!-- Section: Text -->

    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    � 2020 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->


</body>
</html>