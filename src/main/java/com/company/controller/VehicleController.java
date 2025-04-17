package com.company.controller;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.company.entity.UserEntity;
import com.company.entity.VehicleEntity;
import com.company.repository.SessionRepository;
import com.company.repository.VehicleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Map;
import java.util.Optional;

@Controller
public class VehicleController {
	
	@Autowired
	VehicleRepository vehicleRepository;

	@Autowired
	Cloudinary cloudinary;
	
	
	@Autowired
    SessionRepository sessionRepository;

    

    @GetMapping("/postvehicle")
    public String postVehicle(HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) return "redirect:/login"; // Ensure user is logged in

        Optional<UserEntity> user = sessionRepository.findById(userId);

        if (user.isPresent()) {
            model.addAttribute("user", user.get()); // Pass user to JSP
        } else {
            return "redirect:/login"; // If user not found, redirect
        }

        return "PostVehicle";
    }
    
    
    
    @PostMapping("/savevehicle")
    public String saveVehicleDetails(
            @ModelAttribute VehicleEntity vehicle, 
            HttpSession session, 
            Model model, 
            @RequestParam("carPics") MultipartFile carPics) { // <-- Use @RequestParam explicitly

        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            return "redirect:/login"; // Ensure the user is logged in
        }

        if (carPics == null || carPics.isEmpty()) { // Check if file is null or empty
            model.addAttribute("error", "Please upload a valid image.");
            return "uploadPage"; // Redirect back to upload page
        }

        Optional<UserEntity> existingUser = sessionRepository.findById(userId);

        if (existingUser.isPresent()) {
            vehicle.setUserId(userId);

            try {
                Map result = cloudinary.uploader().upload(carPics.getBytes(), ObjectUtils.emptyMap());
                System.out.println(result.get("url").toString());
                vehicle.setVehiclePicPath(result.get("url").toString());
            } catch (IOException e) {
                e.printStackTrace();
            }

            vehicle.setStatus("PENDING");
            vehicleRepository.save(vehicle);
            model.addAttribute("message", "Thank you for posting! Our technician will contact you shortly.");
            return "Confirmation"; 
        } else {
            model.addAttribute("error", "User not found. Please log in again.");
            return "redirect:/login";
        }
    }


}
