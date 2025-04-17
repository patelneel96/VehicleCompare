package com.company.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.entity.TechnicianCommentsEntity;
import com.company.entity.VehicleEntity;
import com.company.repository.TechnicianCommentsRepository;
import com.company.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CompareController {
	
	@Autowired
	VehicleRepository vehicleRepository;
	
	@Autowired
	TechnicianCommentsRepository technicianCommentsRepository;
	
	
	
	
	@GetMapping("/comparecars")
    public String compareCars(HttpSession session ,Model model, @RequestParam(required = false) List<Integer> vehicleId) {
        
		// Ensure user is logged in
		if (session.getAttribute("userId") == null) {
			return "redirect:/login"; // Redirect to login page if not logged in
		}
		
		
        if (vehicleId == null || vehicleId.size() < 2) {
            model.addAttribute("error", "Select at least two vehicles to compare.");
            return "redirect:/explore"; // Redirect if less than two are selected
           
        }

        // Fetch selected vehicles from the database
        List<VehicleEntity> vehicles = vehicleRepository.findAllByVehicleIdIn(vehicleId);

        if (vehicles.isEmpty()) {
            model.addAttribute("error", "No vehicles found for the given IDs.");
            return "Explore"; // Redirect if no vehicles match the IDs
        }

        // Add vehicles to the model to display in JSP
        model.addAttribute("vehicles", vehicles);
        
        // Fetch technician comments for the selected vehicles
        List<TechnicianCommentsEntity> comments = technicianCommentsRepository.findAll();
        
        // Add comments to the model to display in JSP
        model.addAttribute("comments", comments);

        return "CompareCar"; // Redirect to comparecar.jsp
    }



	
	 
}
