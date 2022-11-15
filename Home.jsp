<!-- 
T.M.T.C.Tennakoon
IT21171338

Home.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Home</title>
</head>
<body>
<%
String email=request.getParameter("email");
//out.print("Welcome "+email);
 
session.setAttribute("email",email);
%>

<h1><a href="Organizer.jsp">Organizer</a></h1>
<h1><a href="Customer.jsp">Customer</a></h1>
<h1><a href="login.jsp">Login</a></h1>
<h1><a href="Home.jsp">Home</a></h1>

</body>
</html>