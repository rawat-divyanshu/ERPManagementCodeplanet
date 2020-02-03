<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Done</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
	integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
	crossorigin="anonymous"></script>
</head>

<body style="background: #ccc; padding: 30px;">
	<div class="container">
		<div class="card">
			<div class="card-header">
				Enrollment Number : <strong>${paymentDetails.enrollmentId }</strong> <span
					class="float-right"> <strong>Status:</strong> Paid
				</span>

			</div>
			<div class="card-body">
				<div class="row mb-4">
					<div class="col-sm-6">
						<h6 class="mb-3">
							<img src="images/cplogo.jfif" alt="codeplanetlogo">
						</h6>
						<div>
							<strong>Code Planet Technologies Pvt. Ltd.</strong>
						</div>
						<div>Khushi Tower, 1st floor, Kumbha Marg, Pratap Nagar</div>
						<div>Jaipur, Rajasthan 302033</div>
						<div>
							<b>Email:</b> email@codeplanet.co.in
						</div>
						<div>
							<b>Phone:</b> +91 086191 30803
						</div>
					</div>

					<div class="col-sm-6">
						<br> <br> <br> <br> <br> <br> <br>
						<br>
						<center>
							<strong><u><h3>Student Details</h3></u></strong>
						</center>
						<br>
						<div>
							<b><strong>Student Name: </strong></b>${paymentDetails.studentName }
						</div>
						<div>
							<b><strong>College: </strong></b>${paymentDetails.collegeName }
						</div>
						<div>
							<b><strong>Email: </strong></b>${paymentDetails.emailId }
						</div>
						<div>
							<b><strong>Phone: </strong></b>+91 ${paymentDetails.mobileNo }
						</div>
					</div>



				</div>

				<div class="table-responsive-sm">
					<table class="table table-striped">
						<thead>
							<tr>
								<th class="center">#</th>
								<th>Course</th>
								<th>Course Fee</th>
								<th>Amount Paid</th>
								<th>Payment Date</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="center">1</td>
								<td class="left strong">${paymentDetails.courseName }</td>
								<td class="left">Rs. ${paymentDetails.totalFee }</td>
								<td class="left">Rs. ${paymentDetails.totalFee }</td>
								<td class="left">Rs. ${paymentDetails.totalFee }</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4 col-sm-5"></div>

					<div class="col-lg-4 col-sm-5 ml-auto">
						<table class="table table-clear">
							<tbody>
								<tr>
									<td class="left"><strong>Amount Paid</strong></td>
									<td class="right">Rs. ${paymentDetails.amountDeposited }</td>
								</tr>
								<tr>
									<td class="left"><strong>Amount Remaining</strong></td>
									<td class="right">Rs. ${paymentDetails.feeRemaining }</td>
								</tr>
								<tr>
									<td class="left"><strong>Next Payment Date</strong></td>
									<td class="right"><strong>${paymentDetails.nextDepositDate }</strong></td>
								</tr>
							</tbody>
						</table>

					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
		<form action="dashboard" method="post">
			<input type="hidden" name="createdBy" value="${createdBy }">
			<div class="form-group">
				<input type="submit" class="btn btn-danger btn-pill"
					value="Return to DashBoard" style="width: 300px; height: 50px;">
			</div>
		</form>
	</div>
</body>

</html>