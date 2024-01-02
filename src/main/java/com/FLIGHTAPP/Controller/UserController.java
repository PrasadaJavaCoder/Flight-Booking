package com.FLIGHTAPP.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.FLIGHTAPP.Entity.User;
import com.FLIGHTAPP.Repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@GetMapping("/regdPage")
	public String showRegd() {
		return "login/Register";
	}

	@PostMapping("/saveRegd")
	public String saveRegistration(User user, Model model) {
		userRepository.save(user);
		model.addAttribute(
				"message",
				"Registration successful!");
		return "login/Login";
	}

	@GetMapping("/loginPage")
	public String showLogin() {
		return "login/Login";
	}

	@GetMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("email") String email,
			@RequestParam("password") String password,
			Model model) {
		User user = userRepository.findByEmail(email);
		if (user != null) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
				return "FindFlights";
			} else {
				model.addAttribute("error", "Invalid email or password!");
				return "login/Login";
			}
		} else {
			model.addAttribute("error", "Invalid email or password!");
			return "login/Login";
		}
	}

}
