package com.company.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.entity.TechnicianCommentsEntity;
import com.company.entity.UserEntity;
import com.company.entity.VehicleEntity;
import com.company.repository.SessionRepository;
import com.company.repository.TechnicianCommentsRepository;
import com.company.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class TechnicianController {
	
	@Autowired
	TechnicianCommentsRepository technicianCommentsRepository;
	
	@Autowired
	VehicleRepository vehicleRepository;
	
	@Autowired
	SessionRepository userRepository;
	

	
	
	
	
	@GetMapping("/technician")
	public String showPendingVehicles(Model model, HttpSession session) {
		
		// Check if user is logged in
	    if (session.getAttribute("userId") == null) {
	        return "redirect:/login"; // Redirect to login if not logged in
	    }
	    
//	    System.out.println("User is logged in " + session.getAttribute("userId"));
		
	    // Check user role
	    String role = (String) session.getAttribute("role");
	    System.out.println("Role is " + role);
	    if (role == null || !role.equals("TECHNICIAN")) {
	        return "redirect:/home"; // Redirect to home if not an admin
	    }
		
		
	    List<VehicleEntity> pendingVehicles = vehicleRepository.findByStatus("PENDING");

	    // Format price to remove scientific notation
	    for (VehicleEntity v : pendingVehicles) {
	        v.setPrice(Double.parseDouble(String.format("%.0f", v.getPrice()))); // Rounds to whole number
	    }

	    model.addAttribute("pendingVehicles", pendingVehicles);
	    return "Technician";
	}
	
	
	
	@GetMapping("/checkcar")
	public String checkCar(@RequestParam(name = "vehicleId", required = true) Integer vehicleId, Model model, HttpSession session) {
	    
		
	    
//	    
		
		
		System.out.println("Received vehicleId: " + vehicleId);

	    // Check if vehicleId is actually being received
	    if (vehicleId == null) {
	        System.out.println("vehicleId is NULL, redirecting...");
	        return "redirect:/listvehicles";
	    }

	    // Fetch vehicle details from the repository
	    Optional<VehicleEntity> vehicle = vehicleRepository.findById(vehicleId);

	    if (vehicle.isEmpty()) {
	        System.out.println("Vehicle not found, redirecting...");
	        return "redirect:/listvehicles";
	    }

	    VehicleEntity vehicleEntity = vehicle.get();
	    List<String> availableAccessories = vehicleEntity.getAccessories();

	    // Fetch user details
	    UserEntity userEntity = userRepository.findById(vehicleEntity.getUserId()).orElse(null);

	    System.out.println("Retrieved Accessories: " + availableAccessories);
	    System.out.println("Posted By: " + (userEntity != null ? userEntity.getFirstName() + " " + userEntity.getLastName() : "Unknown"));

	    model.addAttribute("vehicle", vehicleEntity);
	    model.addAttribute("availableAccessories", availableAccessories);
	    model.addAttribute("postedBy", userEntity != null ? userEntity.getFirstName() + " " + userEntity.getLastName() : "Unknown");

	    return "CheckCar";
	}

	@PostMapping("/reviewvehicle/{vehicleId}") 
	public String reviewVehicle(@PathVariable("vehicleId") Integer vehicleId,
	                            @RequestParam String vehicleName,
	                            @RequestParam int modelYear,
	                            @RequestParam String brandName,
	                            @RequestParam String transmission,
	                            @RequestParam String carType,
	                            @RequestParam String city,
	                            @RequestParam double price,
	                            @RequestParam String description,
	                            @RequestParam String registrationCity,
	                            @RequestParam String exteriorColor,
	                            @RequestParam String fuelType,
	                            @RequestParam String engineType,
	                            @RequestParam int engineCapacity,
	                            @RequestParam int gear,
	                            @RequestParam(required = false) String technicianComments,
	                            @RequestParam(required = false) String engineReview,
	                            @RequestParam(required = false) String overallReview,
	                            @RequestParam(required = false) String carMaintenanceReview,
	                            @RequestParam String action) {
	    
	    Optional<VehicleEntity> vehicle = vehicleRepository.findById(vehicleId);

	    if (vehicle.isPresent()) {
	        VehicleEntity v = vehicle.get();

	        // Update car details
	        v.setVehicleName(vehicleName);
	        v.setModelYear(modelYear);
	        v.setBrandName(brandName);
	        v.setTransmission(transmission);
	        v.setCarType(carType);
	        v.setCity(city);
	        v.setPrice(price);
	        v.setDescription(description);
	        v.setRegistrationCity(registrationCity);
	        v.setExteriorColor(exteriorColor);
	        v.setFuelType(fuelType);
	        v.setEngineType(engineType);
	        v.setEngineCapacity(engineCapacity);
	        v.setGear(gear);

	        // Update review details
	        Optional<TechnicianCommentsEntity> existingReview = technicianCommentsRepository.findByVehicle_VehicleId(vehicleId);
	        TechnicianCommentsEntity review = existingReview.orElse(new TechnicianCommentsEntity());
	        review.setVehicle(v);
	        review.setTechnicianComments(technicianComments);
	        review.setEngineReview(engineReview);
	        review.setOverallReview(overallReview);
	        review.setCarMaintenanceReview(carMaintenanceReview);
	        	
	        technicianCommentsRepository.save(review);
	        // Update status
	        if ("approve".equalsIgnoreCase(action)) {
	            v.setStatus("APPROVED");
	        } else if ("reject".equalsIgnoreCase(action)) {
	            v.setStatus("REJECTED");
	        }

	        // Save changes
	        vehicleRepository.save(v);
	    }

	    return "redirect:/technician"; 
	}


	
	

}
