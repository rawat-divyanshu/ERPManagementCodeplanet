<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Register Student</title>
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
<script>
	var status = $
	{
		status
	};
	console.log(status);
	if (status == 1) {
		document.getElementById("success").innerHTML = '<div class="alert alert-success"><strong>Success!</strong> Student registered Successfully.</div>';
	} else if (status == 0) {
		document.getElementById("already").innerHTML = '<div class="alert alert-warning"><strong>Warning!</strong> Student already registered.</div>';
	} else if (status == -1) {
		document.getElementById("danger").innerHTML = '<div class="alert alert-danger"><strong>Danger!</strong> Error in Registering Student.</div>';
	}
</script>
</head>
<body>
	<div style="margin-left: 30%; margin-right: 30%;">
		<div class="card">

			<h5 class="card-header info-color white-text text-center py-4">
				<strong>Student Details's</strong>
			</h5>
			
			
			<c:set var="status" scope="session" value="${status}" />
			<c:choose>
				<c:when test="${status == 1}">
					<div class="alert alert-success">
						<strong>Success!</strong> Student registered Successfully.
					</div>
				</c:when>
				<c:when test="${status == 0}">
					<div class="alert alert-warning">
						<strong>Warning!</strong> Student already registered.
					</div>
				</c:when>
				<c:when test="${status == -1}">
					<div class="alert alert-danger">
						<strong>Danger!</strong> Error in Registering Student.
					</div>
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose>

			<div class="card-body px-lg-5 pt-0" style="color: #757575;">

				<form class="md-form" style="color: #757575;"
					action="registerStudent">
					<br> <label for="materialRegisterFormFirstName">StudentName</label>
					<input type="text" id="materialRegisterFormFirstName"
						class="form-control" name="studentName"> <label
						for="materialRegisterFormLastName">Father's name</label> <input
						type="text" id="materialRegisterFormLastName" class="form-control"
						name="fatherName"> <label for="materialRegisterFormEmail">E-mail</label>
					<input type="email" id="materialRegisterFormEmail"
						class="form-control" name="emailId"> <label
						for="materialRegisterFormPhone">Phone number</label> <input
						type="text" id="materialRegisterFormFirstName"
						class="form-control" name="mobileNo"> <label
						for="materialRegisterFormCollege">College name</label> <input
						type="text" id="materialRegisterFormCollege" class="form-control"
						name="collegeName"> <br>
					<div class="form-group">
						<div style="display: inline;">
							<label for="yearofstudying">Year Of Studying</label>
						</div>
						<div style="display: inline;">
							<select id="yearofstudying" name="yearOfStudying">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div style="display: inline;">
							<label for="passoutyear">Year Of Passing Out</label>
						</div>
						<div style="display: inline;">
							<select id="passoutyear" name="passoutYear">
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>
								<option value="2022">2022</option>
							</select>
						</div>
					</div>
					<label for="materialRegisterFormBranch">Branch of Study</label> <input
						type="text" id="materialRegisterFormBranch" class="form-control"
						name="branch"> <input type="hidden" name="createdBy"
						value="${createdBy }">

					<button
						class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
						type="submit">Register Student</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>