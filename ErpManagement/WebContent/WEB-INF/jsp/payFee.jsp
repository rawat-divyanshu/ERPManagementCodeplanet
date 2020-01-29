<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pay Fee</title>
</head>
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

</body>
</html>