<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<header>
		<!-- top header -->
		<div class="top-head-w3ls py-2 bg-dark">
			<div class="container">
				<div class="row">
					<h1 class="text-capitalize text-white col-7">
						 </h1>
					<!-- social icons -->
					<div class="social-icons text-right col-5">
						<ul class="list-unstyled">
						 
						</ul>
					</div>
					<!-- //social icons -->
				</div>
			</div>
		</div>
		<!-- //top header -->
		<!-- middle header -->
		<div class="middle-w3ls-nav py-2">
			<div class="container">
			 
					<a class="logo font-italic font-weight-bold col-lg-4 text-lg-left text-center" href="#">BCA DIGITAL 
                    LIBRARY</a>
					 
			 
			</div>
		</div>
		<!-- //middle header -->
	</header>
	<!-- //header -->

	<!-- banner -->
	<div class="banner-agile">
		<ul class="slider">
			<li class="active">
				<div class="banner-w3ls-1">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-2">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-3">
				</div>
			</li>
			<li>
				<div class="banner-w3ls-4">
				</div>
			</li>
			<li class="prev">
				<div class="banner-w3ls-5">
				</div>
			</li>
		</ul>
		<ul class="pager">
			<li data-index="0" class="active"></li>
			<li data-index="1"></li>
			<li data-index="2"></li>
			<li data-index="3"></li>
			<li data-index="4"></li>
		</ul>
		<div class="banner-text-posi-w3ls">
		 	<div class="classes py-5">
		<div class="container py-xl-5 py-lg-3">
			 
		
	 
			 
		
	
		    <table align="center" class="w-100">
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <div class="row pt-4">
                            <div class="col-lg-4 col-news-top text-center">
					<!-- Left to right -->
					<!-- normal -->
					            <div class="ih-item circle effect16 left_to_right mx-auto">
                                    <a href="admin.aspx">
                                    <div class="img">
                                        <img alt="img" class="img-fluid rounded-circle" src="images/c1.jpg" />
                                    </div>
                                    <div class="info">
                                        <h3 class="text-capitalize text-white">
                                            Admin Login</h3>
                                        <p>
                                            Click here</p>
                                    </div>
                                    </a>
                                </div>
                                <h6 class="small-heading text-capitalize text-center mt-4">
                                    <a class="text-dark" href="admin.aspx">Admin Login
                                    <i class="fas fa-long-arrow-alt-right ml-1"></i></a>
                                </h6>
					<!-- end normal -->
					<!-- end Left to right -->
				            </div>
                            <div class="col-lg-4 col-news-top text-center my-lg-0 my-sm-5 my-4">
					<!-- Left to right -->
					<!-- normal -->
					            <div class="ih-item circle effect16 left_to_right mx-auto">
                                    <a href="student.aspx">
                                    <div class="img">
                                        <img alt="img" class="img-fluid rounded-circle" src="images/c2.jpg" />
                                    </div>
                                    <div class="info">
                                        <h3 class="text-capitalize text-white">
                                            Student Login</h3>
                                        <p>
                                            Click here</p>
                                    </div>
                                    </a>
                                </div>
                                <h6 class="small-heading text-capitalize text-center mt-4">
                                    <a class="text-dark" href="student.aspx">Student Login
                                    <i class="fas fa-long-arrow-alt-right ml-1"></i></a>
                                </h6>
					<!-- end normal -->
					<!-- end Left to right -->
				            </div>
                            <div class="col-lg-4 col-news-top text-center">
					<!-- Left to right -->
					<!-- normal -->
					            <div class="ih-item circle effect16 left_to_right mx-auto">
                                    <a href="staff.aspx">
                                    <div class="img">
                                        <img alt="img" class="img-fluid rounded-circle" src="images/c3.jpg" />
                                    </div>
                                    <div class="info">
                                        <h3 class="text-capitalize text-white">
                                            Staff Login</h3>
                                        <p>
                                            Click here</p>
                                    </div>
                                    </a>
                                </div>
                                <h6 class="small-heading text-capitalize text-center mt-4">
                                    <a class="text-dark" href="staff.aspx">Staff Login
                                    <i class="fas fa-long-arrow-alt-right ml-1"></i></a>
                                </h6>
					<!-- end normal -->
					<!-- end Left to right -->
				            </div>
                        </div>
                    </td>
                </tr>
            </table>
			 
		
	 
			 
		
	
		</div>
	</div>
		</div>

		<!-- navigation -->
		<div class="navigation-w3ls">
			<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-nav">
				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				 aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
					<ul class="navbar-nav justify-content-center">
						<li class="nav-item active">
							<a class="nav-link text-white" href="Default.aspx">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-white" href="admin.aspx">Admin</a>
						</li>
						 
						 
						<li class="nav-item">
							<a class="nav-link text-white" href="student.aspx">Student</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-white" href="staff.aspx">Staff</a>
						</li>
						 
					</ul>
				</div>
			</nav>
		</div>
		<!-- //navigation -->
	</div>
	<!-- //banner -->

	<!-- about -->
 
	<!-- //about -->

	<!-- Stats-->
	 
	<!-- //Stats -->

	<!-- course-->
 
	<!-- //course -->

	<!-- what we do -->
	 
	<!-- //video and events -->
 
	<!-- //testimonials -->

	<!-- news -->
	 
	<!-- //news -->

	<!-- brands -->
	 
	<!-- //brands -->

	<!-- footer -->
	<footer>
		 
		<div class="copyright-agiles py-3">
			<div class="container">
				<div class="row">
					<p class="col-lg-8 copy-right-grids text-white text-lg-left text-center mt-lg-1">All Rights Reserved | Design by
						<a href="#">Mahashri</a>
					</p>
					<!-- social icons -->
				 
					<!-- //social icons -->
				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->


	<!-- Js files -->
	<!-- JavaScript -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->
	<script src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- banner slider -->
	<script src="js/slider.js"></script>
	<!-- //banner slider -->

	<!-- testimonial-plugin -->
	<script src="js/mislider.js"></script>
	<script>
		jQuery(function ($) {
			var slider = $('.mis-stage').miSlider({
				//  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
				stageHeight: 320,
				//  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
				slidesOnStage: false,
				//  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
				slidePosition: 'center',
				//  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
				slideStart: 'mid',
				//  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
				slideScaling: 150,
				//  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
				offsetV: -5,
				//  Center slide contents vertically - Boolean. Default: false
				centerV: true,
				//  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
				navButtonsOpacity: 1,
			});
		});
	</script>
	<!-- //testimonial-plugin -->

	<!-- numscroller-js-file -->
	<script src="js/numscroller-1.0.js"></script>
	<!-- //numscroller-js-file -->

	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- move-top -->
	<script src="js/move-top.js"></script>
	<!-- easing -->
	<script src="js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="js/edulearn.js"></script>

	<!-- //Js files -->

</asp:Content>

