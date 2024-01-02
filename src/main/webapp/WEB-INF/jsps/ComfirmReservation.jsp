<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reservation Confirmation</title>
    <style>
        body {
            background-color: #fff;
            font-family: 'Arial', sans-serif;
            font-size: 14px;
            color: #333;
        }
        .ticket {
            max-width: 500px;
            margin: 0 auto;
            background-color: #f6f6f6;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 2px 2px 8px rgba(0,0,0,0.2);
            padding: 20px;
        }
        .ticket h1 {
            font-size: 28px;
            color: #333;
            margin-top: 0;
            text-align: center;
        }
        .ticket h2 {
            font-size: 20px;
            color: #333;
            margin-top: 30px;
        }
        .ticket ul {
            list-style: none;
            padding-left: 0;
        }
        .ticket li {
            margin-bottom: 10px;
        }
        .ticket p {
            margin-top: 20px;
        }
        .ticket hr {
            border: none;
            border-top: 2px dashed #ccc;
            margin: 30px 0;
        }
    </style>
</head>
<body>
    <div class="ticket">
        <h1>Reservation Confirmation</h1>
        <p>Your reservation has been confirmed with reservation ID: <strong>${reservation}</strong></p>

        <h2>Passenger Details</h2>
        <ul>
            <li><strong>First Name:</strong> ${passenger.firstName}</li>
            <li><strong>Last Name:</strong> ${passenger.lastName}</li>
            <li><strong>Email:</strong> ${passenger.email}</li>
            <li><strong>Phone:</strong> ${passenger.phone}</li>
        </ul>

        <hr>

        <h2>Flight Details</h2>
        <ul>
            <li><strong>Flight Number:</strong> ${flight.flightNumber}</li>
            <li><strong>Departure City:</strong> ${flight.departureCity}</li>
            <li><strong>Arrival City:</strong> ${flight.arrivalCity}</li>
            <li><strong>Departure Time:</strong> ${flight.getEstimatedDepartureTime()}</li>
        </ul>
    </div>
</body>
</html>
