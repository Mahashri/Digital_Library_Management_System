<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_add_book.aspx.cs" Inherits="admin_add_book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<header>
		<!-- top header -->
		<div class="top-head-w3ls py-2 bg-dark">
			<div class="container">
				<div class="row">
				 
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
			 
					<a class="logo font-italic font-weight-bold col-lg-4 text-lg-left text-center" href="#">
                    BCA DIGITAL LIBRARY</a>
			
            		 
				 
			</div>
		</div>
		<!-- //middle header -->
	</header>
	<!-- //header -->

	<!-- banner -->
	<div class="banner-agile-2">
		<!-- navigation -->
		<div class="navigation-w3ls">
			<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-nav">
				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				 aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
					<ul class="navbar-nav justify-content-center">
						<li class="nav-item ">
							<a class="nav-link text-white" href="admin_home.aspx">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
					<li class="nav-item  ">
							<a class="nav-link text-white" href="admin_add_book.aspx">Add Book</a>
						</li>
						 
						 
						<li class="nav-item">
							<a class="nav-link text-white" href="admin_view_book.aspx">View Book Request</a>
						</li>
                        
						<li class="nav-item">
							<a class="nav-link text-white" href="admin_issue_book.aspx">Issue Book</a>
						</li>
                        <li class="nav-item">
							<a class="nav-link text-white" href="admin_return_book.aspx">Return Book</a>
						</li>
                           <li class="nav-item">
							<a class="nav-link text-white" href="admin_fine.aspx">Fine Amount</a>
						</li>
                          <li class="nav-item">
							<a class="nav-link text-white" href="admin_max_fine.aspx">Max Fine</a>
						</li>
                        	<li class="nav-item">
							<a class="nav-link text-white" href="Default.aspx">Logout</a>
						</li>

                        	 
					</ul>
				</div>
			</nav>
		</div>
		<!-- //navigation -->
	</div>
	<!-- breadcrumb -->
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			 
			 
		</ol>
	</nav>
	<!-- breadcrumb -->
	<!-- //banner -->

	<!-- history -->
	<div class="about-page py-5">
		<div class="container py-xl-5 py-lg-3">
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">Admin add Book
                </h3>
			 
			   <table align="center" class="style1">
              <tr>
                  <td class="style2">
                      Book Name</td>
                  <td class="style2">
                      <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style3">
                      Book Id</td>
                  <td class="style3">
                      <asp:TextBox ID="TextBox2" runat="server" required=""></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style3">
                      Author name</td>
                  <td class="style3">
                      <asp:TextBox ID="TextBox3" runat="server" required=""></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      Publication</td>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server" required=""></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      Year</td>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server" required=""></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
                  </td>
              </tr>
          </table>	
			 
		</div>
	</div>
 
 
	<!-- //what we do -->

	<!-- video and events -->
 
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

	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->

	<!-- move-top -->
	<script src="js/move-top.js"></script>
	<!-- easing -->
	<script src="js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="js/edulearn.js"></script>

</asp:Content>

