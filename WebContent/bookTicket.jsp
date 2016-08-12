<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Ticket Reservation</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 60%;
}

td, th {
    border: 2px solid #dddddd;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<form accept="${pageContext.request.contextPath}/bookTicket" method="post">
<h3>Journey Detail</h3>
<table>
<tr><td>Source</td><td><input type="text" name="source"></td></tr>
<tr><td>Destination</td><td><input type="text" name="destination"></td></tr>
<tr><td>JourneyDate</td><td><input type="text" placeholder="2014/09/04" name="journeyDate"></td></tr>
</table>
<h3>Passenger Detail</h3>
<table>
<tr><th>FirstName</th><th>LastName</th><th>Address</th><th>Gender</th><th>Age</th>
<c:forEach begin="1" end="6" step="1">
<tr><td><input type="text" name="fName"></td>
<td><input type="text" name="lName"></td>
<td><input type="text" name="address"></td>
<td><input type="text" name="gender"></td>
<td><input type="text" name="age"></td></tr>
</c:forEach>
</table>
<center><input type="submit" value="BookTicket"></center>
</form> 
</body>
</html>