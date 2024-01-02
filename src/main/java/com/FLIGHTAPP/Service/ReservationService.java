package com.FLIGHTAPP.Service;

import com.FLIGHTAPP.Entity.Reservation;
import com.FLIGHTAPP.Payload.ReservationDto;

public interface ReservationService {
	
	Reservation bookflight(ReservationDto reservationDto);
}
