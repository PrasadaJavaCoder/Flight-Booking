package com.FLIGHTAPP.Controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.FLIGHTAPP.Entity.Flight;
import com.FLIGHTAPP.Repository.FlightRepository;

@Controller
public class FlightController {
	
	@Autowired
	private FlightRepository flightRepository;
	
	@RequestMapping("/search")
	public String searchFlights(@RequestParam("from") String from,
			                    @RequestParam("to") String to,
			                    @RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate,
			                    ModelMap modelMap)  {
		List<Flight> flights = flightRepository.findFlights(from, to, departureDate);
		modelMap.addAttribute("flights", flights);
		return "flight-list";
	}
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteResevertion(@RequestParam("flightId")Long id,
			                              ModelMap modelMap) {
		Optional<Flight> findById = flightRepository.findById(id);
		Flight flight = findById.get();
		modelMap.addAttribute("flight", flight);
		return "ShowReservation";
	}

}

