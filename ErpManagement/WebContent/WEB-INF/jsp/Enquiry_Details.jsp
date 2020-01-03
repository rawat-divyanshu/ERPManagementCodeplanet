<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${Full_Name } Profile &mdash;</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
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
		$('#seeRoleModal').modal();
		
	}
	</script>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
          
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      
      <div class="container-fluid">
        <div class="d-flex align-items-center">
          <div class="site-logo mr-auto w-25"><a href="back">ErpManagement</a></div>

          <div class="mx-auto text-center">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
                <li><a href="#home-section" class="nav-link">Home</a></li>
                </ul>
            </nav>
          </div>
           
          <button type="Submit" class="btn btn-primary"  onClick="modalOpen()" data-toggle="modal" data-dismiss="modal">Interested Courses</button>
         
    </header>

    <div class="intro-section" id="home-section">
      
      <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row align-items-center">
                <div class="col-lg-6 mb-4">
                  <h1  data-aos="fade-up" data-aos-delay="100">Welcome ${Full_Name }</h1><br>
               </div>
                <c:forEach items="${enquiry_details}" var="ed" varStatus="loop">
              
                 <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                          <form action="addEnquiry" method="post">
                          <input type="hidden" name="Pk_Enquiry_Id" value="${Pk_Enquiry_Id }">
                                <div class="form-group">
                            	<label for="name">Full Name</label>
                                <input type="text" class="form-control"  id="Full_Name" name="Full_Name" required aria-describedby="Full_Name" value="${Full_Name }">
                            </div>
                            <div class="form-group">
                            	<label for="ecname">College Name</label>
                                <input type="text" class="form-control" id="College_Name" name="College_Name" required value="${College_Name }">
                            </div>
                            <div class="form-group">
                            	<label for="emobile">Mobile_Number</label>
                                <input  type="tel"  maxlength="10" pattern="{0-9}" class="form-control" id="Mobile_Number" name="Mobile_Number" required value="${Mobile_Number }">
                            </div>
                            <div class="form-group">
                            	<label for="eemail">Email Id</label>
                                <input type="email" class="form-control" id="Email_Id" name="Email_Id" required value="${Email_Id }">
                            </div>
                            <div class="form-group">
                            	<label for="epassout">Year_Passout</label>
                                <input type="text" class="form-control" id="Year_Passout" name="Year_Passout" required value="${Year_Passout }">
                            </div>
                            <div class="form-group">
                            	<label for="ebranch">Branch</label>
                                <input type="text" class="form-control" id="Branch" name="Branch" required value="${Branch }">
                            </div>
                             <button type="submit" class="btn btn-primary">Edit Enquiry</button>
                        </form>
                 
                            
                                
                </div>
                </c:forEach>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>

      </div>




     
  
    


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