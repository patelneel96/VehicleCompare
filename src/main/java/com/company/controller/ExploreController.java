//package com.company.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.ui.Model;
//import java.util.List;
//
//import com.company.entity.VehicleEntity;
//import com.company.repository.VehicleRepository;
//
//@Controller
//public class ExploreController {
//
//	@Autowired
//    VehicleRepository vehicleRepository;
//
//    
//
//    @GetMapping("/explore")
//    public String explore(Model model) {
//        List<VehicleEntity> vehicles = vehicleRepository.findAll();
//        model.addAttribute("vehicles", vehicles);
//        return "Explore";
//    }
//}
package com.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import java.util.List;

import com.company.entity.VehicleEntity;
import com.company.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ExploreController {

	@Autowired
	VehicleRepository vehicleRepository;

	@GetMapping("/explore")
	public String explore(Model model, HttpSession session) {

		// Check if user is logged in
		if (session.getAttribute("userId") == null) {
			return "redirect:/login"; // Redirect to login page if not logged in
		}

		List<VehicleEntity> vehicles = vehicleRepository.findByStatus("Approved"); // ✅ Fetch only approved vehicles
		model.addAttribute("vehicles", vehicles);
		return "Explore"; // Renders the Explore page
	}

	@PostMapping("/searchcar")
	public String searchCar(Model model, @RequestParam(required = false) String city,
			@RequestParam(required = false) String brandName) {

		System.out.println(city);
		System.out.println(brandName);

		List<VehicleEntity> vehicles;

		if (city != null && !city.isEmpty() && brandName != null && !brandName.isEmpty()) {
			// Filter by both city and brand
			vehicles = vehicleRepository.findByCityAndBrandName(city, brandName);
		} else if (city != null && !city.isEmpty()) {
			// Filter by city only
			vehicles = vehicleRepository.findByCity(city);
		} else if (brandName != null && !brandName.isEmpty()) {
			// Filter by brand only
			vehicles = vehicleRepository.findByBrandName(brandName);
		} else {
			// If no filters are provided, return all vehicles
			vehicles = vehicleRepository.findAll();
		}

		model.addAttribute("vehicles", vehicles);
		return "SearchedCars";
	}

}
