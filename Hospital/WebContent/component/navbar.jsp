<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i> Medi Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fas fa-sign-in-alt"></i> ADMIN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">APPOINMENT</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp">USER</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        
        
      </ul>
    </div>
  </div>
</nav> -->
<style>
<!--
.header{
    
    width: 100%;
    background-image: url("img/banner.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
nav{
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #222831;
}
.logo{
    margin: 20px;
}
.logo a:hover{
    font-size: 40px;
}
.logo a{
    text-decoration: none;
    font-size: 30px;
    color: white;
}
.logo span{
    color: rgb(251, 8, 8);
    font-size: 30px;
}
.nav-links{
   text-align: right;
}
.nav-links ul{
    display: flex;
    margin: 20px;
}
.nav-links ul li{
    display: flex;
    display: inline-block;
    padding: 8px 12px;
    position: relative;
}
.nav-links ul li a{
    text-decoration: none;
    font-size: 20px;
    color: #fff;
}

.nav-links ul li a:hover{
    background-color: gray;
    color: black;
    padding: 15px;
    border: 3px solid black;
    border-radius: 12px;
    margin: 3px;
}
nav .fa{
    display: none;
}
@media(max-width: 700px){
    
    .nav-links ul {
        display: flex;
        flex-direction: column;
     }
     .nav-links ul li{
        margin-bottom: 25%;
        margin-top: 25%;
     }
    .nav-links ul li a{
        color: black;
        font-weight: 600;
     }
    
     
     .nav-links{
        position: absolute;
        top: 0;
        right: -200px;
        background-color: orange;
        height: 100vh;
        width: 200px;
        z-index: 1;
        text-align: left;
     }
     nav .fa{
         display: block;
         color: #fff;
         margin: 10px;
         font-size: 22px;
     }
     .nav-links ul{
         padding: 30px;
         transition-delay: 2s;
     }
}
/* .text-area{
    border: 2px solid green;
    position: relative;
    margin: auto;
    top: 20vh;
    width: 90%;
}
.text-area h3{
    color: rgb(87, 21, 21);
    font-size: 28px;
}
.text-area h1{
    font-size: 35px;
} */


.h1_tag{
    
        font-size: 36px;
        font-weight: 600;
        text-align: center;
    }

.h3_tag{
    
        font-size: 20px;
        text-align: center;
        color: crimson;
    }
-->
</style>
<section class="header" id="header">
      <nav>
        <div class="logo" ><a href="index.html"><i class="fas fa-clinic-medical"></i> Medi<span>Home</span></a></div>
        <div class="nav-links" id="navLinks">
            <i class="fa fa-window-close" aria-hidden="true" onclick="hideMenu()"></i>
            <ul>
                <li><a href="index.jsp">HOME</a></li>
                <li><a href="admin_login.jsp">ADMIN</a></li>
                <li><a href="doctor_login.jsp">DOCTOR</a></li>
                <li><a href="user_login.jsp">USER</a></li>
            </ul>
        </div>
        <i class="fa fa-bars" aria-hidden="true" onclick="showMenu()"></i>
      </nav>
      <!-- <div class="text-area">
        <h3>Hello, my name is</h3>
        <h1>Sparsh Garg</h1>
        <h3>and I'm a Developer</h3>
      </div> -->
    </section>