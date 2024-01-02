<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>FlightApp Registration</title>
    <style>
      /* Global Styles */
      body {
        font-family: 'Roboto', sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
      }

      /* Header Styles */
      header {
        background-color: #008CBA;
        color: #fff;
        padding: 20px;
        text-align: center;
      }

      /* Form Styles */
      form {
        width: 400px;
        margin: 20px auto;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        border-radius: 10px;
      }

      input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: none;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
      }

      input[type="submit"] {
        padding: 10px;
        border-radius: 5px;
        border: none;
        background-color: #008CBA;
        color: #fff;
        cursor: pointer;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        transition: background-color 0.2s ease-in-out;
      }

      input[type="submit"]:hover {
        background-color: #0077A9;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Registration Page</h1>
    </header>
    <form action="saveRegd" method="post">
      <label for="firstName">First Name:</label>
      <input type="text" id="firstName" name="firstName" required>

      <label for="lastName">Last Name:</label>
      <input type="text" id="lastName" name="lastName" required>

      <label for="email">Email:</label>
      <input type="text" id="email" name="email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>

      <input type="submit" value="Register">
    </form>
  </body>
</html>

