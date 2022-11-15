<!-- 
T.M.T.C.Tennakoon
IT21171338

Events_OrganizerPOV.jsp 
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
<title>Show Events</title>
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
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light shadow-lg">
            <div class="container">
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

<!-- - get Session value of the customer -->
<%
//get log in id from the cookie
String email=(String)session.getAttribute("email");		
	
%>  
<!-- sql query to select data -->
<sql:query var="events" dataSource="${dataSource}">Select e.Date, e.eventID, e.Type, e.Noguest, e.Host, e.CusID  
from event e, account a
where e.CusID = a.cusID and a.email = "<%=email %>";</sql:query>
<!-----<sql:query var="events" dataSource="${dataSource}">select* from event where Host = 4000;</sql:query>--->
<main id="main" class="main">

    <section class="section">
      <div class="row align-items-center"> 
        <div class="row">
<!-- fetch data row by row -->
<c:forEach var="row" items="${events.rows}">

<div class="col-sm-3">
<!-- package full version -->
          <div class="card">
          

<!-- check the event type and show images according to that event -->
<c:if test = "${row.Type == 'Conference'}">
        <img class="card-img-top" src="IMAGES/conference.jpg" />
</c:if>

<c:if test = "${row.Type == 'Birthday party'}">
        <img class="card-img-top" src="IMAGES/birthdayparty.jpg" />
</c:if>

<c:if test = "${row.Type == 'Meeting'}">
        <img class="card-img-top" src="IMAGES/meeting.jpg" />
</c:if>

<c:if test = "${row.Type == 'Wedding'}">
        <img class="card-img-top" src="IMAGES/wedding.jpg" />
</c:if>

<c:if test = "${row.Type == 'Seminar'}">
        <img class="card-img-top" src="IMAGES/seminar.jpg" />
</c:if>
<div class="card-body">

<p class="card-text"><b>Date </b><c:out value="${row.Date}" /><br>
<b>Type </b><c:out value="${row.Type}" /><br>
<b>No of guests </b><c:out value="${row.Noguest}" /><br>
<b>No of guests </b><c:out value="${row.eventID}" /></p>
  
  

  
        </div>
      </div>
    </div>
    

</c:forEach>

</div>
</div>
</section>
<p class="card-text"><a href="Packages_organizerPOV.jsp" class="btn btn-warning">Go back <i class="bi bi-arrow-left-circle"></i></a></p>
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