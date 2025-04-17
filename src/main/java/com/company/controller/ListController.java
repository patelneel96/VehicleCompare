package com.company.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.entity.UserEntity;
import com.company.entity.VehicleEntity;
import com.company.repository.SessionRepository;
import com.company.repository.TechnicianCommentsRepository;
import com.company.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.Query;


@Controller
public class ListController {
	
	@Autowired
	VehicleRepository vehicleRepository;
	
	@Autowired
	SessionRepository userRepository;
	
	@Autowired
	TechnicianCommentsRepository technicianCommentsRepository;
	
	@GetMapping("/listmembers")
	public String listMembers(Model model, HttpSession session) {
		
		// Check if user is logged in
	    if (session.getAttribute("userId") == null) {
	        return "redirect:/login"; // Redirect to login if not logged in
	    }
	    
//	    System.out.println("User is logged in " + session.getAttribute("userId"));
		
	    // Check user role
	    String role = (String) session.getAttribute("role");
	    System.out.println("Role is " + role);
	    if (role == null || !role.equals("ADMIN")) {
	        return "redirect:/explore"; // Redirect to home if not an admin
	    }
	    
	    List<UserEntity> users = userRepository.findByRole("USER");
	    model.addAttribute("users", users);
	    return "ListMembers";
	}
	
	
	
	
	
	@GetMapping("/listvehicles")
	public String listVehicles(Model model, HttpSession session) {
		
		// Check if user is logged in
	    if (session.getAttribute("userId") == null) {
	        return "redirect:/login"; // Redirect to login if not logged in
	    }
	    
//	    System.out.println("User is logged in " + session.getAttribute("userId"));
		
	    // Check user role
	    String role = (String) session.getAttribute("role");
	    System.out.println("Role is " + role);
	    if (role == null || !role.equals("ADMIN")) {
	        return "redirect:/explore"; // Redirect to home if not an admin
	    }
		
		List<VehicleEntity> vehicles = vehicleRepository.findAll();
		
		model.addAttribute("vehicles", vehicles);
		
		return "ListVehicles";
	}
	
	@GetMapping("/listtechnicians")
	public String listTechnicians(Model model, HttpSession session) {
		
		// Check if user is logged in
	    if (session.getAttribute("userId") == null) {
	        return "redirect:/login"; // Redirect to login if not logged in
	    }
	    
//	    System.out.println("User is logged in " + session.getAttribute("userId"));
		
	    // Check user role
	    String role = (String) session.getAttribute("role");
	    System.out.println("Role is " + role);
	    if (role == null || !role.equals("ADMIN")) {
	        return "redirect:/explore"; // Redirect to home if not an admin
	    }
		
		List<UserEntity> technicians = userRepository.findByRole("TECHNICIAN");
		model.addAttribute("technicians", technicians);
		return "ListTechnicians";
	}
	
	
	@GetMapping("/viewprofile")
	public String viewProfile(Integer userId, Model model) {
	    if (userId == null) {
	        return "redirect:/listmembers"; // Redirect if id is null
	    }

	    Optional<UserEntity> user = userRepository.findById(userId);
	    
	    if (user.isEmpty()) {
	        return "redirect:/listmembers";
	    } else {
	        model.addAttribute("user", user.get());
	    }
	    
	    return "ViewProfile";
	}
	



	@GetMapping("/deleteuser")
	public String deleteUser(Integer userId) {
	    if (userId == null) {
	        return "redirect:/listmembers"; // Redirect if id is null
	    }

	    userRepository.deleteById(userId);

	    return "redirect:/listmembers";
	}
	
	
	@GetMapping("/deletetechnician")
	public String deleteTechnician(Integer userId) {
		if (userId == null) {
			return "redirect:/listtechnicians"; // Redirect if id is null
		}

		userRepository.deleteById(userId);

		return "redirect:/listtechnicians";
	}
	
	
	

	@Transactional
	@GetMapping("/deletevehicle")
	public String deleteVehicle(@RequestParam("vehicleId") Integer vehicleId) {
		if (vehicleId == null) {
			return "redirect:/listvehicles";
		}

		// Step 1: Delete related technician comments
		technicianCommentsRepository.deleteByVehicleId(vehicleId);

		// Step 2: Delete vehicle
		vehicleRepository.deleteById(vehicleId);

		return "redirect:/listvehicles";
	}

	
	
	
	
	
	
	
	
	
	
	
	//@GetMapping("/deletevehicle")
	//public String deleteVehicle(Integer vehicleId) {
	//	if (vehicleId == null) {
	//		return "redirect:/listvehicles"; // Redirect if id is null
	//	}

	//	vehicleRepository.deleteById(vehicleId);

	//	return "redirect:/listvehicles";
	//}

}
