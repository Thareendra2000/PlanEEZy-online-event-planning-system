<!-- 
T.M.T.C.Tennakoon
IT21171338

createEventSuccess.jsp 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Event created successfully!!</h1>
<% 


String date = request.getParameter("date");
session.setAttribute("date",date);

String type = request.getParameter("type");
session.setAttribute("type",type);

String noGuests = request.getParameter("noGuests");
session.setAttribute("noGuests",noGuests);
%>
<a href="home2.jsp">Home</a>
<a href="Events_CustomerPOV.jsp">Go to My Events</a>
</body>
</html>