//package com.company.controller;
//
//import java.util.List;
//import java.util.Optional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.company.entity.UserEntity;
//import com.company.entity.VehicleEntity;
//import com.company.repository.SessionRepository;
//import com.company.repository.VehicleRepository;
//
//@Controller
//public class ViewController {
//	
//	@Autowired
//	VehicleRepository vehicleRepository;
//	
//	@Autowired
//	SessionRepository userRepository;;
//	
//	
//	@GetMapping("/viewvehicle")
//	public String viewVehicle(@RequestParam Integer vehicleId, Model model) {
//	    if (vehicleId == null) {
//	        return "redirect:/listvehicles"; // Redirect if id is null
//	    }
//
//	    Optional<VehicleEntity> vehicle = vehicleRepository.findById(vehicleId);
//
//	    if (vehicle.isEmpty()) {
//	        System.out.println("Vehicle not found");
//	        return "redirect:/listvehicles";
//	    } else {
//	        VehicleEntity vehicleEntity = vehicle.get();
//	        List<String> availableAccessories = vehicleEntity.getAccessories();
//
//	        // Fetch user details based on userId
//	        UserEntity userEntity = userRepository.findById(vehicleEntity.getUserId()).orElse(null);
//
//	        // Debugging output
//	        System.out.println("Retrieved Accessories: " + availableAccessories);
//	        System.out.println("Posted By: " + (userEntity != null ? userEntity.getFirstName() + " " + userEntity.getLastName() : "Unknown"));
//
//	        model.addAttribute("vehicle", vehicleEntity);
//	        model.addAttribute("availableAccessories", availableAccessories);
//	        model.addAttribute("postedBy", userEntity != null ? userEntity.getFirstName() + " " + userEntity.getLastName() : "Unknown"); // Add user's name
//	    }
//
//	    return "ViewVehicle";
//	}
//
//}

package com.company.controller;

import com.company.entity.TechnicianCommentsEntity;
import com.company.entity.UserEntity;
import com.company.entity.VehicleEntity;
import com.company.repository.SessionRepository;
import com.company.repository.TechnicianCommentsRepository;
import com.company.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class ViewController {

    @Autowired
    private VehicleRepository vehicleRepository;

    @Autowired
    SessionRepository userRepository;
    
    @Autowired
    private TechnicianCommentsRepository technicianCommentsRepository;

    
    @GetMapping("/viewvehicle")
    public String viewVehicle(@RequestParam Integer vehicleId, Model model, HttpSession session) {
        
    	// Check if user is logged in
	    if (session.getAttribute("userId") == null) {
	        return "redirect:/login"; // Redirect to login if not logged in
	    }
	    
    	
    	if (vehicleId == null) {
            return "redirect:/listvehicles"; // Redirect if ID is null
        }

        Optional<VehicleEntity> vehicle = vehicleRepository.findById(vehicleId);

        if (vehicle.isEmpty()) {
            System.out.println("Vehicle not found");
            return "redirect:/listvehicles";
        } else {
            VehicleEntity vehicleEntity = vehicle.get();
            List<String> availableAccessories = vehicleEntity.getAccessories();

            // Fetch user details based on userId
            UserEntity userEntity = userRepository.findById(vehicleEntity.getUserId()).orElse(null);

            // Fetch technician comments
            TechnicianCommentsEntity technicianComments = technicianCommentsRepository.findByVehicle_VehicleId(vehicleEntity.getVehicleId())
                    .orElse(null);
            List<Object[]> results = vehicleRepository.findVehicleWithSellerRaw(vehicleId);
            Object[] row = results.get(0); // Get the first (and only) result
            model.addAttribute("firstName", row[18]);
            model.addAttribute("lastName", row[19]);
            model.addAttribute("email", row[20]);
            model.addAttribute("contactNum", row[21]);
            model.addAttribute("city", row[22]);
            model.addAttribute("state", row[23]);

            // Debugging output
            System.out.println("Retrieved Accessories: " + availableAccessories);
            System.out.println("Posted By: " + (userEntity != null ? userEntity.getFirstName() + " " + userEntity.getLastName() : "Unknown"));

            model.addAttribute("vehicle", vehicleEntity);
            model.addAttribute("availableAccessories", availableAccessories);
            model.addAttribute("postedBy", userEntity != null ? userEntity.getFirstName() + " " + userEntity.getLastName() : "Unknown"); 
            model.addAttribute("technicianComments", technicianComments);
        }

        return "ViewVehicle";
    }

}
