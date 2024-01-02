package com.FLIGHTAPP.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.FLIGHTAPP.Entity.Flight;
import com.FLIGHTAPP.Entity.Passenger;
import com.FLIGHTAPP.Entity.Reservation;
import com.FLIGHTAPP.Payload.ReservationDto;
import com.FLIGHTAPP.Repository.FlightRepository;
import com.FLIGHTAPP.Repository.PassengerRepository;
import com.FLIGHTAPP.Repository.ReservationRepository;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private PassengerRepository passengerRepository;
	@Autowired
	private FlightRepository flightRepository;
	@Autowired
	private ReservationRepository reservationRepository;

	@Override
	public Reservation bookflight(ReservationDto reservationDto) {
		Passenger passenger = new Passenger();
		passenger.setFirstName(reservationDto.getFirstName());
		passenger.setLastName(reservationDto.getLastName());
		passenger.setMiddleName(reservationDto.getMiddleName());
		passenger.setEmail(reservationDto.getEmail());
		passenger.setPhone(reservationDto.getPhone());
		passengerRepository.save(passenger);
		
		Long flightId = reservationDto.getFlightId();
		Optional<Flight> findById = flightRepository.findById(flightId);
		Flight flight = findById.get();
		
		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		
		reservationRepository.save(reservation);
		return reservation;
	}

}
