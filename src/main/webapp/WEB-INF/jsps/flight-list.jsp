<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight List</title>
<style>

body {
	background-color: #F5F5F5;
	font-family: Arial, sans-serif;
	font-size: 16px;
	line-height: 1.5;
	color: #333;
	margin: 0;
	padding: 0;
}


header {
	background-color: #2C3E50;
	color: #fff;
	padding: 20px;
	text-align: center;
}

h1 {
	margin-top: 0;
	font-size: 36px;
	font-weight: 600;
}

table {
	border-collapse: collapse;
	width: 80%;
	margin: auto;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	overflow: hidden;
	margin-top: 30px;
	margin-bottom: 30px;
}

th {
	background-color: #2C3E50;
	color: white;
	font-size: 20px;
	font-weight: bold;
	padding: 12px;
	text-align: left;
}

td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

.select-link {
	background-color: #27AE60;
	border: none;
	color: white;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 4px;
	transition: background-color 0.3s ease-in-out;
}

.select-link:hover {
	background-color: #219151;
}

</style>
</head>
<body>
	<header>
		<h1>Flight List</h1>
	</header>
	<table>
		<thead>
			<tr>
				<th>Operating Airlines</th>
				<th>Departure City</th>
				<th>Arrival City</th>
				<th>Date &amp; Time of Departure</th>
				<th>Select</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="search" items="${flights}">
				<tr>
					<td>${search.operatingAirlines}</td>
					<td>${search.departureCity}</td>
					<td>${search.arrivalCity}</td>
					<td>${search.estimatedDepartureTime}</td>
					<td><a href="showCompleteReservation?flightId=${search.id}"
						class="select-link">Select</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>

