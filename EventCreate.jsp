<!-- 
T.M.T.C.Tennakoon
IT21171338

EventCreate.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Event</title>
<script src="JSCRIPT/Event.js"></script>
<style>
#alert1, #alert2, #alert3{
  text-align: right;
  position: relative;
  top:-15px;
  color: red;
}

</style>

<!-- -----style Sheet -->
<link rel="stylesheet" href="CSS/styles.css">

<script>

</script>

</head>
<body>

<div class="wrapper">
    <div class="title">
      Event Creation Form
    </div>
    <!-- Form for Register an Event -->
	  <form name ="myForm" action="createEvent" method="post" onsubmit="return EventValidate()">
    <img src="IMAGES/event01.jpg" alt="image of event planning" >
    <div class="form">
      <!-- 		select date -->
       <div class="inputfield">
          <label>Date</label>
          <input type="date" class="input" name="date" id="date"> 
       </div> 
        
       <!-- select type  -->
        <div class="inputfield">
          <label>Event Type</label>
          <div class="custom_select">
            <select name="type" id="type">
              <option value="Birthday party">Birthday party</option>
              <option value="Wedding">Wedding</option>
              <option value="Conference">Conference</option>
              <option value="Meeting">Meeting</option>
              <option value="Seminars">Seminars</option>
            </select>
            
          </div>
       </div>
      
       <!-- 	  	select No of guests -->
       <div class="inputfield">
        <label>No of guests</label>
        <input type="number" class="input" id = "noguests" name="noOfGuests" >
        
     </div>  
     
      <div class="inputfield">
        <input type="submit" value="Create an event" class="btn">
      </div>
      <div class="inputfield">
        <input type="reset" value="Reset" class="btn">
      </div>
    </div>
    </form>
</div>	
	
</body>
</html>