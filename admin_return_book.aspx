<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_return_book.aspx.cs" Inherits="admin_return_book" %>

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
			<h3 class="title text-capitalize font-weight-light text-dark text-center mb-5">
                Return&nbsp; Book </h3>
			 
				 
		  <table width="975" height="40" border="0" align="right">
                  <tr>
                    <td width="420">&nbsp;</td>
                    <td width="328">&nbsp;</td>
                    <td width="205">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><table width="464" border="0" align="center">
                      <tr>
                        <td height="63"><h4>&nbsp;</h4></td>
                        <td>
                            &nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>
                <asp:GridView ID="GridView1" runat="server"  AutoGenerateSelectButton="True" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" Width="413px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                          </td>
                      </tr>
                    </table></td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
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

