<%-- 
    Document   : navbar
    Created on : 02-May-2023, 6:51:30 am
    Author     : INDRAJIT
--%>

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
                /*background-color: #D5D2CD;*/
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



            .navbar .DocuMeds-logo:hover {
                /*transform: scale(1) rotate(90deg);*/
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

            #homepage {
                margin-top: 6em;
            }
            .info-contain{
                margin: 5%;
                margin-left: 9%;
                min-height: 50px;
                min-width: 100%;
                align-items: center;
                text-align: center;
                border:2px solid #28A745;
                border: 4px inset black;
                padding: 10px;
                padding-left: 25px;
                padding-right: 25px;
                background-color:#d0b2e0;
                border-radius: 3px;
                font-size: 23px;

            }
            .container{
                display:flex;
                position: absolute;
                padding-left: 0px;
                padding-right: 0px;

            }
            .box{
                padding-left:10px;
                padding-right:10px;
                min-width:70%;
                font-size: 23px;
                padding-bottom: 20px;
            }
            input[type="time"] {
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            button{
                padding-top: 10px;
                background-color: transparent;
                border:none;
                color: Black;
                font-weight: bold;
            }


        </style>
        <script>
            function goBack() {
                window.history.back();
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
                        <button onclick="goBack()">Home</button>
                    </li>          

                    <li class="nav-item px-3">
                        <a class="nav-link" href="start">Logout</a>
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
        <div class="container">
            <div class="list"><!-- comment -->
                <h1> <b>${cname}</b></h1>
                <h2><a href="addevents">Add Events</a></h2>
                <h2><a href="upcominggdsc">Upcoming Events</a></h2>
                <h2><a href="appliedstud">Applied Students</a></h2>

                <!--            <h2><a href="AV">Ajanvriksha</a></h2>
                            <h2><a href="AMC">Axes Math Club</a></h2>
                            <h2><a href="GS">Girls script</a></h2>           -->
            </div> 
            <div class="info-contain">
                <form action="registerevent" method="post">
                    <h3>Add Events</h3>
                    <div class="box">

                        Name of the Club
                        <input type="text"  required="" name="e" value="${cname}" readonly >                
                    </div>
                    <div class="box">

                        Name of the events:
                        <input type="text" placeholder="Enter name of the event" required="" name="a">                
                    </div>

                    <div class="box">

                        Venue :
                        <input type="text" placeholder="Enter venue of the event" required="" name="b">                
                    </div>

                    <div class="box">
                        Date:
                        <input type="date" placeholder="Date of event"required=""name="c">

                    </div>
                    <div class="box">

                        <label for="myTime">Select a time:</label>
                        <input type="time" id="myTime"  name="d">               
                    </div>
                    <input type="submit" value="Register for the Event">
                </form>

            </div>

        </div>


    </div>
</body>
</html>