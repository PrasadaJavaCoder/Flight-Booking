<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Flight Details</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
}

  header {
    background-color: #008CBA;
    color: #fff;
    padding: 20px;
    text-align: center;
  }

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	box-sizing: border-box;
}

.card {
	background-color: #f7f7f7;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

.table {
	border-collapse: collapse;
	width: 100%;
	text-align: left;
}

.th {
	background-color: #ddd;
}

.td {
	padding: 8px;
	border-bottom: 1px solid #ddd;
}

section {
	background-color: #f7f7f7;
	padding: 80px 0;
}

form {
	background-color: #f7f7f7;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input, select {
	display: block;
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: none;
	margin-bottom: 10px;
	box-sizing: border-box;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin-top: 10px;
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.2s ease-in-out;
}

button[type="submit"] {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 12px 24px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

h1, h2, h4 {
	margin-top: 0;
}

section {
	margin-top: 20px;
}
</style>
</head>
<body>
	<header>
		<h1>Flight Details</h1>
	</header>
	<div class="container">
		<div class="card">
			<table class="table">
				<thead>
					<tr class="th">
						<th>Flight Number</th>
						<th>Operating Airlines</th>
						<th>Departure City</th>
						<th>Arrival City</th>
						<th>Date &amp; Time of Departure</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="td">${flight.flightNumber}</td>
						<td class="td">${flight.operatingAirlines}</td>
						<td class="td">${flight.departureCity}</td>
						<td class="td">${flight.arrivalCity}</td>
						<td class="td">${flight.estimatedDepartureTime}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div>
		<form action="confrimReservation" method="post">
			<h2>Passenger Information</h2>
			
	     <label for="firstName">First Name:</label>
			 <input type="text" id="firstName" name="firstName" placeholder="Enter your first name" required>
			 
	     <label for="lastName">Last Name:</label>
			 <input type="text" id="lastName" name="lastName" placeholder="Enter your last name" required>
			 
		 <label for="middleName">Middle Name:</label>
		     <input type="text" id="middleName" name="middleName" placeholder="Enter your middle name">
		     
		 <label for="email">Email:</label>
			<input type="email" id="email" name="email" placeholder="Enter your email" required>
			
		 <label for="phone">Phone:</label>
			<input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
			
			<input type="hidden" name="flightId" value="${flight.id}">

			<section>
				<h2>Payment Details</h2>
					<label for="card-number">Card Number</label>
					 <input type="text" id="cardNumber" name="cardNumber" placeholder="1234 5678 9012 3456">
					 
					<label for="card-expiry">Expiration Date</label>
					 <input type="text" id="cardExpiry" name="cardExpiry" placeholder="MM / YY">
					 
					<label for="card-cvc">CVC</label> 
					 <input type="number" id="cardCvc" name="cardCvc" placeholder="123">
					 
					<label for="card-name">Name on Card</label>
					 <input type="text" id="cardName" name="cardName" placeholder="John Doe">
					 
					<label for="card-type">Card Type</label>
					 <select id="cardType" name="cardType">
					<option value="visa">Visa</option>
					<option value="mastercard">Mastercard</option>
					<option value="amex">American Express</option>
				     </select>
				<button type="submit">Complete Reservation</button>
			</section>
		</form>
	</div>
</body>
</html>

