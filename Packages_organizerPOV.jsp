<!-- 
T.M.T.C.Tennakoon
IT21171338

packages_organizerPOV.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!--     tag libraries for sql and c -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	
<!-- 	create the connection -->
	<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/planeezy?autoReconnect=true&useSSL=false" user="root" password="Th@rin2000" />
	
<!-- 	import java classes -->
	<%@ page import ="javax.servlet.* "%>
	<%@ page import ="javax.servlet.http.* "%>
	<%@ page import ="java.io.IOException"%>
	<%@ page import ="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages</title>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
  <meta content="" name="keywords">

  

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="CSS/style2.css" rel="stylesheet">
  <!-- CSS FILES -->        
        <link href="CSS/bootstrap.min.css" rel="stylesheet">

        <link href="CSS/bootstrap-icons.css" rel="stylesheet">

        <link href="CSS/maincss.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin - v2.4.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

 <nav class="navbar navbar-expand-lg bg-light shadow-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">
                    <img src="IMAGES/logo.png" class="logo img-fluid" alt="Kind Heart Charity">
                    <span> Planeezy
                        <small>Event Management</small>
                    </span>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link " href="home2.jsp">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link " href="browsePackages.jsp">Packages</a>
                        </li>

                        <li class="nav-item dropdown">
                             <a class="nav-link " href="browseVenues.jsp">Venues</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link " href="SignUp.jsp">Become a member</a>
                        </li>

                        <li class="nav-item ms-3">
                            <a class="nav-link custom-btn custom-border-btn btn" href="login.jsp">Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
<!-- - get session value of the organizer -->
<%
String email=(String)session.getAttribute("email");
%>


<!-- sql query to select data -->
<sql:query var="packages" dataSource="${dataSource}">Select p.amountPerHead, p.packageID, p.Food, p.Beverage, p.Music, p.Decoration, p.Description 
from package p, account a
where p.InCharge = a.orgID and a.email = "<%=email %>";</sql:query>
<%-- <sql:query var="packages" dataSource="${dataSource}">select* from package where Incharge = 4000;</sql:query> --%>

<main id="main" class="main">
<p class="card-text"><a href="PackageCreate.jsp" class="btn btn-warning">Add a package </a></p>
<p class="card-text"><a href="Events_OrganizerPOV.jsp" class="btn btn-warning">See the events Handled by me <i class="bi bi-arrow-bar-right"></i> </a></p>
    <section class="section">
      <div class="row align-items-center"> 
        <div class="row">
        
<!-- fetch data row by row -->
<c:forEach var="row" items="${packages.rows}">
	
          <div class="col-sm-3">
<!-- package full version -->
          <div class="card">
          <div class="card-body">
          <h5 class="card-title">LKR <c:out value="${row.amountPerHead}" /></h5>
          <h6 class="card-subtitle mb-2 text-muted">Amount per head</h6>
          <p class="card-text"><b>Food </b><c:out value="${row.Food}" /><br>
          <b>Beverages </b><c:out value="${row.Beverage}" /><br>
          <b>Decorations </b><c:out value="${row.Decoration}" /><br>
          <b>Music </b><c:out value="${row.Music}" /><br>
          <b>Description </b><c:out value="${row.description}" /><br></p>
          
<!--       set all values to variables to send through the url -->
<!--       this is for update function -->
            <c:url value="PackageUpdate.jsp" var="pupdate">
				
				<c:param name="packageID" value="${row.packageID}"/>
				<c:param name="amount" value="${row.amountPerHead}"/>
				<c:param name="food" value="${row.Food}"/>
				<c:param name="beverages" value="${row.Beverage}"/>
				<c:param name="decorations" value="${row.Decoration}"/>
				<c:param name="music" value="${row.Music}"/>
				<c:param name="description" value="${row.Description}"/>
			</c:url>
            <p class="card-text"><a href="${pupdate}" class="btn btn-success">Update <i class="bi bi-pen"></i></a></p>

<!--       this is for delete function -->
            <c:url value="PackageDelete.jsp" var="pdelete">
				
				<c:param name="packageID" value="${row.packageID}"/>
				<c:param name="amount" value="${row.amountPerHead}"/>
				<c:param name="food" value="${row.Food}"/>
				<c:param name="beverages" value="${row.Beverage}"/>
				<c:param name="decorations" value="${row.Decoration}"/>
				<c:param name="music" value="${row.Music}"/>
				<c:param name="description" value="${row.Description}"/>
			</c:url>
            <p class="card-text"><a href="${pdelete}" class="btn btn-danger">Delete <i class="bi bi-trash3"></i></a></p>

          </div>
          </div>
          </div>
</c:forEach>
 		</div>
      </div>
    </section>   
  </main>

<!-- Vendor JS Files -->
 <script src="vendor/apexcharts/apexcharts.min.js"></script>
 <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="vendor/chart.js/chart.min.js"></script>
 <script src="vendor/echarts/echarts.min.js"></script>
 <script src="vendor/quill/quill.min.js"></script>
 <script src="vendor/simple-datatables/simple-datatables.js"></script>
 <script src="vendor/tinymce/tinymce.min.js"></script>
 <script src="vendor/php-email-form/validate.js"></script>

 <!-- Template Main JS File -->
 <script src="JSCRIPT/main.js"></script>
</body>
</html>