
<!DOCTYPE html>
<html lang="en">
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

     h1 {
      color: white;
    }

    #homepage {
      margin-top: 6em;
    }.bee-row,
		.bee-row-content {
			position: relative
		}

		.bee-row-1,
		.bee-row-2,
		.bee-row-2 .bee-row-content,
		.bee-row-3,
		.bee-row-4,
		.bee-row-5 {
			background-repeat: no-repeat
		}

		.bee-row-2 .bee-row-content,
		body {
			background-color: #d5d2cd;
			color: #000
		}

		body {
			font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif
		}

		a {
			color: #171735
		}

		* {
			box-sizing: border-box
		}

		body,
		h1,
		p {
			margin: 0
		}

		.bee-row-content {
			max-width: 1440px;
			margin: 0 auto;
			display: flex
		}

		.bee-row-content .bee-col-w4 {
			flex-basis: 33%
		}

		.bee-row-content .bee-col-w12 {
			flex-basis: 100%
		}

		.bee-icon .bee-icon-label-right a {
			text-decoration: none
		}

		.bee-divider,
		.bee-image {
			overflow: auto
		}

		.bee-divider .center,
		.bee-image .bee-center {
			margin: 0 auto
		}

		.bee-row-3 .bee-col-1 .bee-block-1,
		.bee-row-3 .bee-col-2 .bee-block-1,
		.bee-row-3 .bee-col-3 .bee-block-1 {
			width: 100%
		}

		.bee-icon {
			display: inline-block;
			vertical-align: middle
		}

		.bee-icon .bee-content {
			display: flex;
			align-items: center
		}

		.bee-image img {
			display: block;
			width: 100%
		}

		.bee-social .icon img {
			max-height: 32px
		}

		.bee-paragraph {
			overflow-wrap: anywhere
		}

		@media (max-width:768px) {
			.bee-row-content:not(.no_stack) {
				display: block
			}
		}

		.bee-row-1 .bee-row-content,
		.bee-row-3 .bee-row-content,
		.bee-row-4 .bee-row-content,
		.bee-row-5 .bee-row-content {
			background-color: #d5d2cd;
			background-repeat: no-repeat;
			color: #000
		}

		.bee-row-1 .bee-col-1 .bee-block-2,
		.bee-row-1 .bee-col-1 .bee-block-5,
		.bee-row-1 .bee-col-1 .bee-block-8,
		.bee-row-3 .bee-col-1 .bee-block-2,
		.bee-row-3 .bee-col-2 .bee-block-2,
		.bee-row-3 .bee-col-3 .bee-block-2 {
			padding: 10px;
			text-align: center;
			width: 100%
		}

		.bee-row-1 .bee-col-1 .bee-block-3,
		.bee-row-1 .bee-col-1 .bee-block-6,
		.bee-row-3 .bee-col-1 .bee-block-3,
		.bee-row-3 .bee-col-2 .bee-block-3,
		.bee-row-3 .bee-col-3 .bee-block-3 {
			padding: 10px
		}

		.bee-row-2 .bee-row-content {
			background-position: center top
		}

		.bee-row-3 .bee-col-1,
		.bee-row-3 .bee-col-2,
		.bee-row-3 .bee-col-3,
		.bee-row-4 .bee-col-1,
		.bee-row-5 .bee-col-1 {
			padding-bottom: 5px;
			padding-top: 5px
		}

		.bee-row-3 .bee-col-1 .bee-block-4,
		.bee-row-3 .bee-col-2 .bee-block-4,
		.bee-row-3 .bee-col-3 .bee-block-4 {
			padding: 10px;
			text-align: center
		}

		.bee-row-5 .bee-col-1 .bee-block-1 {
			color: #9d9d9d;
			font-family: inherit;
			font-size: 15px;
			padding-bottom: 5px;
			padding-top: 5px;
			text-align: center
		}

		.bee-row-1 .bee-col-1 .bee-block-3,
		.bee-row-1 .bee-col-1 .bee-block-6 {
			color: #292e4d;
			direction: ltr;
			font-family: TimesNewRoman, "Times New Roman", Times, Beskerville, Georgia, serif;
			font-size: 26px;
			font-weight: 400;
			letter-spacing: 0;
			line-height: 120%;
			text-align: center
		}

		.bee-row-1 .bee-col-1 .bee-block-3 a,
		.bee-row-1 .bee-col-1 .bee-block-6 a,
		.bee-row-3 .bee-col-1 .bee-block-3 a,
		.bee-row-3 .bee-col-2 .bee-block-3 a,
		.bee-row-3 .bee-col-3 .bee-block-3 a {
			color: #8a3c90
		}

		.bee-row-1 .bee-col-1 .bee-block-3 p:not(:last-child),
		.bee-row-1 .bee-col-1 .bee-block-6 p:not(:last-child),
		.bee-row-3 .bee-col-1 .bee-block-3 p:not(:last-child),
		.bee-row-3 .bee-col-2 .bee-block-3 p:not(:last-child),
		.bee-row-3 .bee-col-3 .bee-block-3 p:not(:last-child) {
			margin-bottom: 16px
		}

		.bee-row-3 .bee-col-1 .bee-block-3,
		.bee-row-3 .bee-col-2 .bee-block-3,
		.bee-row-3 .bee-col-3 .bee-block-3 {
			color: #292e4d;
			direction: ltr;
			font-family: TimesNewRoman, "Times New Roman", Times, Beskerville, Georgia, serif;
			font-size: 18px;
			font-weight: 700;
			letter-spacing: 0;
			line-height: 120%;
			text-align: center
		}

		.bee-row-5 .bee-col-1 .bee-block-1 .bee-icon-image {
			padding: 5px 6px 5px 5px
		}

		.bee-row-5 .bee-col-1 .bee-block-1 .bee-icon:not(.bee-icon-first) .bee-content {
			margin-left: 0
		}

		.bee-row-5 .bee-col-1 .bee-block-1 .bee-icon::not(.bee-icon-last) .bee-content {
			margin-right: 0
		}   
    </style>

