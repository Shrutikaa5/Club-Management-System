<%-- 
    Document   : login
    Created on : 01-May-2023, 7:36:55 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://i.postimg.cc/LX4TRMGw/tp1.png" type="image/x-icon">
        <title>Club Management</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">

        <!-- External CSS -->
        <style>

            /* Google Fonts */
            @import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Ubuntu&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Zen+Kaku+Gothic+New&display=swap');

            html{
                scroll-behavior: smooth;
            }

            /* Website Scoolbar */

            /* Width */
            ::-webkit-scrollbar {
                width: 5px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #F3E99F;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #F7BD1B;
            }

            body {
                background-color: #D5D2CD;
                /* background-color: #F6F6F6; */
            }

            .navbar {
                background-color: #F7BD1B;
            }

            .navbar .navbar-logo {
                /*display: flex;*/
                align-items: bottom;
                justify-content: bottom;
                font-size: 1.5em;
                font-weight: bolder;
                font-family: 'Zen Kaku Gothic New', sans-serif;
                color: #121315;
            }

            .navbar .navbar-logo:hover {
                cursor: pointer;
            }

            .navbar-light .navbar-nav .nav-link, .navbar-light .navbar-nav .nav-link.active {
                font-size: 1.05em;
                color: #121315;
                font-weight: 600;
                opacity: 90%;
            }

            .navbar-light .navbar-nav .nav-link:hover {
                opacity: 100%;
                text-decoration: underline;
            }

            .DocuMeds-profile {
                margin-left: 1em;
                margin-right: -1em;
            }

            #homepage {
                margin-top: 6em;
            }

            #quote h1 {
                color: black;
                font-size: 6em;
                margin-left: 1em;
                display: flex;
                word-wrap: break-word;
                line-height: 100px;
                letter-spacing: -2px;
            }

            .buttons {
                margin-left: 5.5em;
            }

            .login-button {
                background-color: #2A2F4F;
                color: #D5D2CD;
            }

            .login-button:hover {
                background-color: #28A745;
                color: #D5D2CD;
            }
            .form-box{
                top: 100px;
                background-color: #E7FCE2;
                border: 2px solid black;
                border-radius: 5px;
                padding: 2em 2em;
            }
            .dont-have-account{
                padding-top: 25px;
                display: flex;
                justify-content: center;

            }
            h3{
                text-align: center;
                font-size: 2.5rem;
            }

        </style>
        <script>
      function validateForm() {
        var passwordInput = document.querySelector(".form-password");
        var password = passwordInput.value;

        // Perform password validation
        if (password !== "correctpassword") 
        {
          alert("Incorrect Password");
          return false; // Prevent form submission
        }

        return true;
      }
    </script>
           
    </head>
    <section id="title">

        <!-- Nav Bar -->

        <nav class="navbar navbar-expand-lg navbar-light ">
            <img src="https://mitaoe.ac.in/assets/images/MITAOE-logo.webp" width="300" height="55" class="DocuMeds-logo d-inline-block align-content-center" alt="DocuMeds-logo">
            <a class="navbar-logo navbar-brand mb-1 h1 pl-1" href="#title" id="logo">

            </a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto px-lg-4">
                    <li class="nav-item px-3">
                        <a class="nav-link" href="start">Home</a>
                    </li>          

                    <li class="nav-item px-3">
                        <a class="nav-link" href="about">About Us</a>
                    </li>
                    <li class="nav-item px-3">
                        <a href="#">
                            <img src="https://i.ibb.co/Bt7Hkkm/Profile.png" alt="DocuMeds-profile" height="40" width="40" class="DocuMeds-profile">
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>
    <body>
        <div class="login-box row d-flex justify-content-center">
            <div class="col-md-5">
                <div class="form-box card" id="form2">
                    <div class="form-data">
                        <form action="wlcm" method="post">
                            <h3>Enter Login Credentials</h3>
                            <br>
                            <div class="forms-inputs mb-4"><span>PRN No. :  </span>
                                <input class="form-name" type="text" placeholder="2021000000024" name="prn" required>
                            </div>

                            <div class="forms-inputs mb-4"><span>E-mail : </span>
                                <input class="form-username" autocomplete="off" type="email" placeholder="abc@123.com" name="email" required>
                            </div>

                            <div class="forms-inputs mb-4"><span>Password : </span>
                                <input class="form-password" type="password" placeholder="Name@123" name="password" required>
                                <div class="invalid-feedback">Password must be 8 character!</div>
                            </div>


                            <div class="dont-have-account">
                                <h4>Don't have account?
                                    <a href="sign"> Register</a> </h4> 
                            </div>


                            <button class="login-button btn btn-success btn-lg rounded mt-5 mx-auto btn-block sticky" id="button1"><i class="bi bi-calendar-check"></i>&nbsp;Login</button>
                        </form>
                    </div>
                    <!--</div>-->
                </div>
            </div>

    </body>
</html>
