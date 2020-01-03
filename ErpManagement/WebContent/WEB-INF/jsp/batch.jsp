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
	function modalOpen(name, author, publisher, time, id) {
		const ebname = document.getElementById('ebname');
		//alert(id);
		const ebtime = document.getElementById('ebtime');
		/* form.setAttribute('action', 'updateDish?dishId='+ id); */
		ebname.value = name;
		ebid.value = id;
		ebtime.value = time;
		$('#exampleModal').modal();

	}
</script>

<body>
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Edit Batch
						details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="updateBatch" method="post">
						<input type="hidden" id="ebid" name="batchId">
						<div class="form-group">
							<label for="ebname">Batch Name</label> <input type="text"
								class="form-control" id="ebname" name="batchName" required
								aria-describedby="Batch name" placeholder="Batch name">
						</div>
						<div class="form-group">
							<label for="ebauthor">Session Name</label> <select id="ebauthor"
								name="sessionId">

								<c:forEach items="${list1}" var="l" varStatus="loop">
									<option value="${l.sessionId }">${l.sessionName }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="ebpublisher">Faculty Name</label> <select
								id="ebpublisher" name="facultyId">

								<c:forEach items="${list2}" var="l" varStatus="loop">
									<option value="${l.facultyId }">${l.facultyName }</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group">
							<label for="ebtime">Batch Timing</label> <input type="text"
								class="form-control" id="ebtime" name="batchTiming" required
								placeholder="Batch Timing">
						</div>
						<input type="hidden" name="modifiedBy" value="${createdBy }">

						<button type="submit" class="btn btn-primary">Update</button>
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
					<h5 class="modal-title" id="addBookModalLabel">Add Batch
						details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="addBatch" method="POST">
						<div class="form-group">
							<label for="ebname">Batch Name</label> <input type="text"
								class="form-control" id="ebname" name="batchName" required
								aria-describedby="Batch name" placeholder="Batch name">
						</div>
						<div class="form-group">
							<label for="ebauthor">Session Name</label> <select
								name="sessionId">

								<c:forEach items="${list1}" var="l" varStatus="loop">
									<option value="${l.sessionId }">${l.sessionName }</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="ebpublisher">Faculty Name</label> <select
								name="facultyId">

								<c:forEach items="${list2}" var="l" varStatus="loop">
									<option value="${l.facultyId }">${l.facultyName }</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group">
							<label for="ebtime">Batch Timing</label> <input type="text"
								class="form-control" id="ebtime" name="batchTiming" required
								placeholder="Batch Timing">
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
			<form action="showavailableBatch" method="post">
				<input type="hidden" name="createdBy" value="${createdBy }">

				<button type="submit" class="btn btn-primary" style="width: 100%">
					Show Available Batches</button>
			</form>
			<form action="batch" method="post">
				<input type="hidden" name="createdBy" value="${createdBy }">

				<button type="submit" class="btn btn-danger" style="width: 100%">
					Show All Batches</button>
			</form>
		</div>

		<table class="table table-striped table-responsive-sm">
			<thead>
				<tr>
					<th scope="col">Batch Name</th>
					<th scope="col">Session Name</th>
					<th scope="col">Faculty Name</th>
					<th scope="col">Batch Timing</th>
					<th scope="col">Active</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="l" varStatus="loop">
					<tr>
						<th scope="row">${l.batchName}</th>
						<td>${l.sessionName}</td>
						<td>${l.facultyName}</td>
						<td>${l.batchTiming}</td>
						<td>${l.isActive }</td>
						<td>
							<button type="button" class="btn btn-primary"
								onClick="modalOpen('${l.batchName}','${l.sessionName}','${l.facultyName}','${l.batchTiming }','${l.batchId }')"
								data-toggle="modal">Edit</button>
						</td>
						<td>
							<form action="deletebatch">
								<input type="hidden" name="createdBy" value="${createdBy }">
								<input type="hidden" name="batchId" value="${l.batchId }" />
								<button type="submit" class="btn btn-danger">Delete</button>
							</form>
						</td>
						<td><c:choose>
								<c:when test="${l.isActive==1}">
									<form action="inActiveBatch">
										<input type="hidden" name="createdBy" value="${createdBy }">
										<input type="hidden" name="batchId" value="${l.batchId }" />
										<button type="submit" class="btn btn-primary"
											style="background-color: green;">InActive</button>
									</form>
								</c:when>
								<c:otherwise>
									<form action="activeBatch">
										<input type="hidden" name="createdBy" value="${createdBy }">
										<input type="hidden" name="batchId" value="${l.batchId }" />
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
			data-target="#addBookModal">Add New Batch</button>
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
