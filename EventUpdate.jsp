<!-- 
T.M.T.C.Tennakoon
IT21171338

EventUpdate.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- -----style Sheet -->
<link rel="stylesheet" href="CSS/styles.css">

<title>update an event</title>
</head>
<body>
<%
	String eventid = request.getParameter("eventID");
	String date = request.getParameter("Date");
	String type = request.getParameter("Type");
	String noguests = request.getParameter("Noguest");
%>
<div class="wrapper">
    <div class="title">
      Update the Event
    </div>
    <!-- Form for Register an Event -->
	  <form name ="myForm" action="updateEvent" method="post" onsubmit="return validateForm()">
    <img src="IMAGES/event01.jpg" alt="image of event planning" >
    <div class="form">
    <!---eveny ID ---->
    <div class="inputfield">
          <label>Event ID</label>
          <input type="text" class="input" value = <%=eventid %> name="eventid" id="input" readonly>
          
       </div> 
       
      <!-- 		select date -->
       <div class="inputfield">
          <label>Date</label>
          <input type="date" class="input" value = <%=date %> name="date" id="input" >
          
       </div> 
        
       <!-- select type  -->
        <div class="inputfield">
          <label>Event Type</label>
          <input type="text" class="input" value = <%=type %> name="date" id="input" readonly>
          </div>
      
       <!-- 	  	select No of guests -->
       <div class="inputfield">
        <label>No of guests</label>
        <input type="number" class="input" id = "noguests" name="noOfGuests"  value="<%=noguests %>" >
     </div> 
      
     <p id="alert"></p>
      <div class="inputfield">
        <input type="submit" value="Update event" class="btn">
      </div>
      <div class="inputfield">
        <input type="reset" value="Reset" class="btn">
      </div>
    </div>
    </form>
</div>	

</body>
</html>