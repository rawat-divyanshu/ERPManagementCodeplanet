<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Enquiry &mdash;</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

</head>
<script>
	function modalOpen() {
		$('#exampleModal').modal();
	}
</script>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">


	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Enquiry Form!!!</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="addEnquiry" method="post">
						<div class="form-group">
							<label for="name">Full Name</label> <input type="text"
								class="form-control" id="Full_Name" name="Full_Name" required
								aria-describedby="Full_Name" placeholder="Full Name">
						</div>
						<div class="form-group">
							<label for="ecname">College Name</label> <input type="text"
								class="form-control" id="College_Name" name="College_Name"
								required placeholder="College Name">
						</div>
						<div class="form-group">
							<label for="emobile">Mobile_Number</label> <input type="tel"
								maxlength="10" pattern="{0-9}" class="form-control"
								id="Mobile_Number" name="Mobile_Number" required
								placeholder="Mobile Number">
						</div>
						<div class="form-group">
							<label for="eemail">Email Id</label> <input type="email"
								class="form-control" id="Email_Id" name="Email_Id" required
								placeholder="Email Id">
						</div>
						<div class="form-group">
							<label for="epassout">Year_Passout</label> <input type="text"
								class="form-control" id="Year_Passout" name="Year_Passout"
								required placeholder="Year Passout">
						</div>
						<div class="form-group">
							<label for="ebranch">Branch</label> <input type="text"
								class="form-control" id="Branch" name="Branch" required
								placeholder="Branch">
						</div>
						<div class="form-group">
							<label for="ecources">Interested In Courses:-</label> <input
								type="checkbox" name="Interested_In_Course" value="Java">Java<br>
							<input type="checkbox" name="Interested_In_Course" value="Python">Python<br>
							<input type="checkbox" name="Interested_In_Course" value="ML">ML<br>
						</div>
						<div class="form-group">
							<label for="etiming">Preferred Batch Timing:-</label> <select
								name="Preferred_Batch_Timing">
								<option value="morning">morning</option>
								<option value="evening">evening</option>
							</select>
						</div>
						<div class="form-group">
							<label for="etiming">Reference</label> <select name="Reference">
								<option value="family">family</option>
								<option value="friend">friend</option>
							</select>
						</div>
				</div>
				<div class="form-group">
					<label for="ecomment">Any Comment</label> <input type="text"
						class="form-control" id="Any_Comment" name="Any_Comment"
						placeholder="Any Comment">
				</div>
				<button type="submit" class="btn btn-primary">Submit
					Enquiry</button>
				</form>
			</div>
		</div>
	</div>
	</div>



	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>


		<header class="site-navbar py-4 js-sticky-header site-navbar-target"
			role="banner">

			<div class="container-fluid">
				<div class="d-flex align-items-center">
					<div class="site-logo mr-auto w-25">
						<a href="home">ErpManagement</a>
					</div>

					<div class="mx-auto text-center">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul
								class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
								<li><a href="home" class="nav-link">Home</a></li>
								<li><a href="login" class="nav-link">ChooseUser</a></li>
							</ul>
						</nav>
					</div>

					<div class="ml-auto w-25">
						<nav class="site-navigation position-relative text-right"
							role="navigation">
							<ul
								class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-lg-block m-0 p-0">
								<li class="cta"><a href="#contact-section" class="nav-link"><span>Contact
											Us</span></a></li>
							</ul>
						</nav>
						<a href="#"
							class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right"><span
							class="icon-menu h3"></span></a>
					</div>
				</div>
			</div>

		</header>

		<div class="intro-section" id="home-section">

			<div class="slide-1"
				style="background-image: url('images/hero_1.jpg');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-12">
							<div class="row align-items-center">
								<div class="col-lg-6 mb-4">
									<h1 data-aos="fade-up" data-aos-delay="100">Welcome</h1>
									<p class="mb-4" data-aos="fade-up" data-aos-delay="200">Everything
										you need for better future and success has already been
										written. And guess what? All you have to do is go to library.</p>

								</div>
								<div class="col-lg-5 ml-auto" data-aos="fade-up"
									data-aos-delay="500">

									<input type="button" class="btn btn-danger btn-pill"
										onClick="modalOpen()" data-toggle="modal" value="Add Enquiry"
										style="width: 300px; height: 50px;">
								</div>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="courses" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Courses" style="width: 300px; height: 50px;">
									</div>
								</form>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="batch" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Batch" style="width: 300px; height: 50px;">
									</div>

								</form>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="certificate" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Certificate" style="width: 300px; height: 50px;">
									</div>

								</form>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="placements" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Placement Records" style="width: 300px; height: 50px;">
									</div>
								</form>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="register" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Register Student" style="width: 300px; height: 50px;">
									</div>
								</form>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="enroll" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Enroll Student" style="width: 300px; height: 50px;">
									</div>
								</form>
							</div>
							<div class="col-lg-5 ml-auto" data-aos="fade-up"
								data-aos-delay="500">
								<form action="feeDetails" method="post">
									<input type="hidden" name="createdBy" value="${createdBy }">
									<div class="form-group">
										<input type="submit" class="btn btn-danger btn-pill"
											value="Fee Submission Details" style="width: 300px; height: 50px;">
									</div>
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="site-section bg-light" id="contact-section">
		<div class="container">

			<div class="row justify-content-center">
				<div class="col-md-7">



					<h2 class="section-title mb-3">Message Us</h2>
					<p class="mb-5">Natus totam voluptatibus animi aspernatur
						ducimus quas obcaecati mollitia quibusdam temporibus culpa dolore
						molestias blanditiis consequuntur sunt nisi.</p>

					<form method="post" data-aos="fade">
						<div class="form-group row">
							<div class="col-md-6 mb-3 mb-lg-0">
								<input type="text" class="form-control" placeholder="First name">
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control" placeholder="Last name">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<input type="text" class="form-control" placeholder="Subject">
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-12">
								<input type="email" class="form-control" placeholder="Email">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12">
								<textarea class="form-control" id="" cols="30" rows="10"
									placeholder="Write your message here."></textarea>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-6">

								<input type="submit"
									class="btn btn-primary py-3 px-5 btn-block btn-pill"
									value="Send Message">
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>


	<footer class="footer-section bg-white">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h3>About OneSchool</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Porro consectetur ut hic ipsum et veritatis corrupti. Itaque eius
						soluta optio dolorum temporibus in, atque, quos fugit sunt sit
						quaerat dicta.</p>
				</div>

				<div class="col-md-3 ml-auto">
					<h3>Links</h3>
					<ul class="list-unstyled footer-links">
						<li><a href="#">Home</a></li>
						<li><a href="#">Academic Books</a></li>
						<li><a href="#">Magazine</a></li>
						<li><a href="#">Newspaper</a></li>
					</ul>
				</div>

				<div class="col-md-4">
					<h3>Subscribe</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Nesciunt incidunt iure iusto architecto? Numquam, natus?</p>
					<form action="#" class="footer-subscribe">
						<div class="d-flex mb-5">
							<input type="text" class="form-control rounded-0"
								placeholder="Email"> <input type="submit"
								class="btn btn-primary rounded-0" value="Subscribe">
						</div>
					</form>
				</div>

			</div>

			<div class="row pt-5 mt-5 text-center">
				<div class="col-md-12">
					<div class="border-top pt-5">
						<p>
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | CodePlanet Technologies
							
						</p>
					</div>
				</div>

			</div>
		</div>
	</footer>



	</div>
	<!-- .site-wrap -->


	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.sticky.js"></script>


	<script src="js/main.js"></script>

</body>
</html>