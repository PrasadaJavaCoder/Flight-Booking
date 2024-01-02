package com.FLIGHTAPP.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.FLIGHTAPP.Entity.Reservation;
import com.FLIGHTAPP.Payload.ReservationDto;
import com.FLIGHTAPP.Service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;

	@RequestMapping("/confrimReservation")
	public String confrimReservation(ReservationDto resevationDto,ModelMap modelMap) {
		Reservation reservationId = reservationService.bookflight(resevationDto);
		modelMap.addAttribute("reservation", reservationId.getId());
		modelMap.addAttribute("passenger", reservationId.getPassenger());
		modelMap.addAttribute("flight", reservationId.getFlight());
		return "ComfirmReservation";
	}
}
