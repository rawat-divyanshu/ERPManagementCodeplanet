<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>admin</title>
</head>
<script>
	function modalOpen(name, author, publisher, id) {
		const edname = document.getElementById('ebname');
		//alert(id);
		const ebauthor = document.getElementById('ebauthor');
		const ebpublisher = document.getElementById('ebpublisher');

		/* form.setAttribute('action', 'updateDish?dishId='+ id); */
		ebname.value = name;
		ebid.value = id;
		ebauthor.value = author;
		ebpublisher.value = publisher;

		$('#exampleModal').modal();

	}
</script>
</script>
<body>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Pay Fee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="payfee" method="post">
						<input type="hidden" id="ebid" name="courseId">

						<div class="form-group">
							<label class="col-md-4 control-label" for="">Student Name</label>
							<div class="col-md-5">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="">Email ID</label>
							<div class="col-md-5">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="">Course Name</label>
							<div class="col-md-5">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="">Course Fee</label>
							<div class="col-md-5">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="">Amount Paid</label>
							<div class="col-md-4">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="">Amount
								Remaining</label>
							<div class="col-md-4">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="">Amount
								Paying</label>
							<div class="col-md-5">
								<input id="" name="" type="text" placeholder=""
									class="form-control input-md" required="">

							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for=""></label>
							<div class="col-md-4">
								<button id="" name="" class="btn btn-primary">Pay
									Amount</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="addBookModal" tabindex="-1" role="dialog"
		aria-labelledby="addBookModal" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addBookModalLabel">Add Course
						details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="addCourse" method="POST">
						<div class="form-group">
							<label for="addCourseName">Course Name</label> <input type="text"
								required class="form-control" id="addCourseName"
								name="courseName" aria-describedby="Course name"
								placeholder="add Course Name" required autofocus>
						</div>
						<div class="form-group">
							<label for="addCourseDescrption">Course Description</label> <input
								type="text" required class="form-control"
								id="addCourseDescrption" name="courseDescription"
								placeholder="Course Description" required autofocus>
						</div>
						<div class="form-group">
							<label for="courseFee">Course Fee</label> <input type="text"
								required class="form-control" id="Course_Fee" name="courseFee"
								placeholder="0">
						</div>
						<input type="hidden" name="createdBy" value="${createdBy }">
						<button type="submit" class="btn btn-primary">Add Course</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container py-2">
		<center>
			<h2>Courses Details</h2>
		</center>
		<div class="btn-group">
			<form action="studentsWithRemainingFee" method="post">
				<input type="hidden" name="createdBy" value="${createdBy }">

				<button type="submit" class="btn btn-primary" style="width: 100%">
					Students With Pending Fees</button>
			</form>
			<form action="courses" method="post">
				<input type="hidden" name="createdBy" value="${createdBy }">

				<button type="submit" class="btn btn-danger" style="width: 100%">
					Show All Students</button>
			</form>
		</div>

		<table class="table table-striped table-responsive-sm">
			<thead>
				<tr>
					<th scope="col">Student Name</th>
					<th scope="col">Course Joined</th>
					<th scope="col">Course Fee</th>
					<th scope="col">Amount Deposited</th>
					<th scope="col">Amount Remaining</th>
					<th scope="col">Fee Submission Mode</th>
					<th scope="col">Fee Deposition Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="l" varStatus="loop">
					<tr>
						<th scope="row">${l.courseName}</th>
						<td>${l.courseDescription}</td>
						<td>${l.courseFee}</td>
						<td>${l.isActive }</td>
						<td>
							<button type="button" class="btn btn-primary"
								onClick="modalOpen('${l.courseName}','${l.courseDescription}','${l.courseFee}','${l.courseId }')"
								data-toggle="modal">Edit</button>
						</td>
						<td>
							<form action="deleteCourse">
								<input type="hidden" name="createdBy" value="${createdBy }">
								<input type="hidden" name="courseId" value="${l.courseId }" />
								<button type="submit" class="btn btn-danger">Delete</button>
							</form>
						</td>
						<td><c:choose>
								<c:when test="${l.isActive==1}">
									<form action="inActiveCourse">
										<input type="hidden" name="createdBy" value="${createdBy }">
										<input type="hidden" name="courseId" value="${l.courseId }" />
										<button type="submit" class="btn btn-primary"
											style="background-color: green;">InActive</button>
									</form>
								</c:when>
								<c:otherwise>
									<form action="activeCourse">
										<input type="hidden" name="createdBy" value="${createdBy }">
										<input type="hidden" name="courseId" value="${l.courseId }" />
										<button type="submit" class="btn btn-danger"
											style="background-color: olive;">Active</button>
									</form>
								</c:otherwise>
							</c:choose></td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#addBookModal">Add New Course</button>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
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