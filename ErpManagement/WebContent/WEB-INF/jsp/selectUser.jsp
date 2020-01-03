<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
	<title>DataTables example - Bootstrap 3</title>
	<link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
	<link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=50d134a99f38dd18b1cce14412acc94f">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<script type="text/javascript" async="" src="https://ssl.google-analytics.com/ga.js"></script><script type="text/javascript" src="/media/js/site.js?_=a64810efc82bfd3b645784011efa5963"></script>
	<script type="text/javascript" src="/media/js/dynamic.php?comments-page=examples%2Fstyling%2Fbootstrap.html" async=""></script>
	<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" language="javascript" src="../resources/demo.js"></script>
	<script type="text/javascript" class="init">
	
$(document).ready(function() {
	$('#example').DataTable();
} );

/* $(document).on("click", ".open-AddBookDialog", function () {
    var myBookId =4;
    $(".modal-body #bookId").val( myBookId );
    // As pointed out in comments, 
    // it is unnecessary to have to manually call the modal.
     $('#addBookDialog').modal('show');
}); */

function modelOpen(registrationNo,studentName,fatherName,courseName,enrollmentId){
	
	$(".modal-body #registrationNo").val( registrationNo );
	$(".modal-body #studentName").val( studentName );
	$(".modal-body #fatherName").val( fatherName );
	$(".modal-body #courseName").val( courseName );
	$(".modal-body #enrollmentId").val( enrollmentId );
	 $('#addBookDialog').modal('show');
}
	</script>
</head>
<body class="wide comments example dt-example-bootstrap">


<div class="modal fade" id="addBookDialog" role="dialog">
 <div class="modal-dialog" role="document">
    
      <!-- Modal content-->
      <div class="modal-content">
 <div class="modal-header">
    <button class="close" data-dismiss="modal">×</button>
    <h3>Generate Certificate</h3>
  </div>
    <div class="modal-body">
        <b style="color:red;"><center><p>Certificate Details</p></center></b>
        <form action="generateCertificate" method="post">
        <input type="hidden" class="form-control" name="enrollmentId" id="enrollmentId" value=""/>
        <input type="hidden" class="form-control" name="issuedBy" value="${createdBy }"/>
        <div class="form-group">
        <label>Registration No.</label>
        <input type="text" class="form-control" name="registrationNo" id="registrationNo" value="" readonly/>
        </div>
        <div class="form-group">
        <label>Student Name</label>
                <input type="text" class="form-control" name="studentName" id="studentName" value="" readonly/>
                </div>
                <div class="form-group">
                <label>Father Name</label>
                        <input type="text" class="form-control" name="fatherName" id="fatherName" value="" readonly/>
                        </div>
                        <div class="form-group">
                        <label>Course Name</label>
                                <input type="text" class="form-control" name="courseName" id="courseName" value="" readonly/>
                                </div>
                        <div class="form-group">
                        <label style="margin-right:100px;">Course Duration From</label>
                              <input type="date" name="courseDurationFrom" data-date-inline-picker="true"  />
                                  </div>
                                 <div class="form-group">
                        <label style="margin-right:177px;">Course Till</label>
                                <input type="date" name="courseTill" data-date-inline-picker="true"  />
                                </div>
                            <center>   <input type="submit" class="btn btn-primary" value="Generate"/></center>
                                 </form>
    </div>
</div>
</div>
</div>

<form action="findUser">
  
      <label >Select Course</label>
          <select  name="courseId" style="margin-right:20%;margin-top:30px;">
                  <c:forEach items="${list}" var="l" varStatus="loop">
 									 <option value="${l.courseId }">${l.courseName }</option>
  										</c:forEach>
												</select>
  
                            	<label>Select Batch</label>
                            	<select name="batchId" style="margin-right:20%;margin-top:30px;">
                            		 
                             <c:forEach items="${list1}" var="l" varStatus="loop">
 									 <option value="${l.batchId }">${l.batchName }</option>
  										</c:forEach>
												</select>
                       <input type="hidden"  name="createdBy" value="${createdBy }" >
                            
<input type="submit" value="Submit" class="btn btn-danger">
</form>
<br>
<br>
<br>
<br>
<br>
	<a name="top" id="top" ></a>
	<div class="fw-background">
		<div></div>
	</div>
	<div class="fw-container">
		
		
		<div class="fw-body">
			<div class="content">
								<div class="row">
								<div class="col-sm-12">
								<table id="example" class="table table-striped table-bordered dataTable" style="width:100%" role="grid" aria-describedby="example_info">
					<thead>
<tr role="row">
<th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 114.6px;">Registration No.</th>
<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 67.4px;">Student Name</th>
<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 67.4px;">Father Name</th>
<th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 67.4px;">Course Name</th>
<th style="width: 67.4px;">Generate Certificate</th>

					</thead>
					<tbody>
					<c:forEach items="${list2}" var="l" varStatus="loop">
							<tr role="row" class="odd">
							<td class="sorting_1">${l.registrationNo }</td>
							<td>${l.studentName }</td>
							<td>${l.fatherName }</td>
							<td>${l.courseName }</td>
						<td>
						<button type="button" class="btn btn-danger" data-toggle="modal" data-id="ISBN-001122" title="Add this item" onClick="modelOpen('${l.registrationNo}','${l.studentName}','${l.fatherName}','${l.courseName}','${l.enrollmentId}')" href="#addBookDialog">
							Generate Certificate</button>
						
						</td>
						</tr>
				</c:forEach>
						</tbody>
					</table>
					</div></div>
					</div>
					


</div>
</div>
</body>
</html>