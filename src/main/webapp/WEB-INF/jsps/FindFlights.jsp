<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Flight Search</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Roboto', sans-serif;
	background-color: #F3F7F9;
	color: #323232;
}

h1, h2, h4 {
	margin: 0;
	font-weight: 700;
}

header {
	background-color: #2B2D42;
	color: #fff;
	padding: 30px;
	text-align: center;
}

form {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin: 0 auto;
	padding: 40px;
	width: 80%;
	max-width: 600px;
}

.form-group {
	margin-bottom: 30px;
}

label {
	display: block;
	font-size: 16px;
	margin-bottom: 10px;
	font-weight: 700;
	color: #2B2D42;
}

input[type=text], input[type=date] {
	background-color: #F3F7F9;
	border: none;
	border-radius: 5px;
	color: #323232;
	font-size: 16px;
	padding: 15px;
	width: 100%;
	margin-bottom: 15px;
	box-sizing: border-box;
}

input[type=submit] {
	background-color: #2B2D42;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	font-size: 16px;
	padding: 15px;
	transition: background-color 0.3s ease;
	width: 100%;
}

input[type=submit]:hover {
	background-color: #6C757D;
}
</style>
</head>
<body>
	<header>
		<h1>Flight Search</h1>
	</header>
	<form action="search" method="post">
		<div class="form-group">
			<label for="from">From</label> <input type="text" name="from"
				placeholder="Enter departure location" required>
		</div>
		<div class="form-group">
			<label for="to">To</label> <input type="text" name="to"
				placeholder="Enter destination" required>
		</div>
		<div class="form-group">
			<label for="departureDate">Departure Date</label> <input type="text"
				name="departureDate" placeholder="Select departure date" required>
		</div>
		<div>
			<input type="submit" value="Search">
		</div>
	</form>
</body>
</html>

