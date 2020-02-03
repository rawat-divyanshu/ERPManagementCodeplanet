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
<title>Fee Submission Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<script>
	function modalOpen(enrollmentId, studentName, emailId, courseName,
			courseFee, amountDeposited, amountRemaining) {

		const eid = document.getElementById("eid");
		const sname = document.getElementById("sname");
		const emid = document.getElementById("emid");
		const cname = document.getElementById("cname");
		const cfee = document.getElementById("cfee");
		const adep = document.getElementById("adep");
		const arem = document.getElementById("arem");

		eid.value = enrollmentId;
		sname.value = studentName;
		emid.value = emailId;
		cname.value = courseName
		cfee.value = courseFee;
		adep.value = amountDeposited;
		arem.value = amountRemaining;

		$('#payFeeModal').modal();

	}
</script>

</head>
<body>
	<div class="modal fade" id="payFeeModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Pay Course Fee</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="payfee" method="post">
						<input type="hidden" id="eid" name="enrollmentId">
						<div class="form-group">
							<label class="col-md-4 control-label" for="">Student Name</label>
							<div class="col-md-5">
								<input id="sname" name="studentName" type="text" placeholder=""
									class="form-control input-md" required readonly>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="">Email ID</label>
							<div class="col-md-5">
								<input id="emid" name="emailId" type="text" placeholder=""
									class="form-control input-md" required readonly>

							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="">Course Name</label>
							<div class="col-md-5">
								<input id="cname" name="courseName" type="text" placeholder=""
									class="form-control input-md" required readonly>

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="">Course Fee</label>
							<div class="col-md-5">
								<input id="cfee" name="courseFee" type="text" placeholder=""
									class="form-control input-md" required readonly>

							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="">Amount Paid</label>
							<div class="col-md-4">
								<input id="adep" type="text" placeholder=""
									class="form-control input-md" required readonly>

							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="arem">Amount
								Remaining</label>
							<div class="col-md-4">
								<input id="arem" name="amountRemaining" type="text"
									placeholder="" class="form-control input-md" required readonly>
							</div>
						</div>


						<div class="form-group">
							<label class="col-md-4 control-label" for="">Amount
								Paying</label>
							<div class="col-md-5">
								<input id="apay" name="amountDeposited" type="text"
									placeholder="" class="form-control input-md" required>

							</div>
						</div>

						<input type="hidden" name="createdBy" value="${createdBy }">

						<div class="form-group">
							<label class="col-md-4 control-label" for=""></label>
							<div class="col-md-4">
								<button type="submit" name="" class="btn btn-primary">Pay
									Amount</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container p-3 my-3 border">
		<div class="p-3 mb-2 bg-info text-white">
			<center>
				<h2>
					<strong>Student Fee Submission Details</strong>
				</h2>
			</center>
		</div>
		<div class="container p-3 my-3 border" align="center">
			<button type="button" value="0" onclick="func(event)"
				class="btn btn-danger">Pending Submission Students</button>
			<button type="button" value="1" onclick="func(event)"
				class="btn btn-success">Complete Submission Students</button>
			<button type="button" value="2" onclick="func(event)"
				class="btn btn-warning">All Students</button>
			<button type="button" value="3" onclick="func(event)"
				class="btn btn-primary">Submit Fee</button>
			<input type="hidden" id="option" name="option" value="3" />
		</div>
	</div>
	<div class="container p-3 my-3 border">
		<div id="unpaidFeeTable" style="display: none;">
			<table id="tablePreview"
				class="table table-striped table-hover table-bordered table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Student Name</th>
						<th>Course Enrolled</th>
						<th>Batch</th>
						<th>Total Fee</th>
						<th>Amount Paid</th>
						<th>Amount Remaining</th>
						<th>Fee Status</th>
						<th>#</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${enrolledStudents }" var="l" varStatus="loop">
						<c:if test="${l.feeStatus == 0 }">
							<tr>
								<th scope="row">#</th>
								<td>${l.studentName }</td>
								<td>${l.courseName }</td>
								<td>${l.batchName }</td>
								<td>${l.courseFee }</td>
								<td>${l.amountDeposited }</td>
								<td>${l.amountRemaining }</td>
								<td><span class="badge badge-danger">Unpaid</span></td>
								<td><button type="button" class="btn btn-primary" disabled>Pay
										Fee</button></td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div id="paidFeeTable" style="display: none;">
			<table id="tablePreview"
				class="table table-striped table-hover table-bordered table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Student Name</th>
						<th>Course Enrolled</th>
						<th>Batch</th>
						<th>Total Fee</th>
						<th>Amount Paid</th>
						<th>Amount Remaining</th>
						<th>Fee Status</th>
						<th>#</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${enrolledStudents }" var="l" varStatus="loop">
						<c:if test="${l.feeStatus == 1 }">
							<tr>
								<th scope="row">#</th>
								<td>${l.studentName }</td>
								<td>${l.courseName }</td>
								<td>${l.batchName }</td>
								<td>${l.courseFee }</td>
								<td>${l.amountDeposited }</td>
								<td>${l.amountRemaining }</td>
								<td><span class="badge badge-success">Paid</span></td>
								<td>
									<form action="#">
										<c:choose>
											<c:when test="${l.feeStatus == 1 }">
												<button type="button" class="btn btn-primary" disabled>Pay
													Fee</button>
											</c:when>
											<c:when test="${l.feeStatus == 0 }">
												<button type="button" class="btn btn-primary"
													onClick="modalOpen('${l.enrollmentId }','${l.studentName}','${l.emailId }','${l.courseName}','${l.courseFee}','${l.amountDeposited }','${l.amountRemaining }')"
													data-toggle="modal">Pay Fee</button>
												<input type="hidden" name="enrollmentId"
													value="${l.enrollmentId }" />
											</c:when>
										</c:choose>
									</form>
								</td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div id="allFeeTable" style="display: none;">
			<table id="tablePreview"
				class="table table-striped table-hover table-bordered table-sm">
				<thead>
					<tr>
						<th>#</th>
						<th>Student Name</th>
						<th>Course Enrolled</th>
						<th>Batch</th>
						<th>Total Fee</th>
						<th>Amount Paid</th>
						<th>Amount Remaining</th>
						<th>Fee Status</th>
						<th>#</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${enrolledStudents }" var="l" varStatus="loop">
						<tr>
							<th scope="row">#</th>
							<td>${l.studentName }</td>
							<td>${l.courseName }</td>
							<td>${l.batchName }</td>
							<td>${l.courseFee }</td>
							<td>${l.amountDeposited }</td>
							<td>${l.amountRemaining }</td>
							<td><c:choose>
									<c:when test="${l.feeStatus == 1}">
										<span class="badge badge-success">Paid</span>
									</c:when>
									<c:otherwise>
										<span class="badge badge-danger">Unpaid</span>
									</c:otherwise>
								</c:choose></td>
							<td><form action="#">
									<c:choose>
										<c:when test="${l.feeStatus == 1 }">
											<button type="button" class="btn btn-primary" disabled>Pay
												Fee</button>
										</c:when>
										<c:when test="${l.feeStatus == 0 }">
											<button type="button" class="btn btn-primary"
												onClick="modalOpen('${l.enrollmentId }','${l.studentName}','${l.emailId }','${l.courseName}','${l.courseFee}','${l.amountDeposited }','${l.amountRemaining }')"
												data-toggle="modal">Pay Fee</button>
											<input type="hidden" name="enrollmentId"
												value="${l.enrollmentId }" />
										</c:when>
									</c:choose>
								</form></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>


		<div id="submitFee">
			<form action="studentFeeDetails" method="post">
				<div class="form-group">
					<label class="col-md-4 control-label" for="textinput">Student
						E-Mail ID</label>
					<div class="col-md-5">
						<input id="textinput" name="emailId" type="text"
							placeholder="Student Email Address" class="form-control input-md"
							required>

					</div>
				</div>
				<input type="hidden" name="createdBy" value="${createdBy }">
				<div class="form-group">
					<label class="col-md-4 control-label" for=""></label>
					<div class="col-md-4">
						<button type="submit" name="" class="btn btn-primary">Get
							Fee Details</button>
					</div>
				</div>

			</form>
			<c:if test="${studentSearch == 1 }">
				<div id="studentFeeDetail">
					<table id="tablePreview"
						class="table table-striped table-hover table-bordered table-sm">
						<thead>
							<tr>
								<th>#</th>
								<th>Student Name</th>
								<th>Course Enrolled</th>
								<th>Batch</th>
								<th>Total Fee</th>
								<th>Amount Paid</th>
								<th>Amount Remaining</th>
								<th>Fee Status</th>
								<th>#</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${studentFeeDetail }" var="l" varStatus="loop">
								<tr>
									<th scope="row">#</th>
									<td>${l.studentName }</td>
									<td>${l.courseName }</td>
									<td>${l.batchName }</td>
									<td>${l.courseFee }</td>
									<td>${l.amountDeposited }</td>
									<td>${l.amountRemaining }</td>
									<td><c:choose>
											<c:when test="${l.feeStatus == 1}">
												<span class="badge badge-success">Paid</span>
											</c:when>
											<c:otherwise>
												<span class="badge badge-danger">Unpaid</span>
											</c:otherwise>
										</c:choose></td>
									<td><form action="#">
											<c:choose>
												<c:when test="${l.feeStatus == 1 }">
													<button type="button" class="btn btn-primary" disabled>Pay
														Fee</button>
												</c:when>
												<c:when test="${l.feeStatus == 0 }">
													<button type="button" class="btn btn-primary"
														onClick="modalOpen('${l.enrollmentId }','${l.studentName}','${l.emailId }','${l.courseName}','${l.courseFee}','${l.amountDeposited }','${l.amountRemaining }')"
														data-toggle="modal">Pay Fee</button>
													<input type="hidden" name="enrollmentId"
														value="${l.enrollmentId }" />
												</c:when>
											</c:choose>
										</form></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:if>
		</div>
	</div>
	<div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
		<form action="dashboard" method="post">
			<input type="hidden" name="createdBy" value="${createdBy }">
			<div class="form-group">
				<input type="submit" class="btn btn-danger btn-pill" value="Return to DashBoard"
					style="width: 300px; height: 50px;">
			</div>
		</form>
	</div>

	<script>
		function func(e) {
			console.log(e.target.value);
			switch (e.target.value) {
			case "0":
				document.getElementById("allFeeTable").style.display = "none";
				document.getElementById("paidFeeTable").style.display = "none";
				document.getElementById("submitFee").style.display = "none";
				document.getElementById("unpaidFeeTable").style.display = "block";
				break;
			case "1":
				document.getElementById("allFeeTable").style.display = "none";
				document.getElementById("paidFeeTable").style.display = "block";
				document.getElementById("submitFee").style.display = "none";
				document.getElementById("unpaidFeeTable").style.display = "none";
				break;
			case "2":
				document.getElementById("allFeeTable").style.display = "block";
				document.getElementById("paidFeeTable").style.display = "none";
				document.getElementById("submitFee").style.display = "none";
				document.getElementById("unpaidFeeTable").style.display = "none";
				break;
			default:
				document.getElementById("allFeeTable").style.display = "none";
				document.getElementById("paidFeeTable").style.display = "none";
				document.getElementById("submitFee").style.display = "block";
				document.getElementById("unpaidFeeTable").style.display = "none";
			}
		}
	</script>

</body>
</html>