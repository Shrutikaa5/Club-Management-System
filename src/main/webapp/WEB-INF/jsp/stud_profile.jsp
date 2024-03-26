<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                background-image: url("https://getmyuni.azureedge.net/college-image/big/mit-academy-of-engineering-mitae-pune.jpg");
                background-size: cover;
                background-color: #D5D2CD;
            }

            .navbar {
                background-color: #F7BD1B;
            }

            .navbar .navbar-logo {
                display: flex;
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

            .navbar .DocuMeds-logo:hover {
                transform: scale(1) rotate(90deg);
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

            .list h2{
                border: 2px outset background;
                margin: 36px auto;
                padding: 6px 5px;
                width:269px;
                background-color: #E7FCE2;
                border-radius: 5px;
                font-size: 23px;

            }
            .list h2 a{

                text-decoration: none;
                color:#2A2F4F;
            }
            h1{
                font-size: 54px;
                color:black;
                padding: 39px 42px;
            }
            .list h2:hover{
                border: 2px inset black;
                margin: 36px auto;
                padding: 6px 5px;
                width:269px;
                background-color: #B4C4B0;
                border-radius: 5px;
                font-size: 23px;

            }
            .list{
                display:inline-block;
                border:3px solid transparent;
                background-color: #F7BD1B;
                width:337px;
                height:775px;
                border-radius: 0px;
                margin:0px -3px;
                padding:5px 5px;
            }

            h1 {
                color: white;
                font-size: 5rem;
                font-style: normal;
            }

            h3 {
                color: white;
                font-size: 4rem;
                font-style: normal;
            }

            h4 {
                font-size: 3em;
                text-align: center;
            }

            #homepage {
                margin-top: 6em;
            }

            .container{
                display:flex;
                position: absolute;
                padding-left: 0px;
                padding-right: 0px;

            }
            .box{
                border: 2px solid black;
                margin: -753px 381px;
                padding-left:10px;
                padding-right:10px;
                min-width:70%;
                background-color:#9d9bc5;
                border-radius: 8px;
                font-size: 23px;
                align-content: center;
                text-align: justify-all;
            }
            .info{
                border: 4px inset black;
                margin: 20px 20px;
                padding: 6px 5px;
                /*            width:299px;
                            height: 420px;*/
                background-color:#d0b2e0;
                border-radius: 3px;
                font-size: 23px;
            }
            .student-profile .card .card-header .profile_img {
                width: 150px;
                height: 150px;
                object-fit: cover;
                margin: 10px auto;
                border: 10px solid #ccc;
                border-radius: 50%;
            }
            .student-profile .card h3 {
                font-size: 20px;
                font-weight: 700;
            }
            .student-profile .card p {
                font-size: 16px;
                color: #000;
            }
            .student-profile .table th,
            .student-profile .table td {
                font-size: 14px;
                padding: 5px 10px;
                color: #000;
            }
            .card-body {
                -ms-flex: 1 1 auto;
                flex: 1 1 auto;
                padding: 1.25rem;
                width: 501px;
            }

            #homepage {
                margin-top: 6em;
            }
            button{
                background-color: transparent;
                border:none;
                text-align: center;
            }


            label {
                display: block;
                font-weight: bold;
            }

            .update-btn {
                margin-top:  15px;
                background-color: #4CAF50;
                color: white;
                border: none;
                margin-left: 200px;
                height: 50px;
            }
            .delete-btn {
                margin-top:  10px;
                background-color: red;
                color: white;
                border: none;
                margin-left: 200px;
                height: 50px;
            }
            .update-btn:hover {
                background-color: #459E48;
                color: white;
                border: none;
                margin-left: 200px;
                height: 50px;

            }
            .delete-btn:hover {
                margin-top:  10px;
                background-color: #B50000;
                color: white;
                border: none;
                margin-left: 200px;
                height: 50px;
            }
            .col-lg-4{
                padding-left: 4em;
            }
            .custom-button {
                background: none;
                border: none;
                padding-top: 0.5em;
                font-size: inherit;
                cursor: pointer;
                font-weight: bold;
            }
            .custom-button:hover{
               text-shadow: 0 0 8px rgba(255, 255, 255, 0.8);
            }

        </style>
        <script>
            setTimeout(function(){
                location.reload();
            },6000);
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
                        <form action="wlcm" method="post">
                        <input type="hidden" value="${prn}" name="prn">
                        <input type="hidden" value="${email}" name="email"><!-- comment -->
                        <input type="hidden" value="${pass}" name="password">
                        <input type="submit" value="Home" class="custom-button">
                    </form>
                            
                    </li>          

                    <li class="nav-item px-3">
                        <a class="nav-link" href="alclub">All Clubs</a>
                    </li>
                    <li class="nav-item px-3">
                        <a class="nav-link" href="start">Logout</a>
                    </li> 
                    <li class="nav-item px-3">
                        <form action="Profile" method="post">
                            <input type="hidden" value="${UserPRN}" name="UserPRN">
                            <button type="submit" >${UserName}</button>

                            <a href="#">
                                <button type="submit" style="background-color: transparent; border:none"><img src="https://i.ibb.co/Bt7Hkkm/Profile.png" alt="DocuMeds-profile" height="40" width="40" class="DocuMeds-profile">
                                    </a>

                                    </form>                


                                    </li>

                                    </ul>
                                    </div>
                                    </nav>
                                    </section>
                                    <body>
                                        <div class="container">
                                            <div class="list"><!-- comment -->
                                                <h1>CLUBS <b></b></h1>
                                                <h2><a href="LiteraryClub">Literary Club</a></h2>
                                                <h2><a href="Invictus">Invictus</a></h2>
                                                <h2><a href="GDSC">Google Developer Student Club</a></h2>
                                                <h2><a href="AV">Ajanvriksha</a></h2>
                                                <h2><a href="AMC">Axes Math Club</a></h2>
                                                <h2><a href="GS">Girls script</a></h2>           
                                            </div> 
                                    </body>
                                    <body>

                                        <div class="student-profile py-4">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="card shadow-sm">
                                                            <div class="card-header bg-transparent text-center">
                                                                <img class="profile_img" src="https://i.ibb.co/x2hFQXS/Picture1.png" alt="student dp">
                                                                <h2>${name}</h2>
                                                            </div>
                                                            <div class="card-body">
                                                                <p class="mb-0"><strong class="pr-1">Name: ${name}</strong></p>
                                                                <p class="mb-0"><strong class="pr-1">Branch: ${branch}</strong></p>
                                                                <p class="mb-0"><strong class="pr-1">PRN: ${prn}</strong></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-8">
                                                        <div class="card shadow-sm">
                                                            <div class="card-header bg-transparent border-0">
                                                                <h4 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h4>
                                                            </div>
                                                            <div class="card-body pt-0">
                                                                <table class="table table-bordered">
                                                                    <tr>
                                                                        <th width="30%">Mobile No.: </th>
                                                                        <td width="2%">:</td>
                                                                        <td>${phone}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th width="30%">Gender: </th>
                                                                        <td width="2%">:</td>
                                                                        <td>${gender}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th width="30%">Email Id: </th>
                                                                        <td width="2%">:</td>
                                                                        <td>${email}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th width="30%">Password: </th>
                                                                        <td width="2%">:</td>
                                                                        <td>${pass}</td>
                                                                    </tr>

                                                                </table>

                                                                <form action="updatepass" method="post">
                                                                    <b>Do you want to update your password?</b>
                                                                    <br>
                                                                    <input type="hidden" value="${prn}" name="UserPRN">  
                                                                    Enter Your New Password : <input type="password" name="pass">
                                                                    <div class="buttons">
                                                                        <button class="update-btn">Update Password</button>
                                                                    </div>                                                                        
                                                                </form>

                                                                <form action="delete" method="post">
                                                                    <b>Do you want to Delete your Account?</b>
                                                                    <input type="hidden" value="${prn}" name="UserPRN">
                                                                    <div class="buttons">
                                                                        <button class="delete-btn">Delete Account</button>
                                                                    </div>                                                                        
                                                                </form> 


                                                            </div>
                                                        </div>
                                                        <div style="height: 26px"></div>

                                                    </div>
                                                </div>
                                            </div>
                                    </body>
                                    </html>