<!-- 
T.M.T.C.Tennakoon
IT21171338

Packagecreate.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add a package</title>
<link rel="stylesheet" href="CSS/styles.css">
</head>
<body>
<div class="wrapper">
<!-- Form for Add a Package -->
	<form name ="myForm" action="createPackage" method="post" >
    <div class="title">
      Add a Package
    </div>
    <img src="IMAGES/package01.jpg" alt="birthday party" >
    <div class="form">
       <div class="inputfield">
          <label>Amount per head in LKR</label>
          <input type="text" class="input" name="amountPerHead">
       </div>  
        <div class="inputfield">
          <label>Food</label>
          <input type="text" class="input" name="food">
       </div> 
       
       <!--Beverages-->
       <div class="inputfield">
          <label>Beverages</label>
          <input type="text" class="input" name="beverage">
       </div> 
       
       <!-- Decoration-->
      <div class="inputfield">
          <label>Decoration</label>
          <input type="text" class="input" name="decoration">
       </div> 
        
        <!--Music-->
        <div class="inputfield">
          <label>Music</label>
          <input type="text" class="input" name="music">
       </div> 
      
       <!--Description-->
      <div class="inputfield">
          <label>Description</label>
          <textarea class="textarea" name="description"></textarea>
       </div> 
      <!-----buttons-->
      <div class="inputfield">
        <input type="submit" value="Add package" class="btn">
      </div>

      <div class="inputfield">
        <input type="reset" value="Reset" class="btn">
      </div>

    </div>
  </form> 
</div>
	
</body>
</html>