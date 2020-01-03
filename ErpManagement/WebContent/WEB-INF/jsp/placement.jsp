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
	function modalOpen(placementId, studentEmail, placedInCompany, ctc, selectionType, placementYear, jobProfile) {
		const pId = document.getElementById('placementId');
		const sEmail = document.getElementById('studentEmail');
		const pCompanies = document.getElementById('addCompanies');
		const ctca = document.getElementById('ctc');
		const sType = document.getElementById('selectionType');
		const placementy = document.getElementById('yearofplacement');
		const jProfile = document.getElementById('jobProfile');

		pId.value = placementId;
		sEmail.value = studentEmail;
		pCompanies.value = placedInCompany;
		ctca.value = ctc;
		sType.value = selectionType;
		placementy.value = placementYear;
		jProfile.value = jobProfile;

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
					<h5 class="modal-title" id="exampleModalLabel">Edit Placement Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="updatePlacementDetails" method="post">
						<input type="hidden" id="placementId" name="placementId">
						<div class="form-group">
							<label for="studentEmail">Student Registered EMail-ID</label> <input
								type="text" required class="form-control" id="studentEmail"
								name="studentEmail" aria-describedby="Student Email"
								placeholder="Student's Registered Email-ID" required autofocus readonly>
						</div>
						<div class="form-group">
							<label for="addCompanies">Placed in Company(/Companies)</label> <input
								type="text" required class="form-control" id="addCompanies"
								name="placedInCompany"
								placeholder="Names of Company(/Companies) Placed In" required
								autofocus>
						</div>
						<div class="form-group">
							<label for="ctc">CTC(in lpa)</label> <input type="text" required
								class="form-control" id="ctc" name="ctc" placeholder="0">
						</div>
						<div class="form-group">
							<label for="selectionType">Selection Type</label> <select id="selectionType" name="selectionType">
								<option value="OnCampus">OnCampus</option>
								<option value="OffCampus">OffCampus</option>
							</select>
						</div>
						<div class="form-group">
							<label for="jobProfile">Job Profile</label> <input type="text" required
								class="form-control" id="jobProfile" name="jobProfile" placeholder="Add Job Profile">
						</div>
						<div class="form-group">
							<label for="yearofplacement">Year Of Placement</label> <select id="yearofplacement" name="placementYear">
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
							</select>
						</div>
						<input type="hidden" name="createdBy" value="${createdBy }">
						<button type="submit" class="btn btn-primary">Update Details</button>
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
					<h5 class="modal-title" id="addBookModalLabel">Add Placement
						Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="addPlacementDetails" method="POST">
						<div class="form-group">
							<label for="studentEmail">Student Registered EMail-ID</label> <input
								type="text" required class="form-control" id="studentEmail"
								name="studentEmail" aria-describedby="Student Email"
								placeholder="Student's Registered Email-ID" required autofocus>
						</div>
						<div class="form-group">
							<label for="addCompanies">Placed in Company(/Companies)</label> <input
								type="text" required class="form-control" id="addCompanies"
								name="placedInCompany"
								placeholder="Names of Company(/Companies) Placed In" required
								autofocus>
						</div>
						<div class="form-group">
							<label for="ctc">CTC(in lpa)</label> <input type="text" required
								class="form-control" id="ctc" name="ctc" placeholder="0">
						</div>
						<div class="form-group">
							<label for="ctc">Selection Type</label> <select id="ctc" name="selectionType">
								<option value="OnCampus">OnCampus</option>
								<option value="OffCampus">OffCampus</option>
							</select>
						</div>
						<div class="form-group">
							<label for="jobProfile">Job Profile</label> <input type="text" required
								class="form-control" id="jobProfile" name="jobProfile" placeholder="Add Job Profile">
						</div>
						<div class="form-group">
							<label for="yearofplacement">Year Of Placement</label> <select id="yearofplacement" name="placementYear">
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
							</select>
						</div>
						<input type="hidden" name="createdBy" value="${createdBy }">
						<button type="submit" class="btn btn-primary">Add Placement Detail</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container py-2">
		<center>
			<h2>Placement Details</h2>
		</center>

		<table class="table table-striped table-responsive-sm">
			<thead>
				<tr>
					<th scope="col">Student name</th>
					<th scope="col">Student Email-ID</th>
					<th scope="col">Placed in Company</th>
					<th scope="col">CTC</th>
					<th scope="col">Job Profile</th>
					<th scope="col">Selection Type</th>
					<th scope="col">Year Of Placement</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="l" varStatus="loop">
					<tr>
						<th scope="row">${l.studentName}</th>
						<td>${l.studentEmail}</td>
						<td>${l.placedInCompany}</td>
						<td>${l.ctc }</td>
						<td>${l.jobProfile }</td>
						<td>${l.selectionType }</td>
						<td>${l.placementYear }</td>
						 <td>
							<button type="button" class="btn btn-primary"
								onClick="modalOpen('${l.placementId}','${l.studentEmail}','${l.placedInCompany}','${l.ctc}','${l.selectionType }','${l.placementYear }','${l.jobProfile }')"
								data-toggle="modal">Edit</button>
						</td>
						<td>
							<form action="deletePlacementDetail">
								<input type="hidden" name="createdBy" value="${l.createdBy }">
								<input type="hidden" name="placementId" value="${l.placementId }" />
								<button type="submit" class="btn btn-danger">Delete</button>
							</form>
						</td>
						<%--<td><c:choose>
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
							</c:choose></td> --%>

					</tr>
				</c:forEach>

			</tbody>
		</table>
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#addBookModal">Add Placement Detail</button>
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

</body>
</html>