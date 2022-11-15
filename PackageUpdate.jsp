<!-- 
T.M.T.C.Tennakoon
IT21171338

PackageUpdate.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- -----style Sheet -->
<link rel="stylesheet" href="CSS/styles.css">

<title>update a package</title>
</head>
<body>
<div class="wrapper">
<%
	String packageid = request.getParameter("packageID");
	String amount = request.getParameter("amount");
	String food = request.getParameter("food");
	String beverage = request.getParameter("beverages");
	String decoration = request.getParameter("decorations");
	String music = request.getParameter("music");
	String description = request.getParameter("description");
	
%>
<!-- Form for Add a Package -->
	<form action="updatePackage" method="post">
    <div class="title">
      Update Package
    </div>
    <img src="IMAGES/package01.jpg" alt="birthday party" >
    <div class="form">
    <div class="inputfield">
          <label>package ID</label>
          <input type="text" class="input" value = <%=packageid %> name="packageid" readonly>
       </div>
       <div class="inputfield">
          <label>Amount per head in LKR</label>
          <input type="text" class="input" value = <%=amount %> name="amountPerHead">
       </div>  
        <div class="inputfield">
          <label>Food</label>
          <textarea class="textarea"  rows="1" name="food"><%=food %></textarea>
       </div> 
       
       <!--Beverages-->
       <div class="inputfield">
          <label>Beverages</label>
          <textarea class="textarea"rows="1" name="beverage"><%=beverage %></textarea>
       </div> 
       
       <!-- Decoration-->
      <div class="inputfield">
          <label>Decoration</label>
          <textarea class="textarea"rows="1" name="decoration"><%=decoration %></textarea>
        </div> 
        
        <!--Music-->
        <div class="inputfield">
          <label>Music</label>
          <textarea class="textarea"rows="1" name="music"><%=music %></textarea>
       </div> 
      
       <!--Description-->
      <div class="inputfield">
          <label>Description</label>
          <textarea class="textarea" name="description"><%=description %></textarea>
       </div> 
      <!-----buttons-->
      <div class="inputfield">
        <input type="submit" value="Update package" class="btn">
      </div>

      <div class="inputfield">
        <input type="submit" value="Reset" class="btn">
      </div>

    </div>
  </form> 
</div>	

</body>
</html>