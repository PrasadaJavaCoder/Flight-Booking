<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
}

header {
	background-color: #008CBA;
	color: #fff;
	padding: 20px;
	text-align: center;
}

h1 {
	font-size: 2.5rem;
	margin-top: 0;
}

form {
	background-color: #fff;
	border: 1px solid #ccc;
	padding: 40px;
	width: 400px;
	margin: 40px auto;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
	margin-bottom: 20px;
}

td {
	padding: 10px;
}

label {
	display: block;
	font-size: 1.2rem;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"], input[type="submit"] {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 3px;
	background-color: #f8f8f8;
	font-size: 1.2rem;
	margin-bottom: 20px;
}

input[type="text"]:focus, input[type="password"]:focus {
	outline: none;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
}

input[type="submit"] {
	background-color: #008CBA;
	color: #fff;
	font-weight: bold;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	transition: background-color 0.3s ease-in-out;
}

input[type="submit"]:hover {
	background-color: #006F8C;
}

input[type="text"]:required, input[type="password"]:required {
	border-color: red;
}

.error {
	color: red;
	font-size: 1.2rem;
	margin-top: 10px;
}
</style>
</head>
<body>
	<header>
		<h1>Login Page</h1>
	</header>
	<form action="verifyLogin" method="post">
		<table>
			<tr>
				<td><label for="email">Email:</label></td>
				<td><input type="text" id="email" name="email" required></td>
			</tr>
			<tr>
				<td><label for="password">Password:</label></td>
				<td><input type="password" id="password" name="password" required></td>
			</tr>
		</table>
		<input type="submit" value="Login">
		<p class="error">${error}</p>
	</form>
</body>
</html>
