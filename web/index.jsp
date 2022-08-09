

<%@page import="com.coder.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- css -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(100% 0, 100% 95%, 80% 98%, 60% 98%, 38% 97%, 19% 96%, 0 100%, 0 0);
            }
            
        </style>
    </head>
    <body>
       <!-- Navbar  -->
       <%@include file="navbar.jsp" %>
       <!-- Banner -->
       <div class="container-fluid p-0 m-0">
           <div class="jumbotron  primary-background banner-background">
               <div class="container">
                   <h3 class="display-3">Welcome To Tech Blog</h3>
                   <p>Welcome to the world of coding Blog.
                   This website will help the coders to share their knowledge with their peers and friends.
                   The website helps the new coders to learn new technologies since the community of tech blog is much bigger and wider.
                   Coders can share their ideas as well on the upcoming technologies.
                   </p>
                   <a href="registerpage.jsp" class="btn btn-outline-dark btn-lg"><span class="fa fa-user-plus"></span> Let's Start</a>
                   <a href="loginpage.jsp" class="btn btn-outline-dark btn-lg"><span class="fa fa-user-circle-o "></span> Login</a>
               </div>               
               
           </div>
           
       </div>
       <!-- cards -->
       <div class="container">
           <div class="row mb-3">
               <div class="col-md-4">
                  <div class="card" >
                      <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-dark">Read More</a>
                      </div>
                  </div> 
                 </div>
               <div class="col-md-4">
                  <div class="card" >
                      <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-dark">Read More</a>
                      </div>
                  </div> 
                 </div>
               <div class="col-md-4">
                  <div class="card" >
                      <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-dark">Read More</a>
                      </div>
                  </div> 
                 </div>
           </div>
           
            <div class="row">
               <div class="col-md-4">
                  <div class="card" >
                      <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-dark">Read More</a>
                      </div>
                  </div> 
                 </div>
               <div class="col-md-4">
                  <div class="card" >
                      <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-dark">Read More</a>
                      </div>
                  </div> 
                 </div>
               <div class="col-md-4">
                  <div class="card" >
                      <div class="card-body">
                          <h5 class="card-title">Java Programming</h5>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                          <a href="#" class="btn btn-outline-dark">Read More</a>
                      </div>
                  </div> 
                 </div>
           </div>
       </div>
       
       
        <!-- JavaScript -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>    
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/script.js" type="text/javascript"></script>
        
    </body>
</html>
