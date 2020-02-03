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

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div style="right-margin: 30%; left-margin: 30%; align: center;">
		<form style="align: center;" class="form-horizontal"
			action="enrollStudentNew" method="post">

			<h2>
				<center>
					<strong>Enroll Student</strong>
				</center>
			</h2>
			<c:choose>
				<c:when test="${status == 0}">
					<div class="alert alert-warning">
						<strong>Warning!</strong>Student already Enrolled in Course.
					</div>
				</c:when>
				<c:when test="${status == -1}">
					<div class="alert alert-danger">
						<strong>Error!</strong> Student Not Registered.
					</div>
				</c:when>
			</c:choose>

			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Student
					Email_ID</label>
				<div class="col-md-5">
					<input id="textinput" name="emailId" type="text"
						placeholder="Student Email-ID" class="form-control input-md"
						required>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="">Select Course</label>
				<div class="col-md-5">
					<select id="course" name="courseId" class="form-control" required>
						<option value="" disabled selected hidden>Select the
							Course</option>
						<c:forEach items="${availableCourse }" var="l" varStatus="loop">
							<option value="${l.courseId }">${l.courseName }</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="">Course Fee</label>
				<div class="col-md-5">
					<input id="courseFee" name="courseFee" type="text"
						placeholder="Course Fee" class="form-control input-md" required>

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="">Select Batch</label>
				<div class="col-md-5">
					<select id="batch" name="batchId" class="form-control" required>
						<option value="" disabled selected hidden>Select
							Preferred Batch</option>
						<c:forEach items="${availableBatch}" var="l" varStatus="loop">
							<option value="${l.batchId }">${l.batchName }</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="">Fee Payment
					Type</label>
				<div class="col-md-4">
					<select id="feePaymentType" name="feePaymentType"
						class="form-control" onchange="change(event)">
						<option value="" disabled selected hidden>Select Payment
							Type</option>
						<option value="1">Partially</option>
						<option value="2">Complete</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="">Amount
					Deposited</label>
				<div class="col-md-5">
					<input id="amountDeposited" name="amountDeposited" type="text"
						placeholder="Amount Deposited" class="form-control input-md"
						required>

				</div>
			</div>

			<input type="hidden" name="createdBy" value="${createdBy }">

			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button id="" name="" class="btn btn-primary">Enroll
						Student</button>
				</div>
			</div>

		</form>

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
	<script>
		function change(e) {
			var fees = document.getElementById('courseFee');

			if (e.target.value == 2) {
				document.getElementById("amountDeposited").value = fees.value
			}
			if (e.target.value == 1) {
				document.getElementById("amountDeposited").value = 0
			}
		}
	</script>
</body>
</html>