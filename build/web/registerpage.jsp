

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
        <main class="primary-background banner-background" style="padding-bottom:70px">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center primary-background">
                            <span class="fa fa-user-plus fa-3x"></span> <br>Register Here
                        </div>
                        <div class="card-body"> 
                            <form  id="reg-form" action="SignUp" method="POST">

                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input name="user_name" required type="text" class="form-control" id="user_name" aria-describedby="user_name" placeholder="Enter User Name">

                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="user_email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>


                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="user_password" required type="password" class="form-control" id="password" placeholder="Password">
                                </div>

                                <div class="form-group">
                                    <textarea required class="form-control" name="about" id="about"  rows="5" placeholder="Write something about yourself"></textarea>

                                </div>

                                <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree on terms & condition</label>
                                </div><br>
                                <div class="container text-center" id="loader" style="display : none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span><br>  
                                    <h4>Please wait</h4>
                                </div>
                                <div class="container text-center"> 
                                    <button  id="submit-btn" type="submit" class="btn btn-outline-dark">Submit</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>

        <!-- JavaScript -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>    
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/script.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();
                    // send to SignUp Servlet
                    $.ajax({
                        url: "SignUp",
                        type: "POST",
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'Done') {

                                swal("Registration Complete..redirecting to login page")
                                        .then((value) => {
                                            window.location = "loginpage.jsp";
                                        });
                            } else {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();

                            swal("Something went wrong..try again");

                        },
                        processData: false,
                        contentType: false
                    });
                });
            });

        </script>
    </body>
</html>
