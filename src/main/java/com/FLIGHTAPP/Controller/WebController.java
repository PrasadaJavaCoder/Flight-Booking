package com.FLIGHTAPP.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {

    @GetMapping("/aboutUs")
    public String aboutUs() {
        return "aboutUs"; // About Us page
    }

    @GetMapping("/services")
    public String services() {
        return "services"; // Services page
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact"; // Contact page
    }

    @GetMapping("/privacy")
    public String privacy() {
        return "privacy"; // Privacy Policy page
    }

    @GetMapping("/terms")
    public String terms() {
        return "terms"; // Terms of Use page
    }

    @GetMapping("/learnMore")
    public String learnMore() {
        return "learnMore";
    }
}
