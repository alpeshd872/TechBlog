<%@page import="com.coder.blog.entities.User"%>
<%@page errorPage="errorpage.jsp"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("loginpage.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
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
        <!-- NavBar -->
        <nav class="navbar sticky-top navbar-expand-lg navbar-light primary-background">
            <a class="navbar-brand" href="index.jsp">Tech Blog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Learn Code <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Programming Language</a>
                            <a class="dropdown-item" href="#">Project Implementation</a>

                            <a class="dropdown-item" href="#">Data Structure</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>


                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"> <%= user.getUsername()%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="LogOut"><span class="fa fa-sign-out"></span>Log Out</a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- End of NavBar -->
        <!-- Start of profile Modal-->

        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content ">
                    <div class="modal-header primary-background">
                        <h5 class="modal-title " id="exampleModalLongTitle">Profile </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="container text-center">
                            <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius:50%; max-width:150px; "/><br>
                            <h5 class="modal-title mt-3" id="exampleModalLongTitle"><%= user.getUsername()%> </h5>
                            <!-- End of profile Modal -->
                            <!--//details-->

                            <div id="profile-details">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row"> ID :</th>
                                            <td> <%= user.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row"> Email : </th>
                                            <td><%= user.getEmail()%></td>

                                        </tr>

                                        <tr>
                                            <th scope="row">Status :</th>
                                            <td><%= user.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registered on :</th>
                                            <td><%= user.getDateTime().toString()%></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!--//End of details-->
                        </div>
                    </div>
                    <!-- Profile edit-->
                    <div id="profile-edit" style="display:none;">
                        
                        <form action="EditServlet" method="post" enctype="multipart/form-data">
                            <table class="table">
                                <tr>
                                    <td>ID :</td>
                                    <td><%= user.getId()%></td>
                                </tr>
                                <tr>
                                    <td>Email :</td>
                                    <td> <input type="email" class="form-control" name="user_email" value="<%= user.getEmail()%>" > </td>
                                </tr>
                                <tr>
                                    <td>Name :</td>
                                    <td> <input type="text" class="form-control" name="user_name" value="<%= user.getUsername()%>" > </td>
                                </tr>
                                <tr>
                                    <td>Password :</td>
                                    <td> <input type="password" class="form-control" name="user_password" value="<%= user.getPassword()%>" > </td>
                                </tr>
                                
                                <tr>
                                    <td>About  :</td>
                                    <td>
                                        <textarea rows="3" class="form-control" name="user_about" ><%= user.getAbout()%>
                                        </textarea>

                                    </td>
                                </tr>
                                <tr>
                                    <td>New Profile:</td>
                                    <td>
                                        <input type="file" name="image" class="form-control" >
                                    </td>
                                </tr>

                            </table>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-success ">Save</button>
                            </div>

                        </form>    

                    </div>

               




            
            <!-- End of Profile Edit-->
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Close</button>
                <button id="edit-profile-button"type="button" class="btn btn-outline-info">Edit</button>
            </div>
        </div>
    </div>
</div>



<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>    
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/script.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        let editStatus = false;
        $('#edit-profile-button').click(function () {
            if (editStatus === false) {
                $("#profile-details").hide();
                $("#profile-edit").show();
                editStatus = true;
                $(this).text("Back");

            } else {
                $("#profile-details").show();
                $("#profile-edit").hide();
                editStatus = false;
                $(this).text("Edit");
            }
        });
    });

</script>
</body>
</html>