</head>
<body>
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
            <a href="#">
              <img src="https://i.ibb.co/Bt7Hkkm/Profile.png" alt="DocuMeds-profile" height="40" width="40" class="DocuMeds-profile">
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </section>
<div class="bee-page-container">
		<div class="bee-row bee-row-1">
			<div class="bee-row-content">
				<div class="bee-col bee-col-1 bee-col-w12">
					<div class="bee-block bee-block-1 bee-spacer">
						<div class="spacer" style="height:35px;"></div>
					</div>
					<div class="bee-block bee-block-2 bee-heading">
						<h1 style="color:#292e4d;direction:ltr;font-family:TimesNewRoman, 'Times New Roman', Times, Beskerville, Georgia, serif;font-size:51px;font-weight:700;letter-spacing:normal;line-height:120%;text-align:center;margin-top:0;margin-bottom:0;"><span class="tinyMce-placeholder">What is Club Management System?</span> </h1>
					</div>
					<div class="bee-block bee-block-3 bee-paragraph">
						<p>It provides you the information about all clubs in your college.</p>
					</div>
					<div class="bee-block bee-block-4 bee-divider">
						<div class="spacer" style="height:30px;"></div>
					</div>
					<div class="bee-block bee-block-5 bee-heading">
						<h1 style="color:#292e4d;direction:ltr;font-family:TimesNewRoman, 'Times New Roman', Times, Beskerville, Georgia, serif;font-size:51px;font-weight:700;letter-spacing:normal;line-height:120%;text-align:center;margin-top:0;margin-bottom:0;"><span class="tinyMce-placeholder">Why Club Management System? </span> </h1>
					</div>
					<div class="bee-block bee-block-6 bee-paragraph">
						<p>To get all information about clubs and their upcoming events. </p>
					</div>
					<div class="bee-block bee-block-7 bee-spacer">
						<div class="spacer" style="height:30px;"></div>
					</div>
					<div class="bee-block bee-block-8 bee-heading">
						<h1 style="color:#292e4d;direction:ltr;font-family:TimesNewRoman, 'Times New Roman', Times, Beskerville, Georgia, serif;font-size:51px;font-weight:700;letter-spacing:normal;line-height:120%;text-align:center;margin-top:0;margin-bottom:0;"><span class="tinyMce-placeholder">Our Team</span> </h1>
					</div>
					<div class="bee-block bee-block-9 bee-spacer">
						<div class="spacer" style="height:30px;"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="bee-row bee-row-2">
			<div class="bee-row-content">
				<div class="bee-col bee-col-1 bee-col-w12">
					<div class="bee-block bee-block-1 bee-divider">
						<div class="spacer" style="height:0px;"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="bee-row bee-row-3">
			<div class="bee-row-content">
				<div class="bee-col bee-col-1 bee-col-w4">
					<div class="bee-block bee-block-1 bee-image"><img alt="I'm an image" class="bee-center bee-autowidth" src="https://5493cc4c39.imgdist.com/public/users/Integrators/BeeProAgency/920597_904957/DBMS%20Project/Aditya_p.png" style="max-width:372px;" /></div>
					<div class="bee-block bee-block-2 bee-heading">
						<h1 style="color:#292e4d;direction:ltr;font-family:TimesNewRoman, 'Times New Roman', Times, Beskerville, Georgia, serif;font-size:38px;font-weight:700;letter-spacing:normal;line-height:120%;text-align:center;margin-top:0;margin-bottom:0;"><span class="tinyMce-placeholder">Aditya Ozalwar</span> </h1>
					</div>
					<div class="bee-block bee-block-3 bee-paragraph">
						<p>Student at MITAOE</p>
					</div>
					<div class="bee-block bee-block-4 bee-social">
						<div class="content"><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.facebook.com/aditya.ozalwar.5?mibextid=ZbWKwL" target="_self"><img alt="Facebook" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/facebook@2x.png" title="facebook" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.twitter.com/" target="_self"><img alt="Twitter" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/twitter@2x.png" title="twitter" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.linkedin.com/in/aditya-ozalwar-90a710242" target="_self"><img alt="Linkedin" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/linkedin@2x.png" title="linkedin" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://instagram.com/adityaozalwar?igshid=ZDdkNTZiNTM=" target="_self"><img alt="Instagram" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/instagram@2x.png" title="instagram" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://wa.me/+919028811084" target="_blank"><img alt="WhatsApp" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/whatsapp@2x.png" title="WhatsApp" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="mailto:adityaozalwar14@gmail.com" target="_blank"><img alt="E-Mail" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/mail@2x.png" title="E-Mail" /></a></span></div>
					</div>
				</div>
				<div class="bee-col bee-col-2 bee-col-w4">
					<div class="bee-block bee-block-1 bee-image"><img alt="I'm an image" class="bee-center bee-autowidth" src="https://5493cc4c39.imgdist.com/public/users/Integrators/BeeProAgency/920597_904957/DBMS%20Project/Shrutika_p.png" style="max-width:372px;" /></div>
					<div class="bee-block bee-block-2 bee-heading">
						<h1 style="color:#292e4d;direction:ltr;font-family:TimesNewRoman, 'Times New Roman', Times, Beskerville, Georgia, serif;font-size:38px;font-weight:700;letter-spacing:normal;line-height:120%;text-align:center;margin-top:0;margin-bottom:0;"><span class="tinyMce-placeholder">Shrutika Jadhav</span> </h1>
					</div>
					<div class="bee-block bee-block-3 bee-paragraph">
						<p>Student at MITAOE</p>
					</div>
					<div class="bee-block bee-block-4 bee-social">
						<div class="content"><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.facebook.com/profile.php?id=100081893587628&amp;mibextid=ZbWKwL" target="_self"><img alt="Facebook" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/facebook@2x.png" title="facebook" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://twitter.com/Shrutik45163892?t=e2wGUzoTtQBzM-MUJfrhRw&amp;s=09" target="_self"><img alt="Twitter" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/twitter@2x.png" title="twitter" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.linkedin.com/in/shrutika-jadhav-3927a0229" target="_self"><img alt="Linkedin" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/linkedin@2x.png" title="linkedin" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://instagram.com/shrutikaa_5?igshid=ZDdkNTZiNTM=" target="_self"><img alt="Instagram" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/instagram@2x.png" title="instagram" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://wa.me/+918788721430" target="_blank"><img alt="WhatsApp" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/whatsapp@2x.png" title="WhatsApp" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="mailto:shrutikajadhav2611@gmail.com" target="_blank"><img alt="E-Mail" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/mail@2x.png" title="E-Mail" /></a></span></div>
					</div>
				</div>
				<div class="bee-col bee-col-3 bee-col-w4">
					<div class="bee-block bee-block-1 bee-image"><img alt="I'm an image" class="bee-center bee-autowidth" src="https://5493cc4c39.imgdist.com/public/users/Integrators/BeeProAgency/920597_904957/DBMS%20Project/Mohanish_Profile.png" style="max-width:370px;" /></div>
					<div class="bee-block bee-block-2 bee-heading">
						<h1 style="color:#292e4d;direction:ltr;font-family:TimesNewRoman, 'Times New Roman', Times, Beskerville, Georgia, serif;font-size:38px;font-weight:700;letter-spacing:normal;line-height:120%;text-align:center;margin-top:0;margin-bottom:0;"><span class="tinyMce-placeholder">Mohanish Khambadkar</span> </h1>
					</div>
					<div class="bee-block bee-block-3 bee-paragraph">
						<p>Student at MITAOE</p>
					</div>
					<div class="bee-block bee-block-4 bee-social">
						<div class="content"><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.facebook.com/mohanish.khambadkar/" target="_self"><img alt="Facebook" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/facebook@2x.png" title="facebook" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://twitter.com/Mak32435353" target="_self"><img alt="Twitter" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/twitter@2x.png" title="twitter" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.linkedin.com/in/mak9582/" target="_self"><img alt="Linkedin" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/linkedin@2x.png" title="linkedin" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://www.instagram.com/mohanish_9582/" target="_self"><img alt="Instagram" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/instagram@2x.png" title="instagram" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="https://wa.me/+917822941461" target="_blank"><img alt="WhatsApp" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/whatsapp@2x.png" title="WhatsApp" /></a></span><span class="icon" style="padding:0 2.5px 0 2.5px;"><a href="mailto:mohanishkhambadkar@gmail.com" target="_blank"><img alt="E-Mail" src="https://app-rsrc.getbee.io/public/resources/social-networks-icon-sets/circle-color/mail@2x.png" title="E-Mail" /></a></span></div>
					</div>
				</div>
			</div>
		</div>
		<div class="bee-row bee-row-4">
			<div class="bee-row-content">
				<div class="bee-col bee-col-1 bee-col-w12">
					<div class="bee-block bee-block-1 bee-spacer">
						<div class="spacer" style="height:35px;"></div>
					</div>
				</div>
			</div>
		</div>
		
	</div> 
      
</body>
</html>