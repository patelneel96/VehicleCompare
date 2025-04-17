package com.company.controller;

import java.io.IOException;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.company.entity.UserEntity;
import com.company.repository.SessionRepository;

import jakarta.servlet.http.HttpSession;
//import jakarta.transaction.Transactional;

@Controller
public class ProfileController {
	
	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	SessionRepository userRepository;
	

	
	@GetMapping("/updateProfile")
	public String updateProfile(HttpSession session, Model model) {
	    Integer userId = (Integer) session.getAttribute("userId");

	    if (userId == null) return "redirect:/login"; // Ensure user is logged in

	    Optional<UserEntity> user = userRepository.findById(userId);

	    if (user.isPresent()) {
	        model.addAttribute("user", user.get()); // ✅ Pass user to JSP
	    } else {
	        return "redirect:/login"; // If user not found, redirect
	    }

	    return "UpdateProfile"; // Return JSP
	}

	



	
//	@PostMapping("/savedetails")
//	public String saveUserDetails(@ModelAttribute UserEntity user, HttpSession session, Model model, MultipartFile profilePic) {
//	    Integer userId = (Integer) session.getAttribute("userId");
//	    
//	    System.out.println(profilePic.getOriginalFilename());// file name
//
//	    if (userId == null) return "redirect:/login";
//
//	    Optional<UserEntity> existingUser = userRepository.findById(userId);
//
//	    if (existingUser.isPresent()) {
//	        UserEntity updatedUser = existingUser.get();
//	        updatedUser.setContactNum(user.getContactNum());
//	        updatedUser.setCity(user.getCity());
//	        updatedUser.setState(user.getState());
//	        updatedUser.setDob(user.getDob());
//	        updatedUser.setCountry(user.getCountry());
//	        
//	        
//	        
//	        
//	        try {
//				Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
//				System.out.println(result);
//				System.out.println(result.get("url"));
//				updatedUser.setProfilePicPath(result.get("url").toString());
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//	        
//	        
//	        
//	        
//
//	        userRepository.save(updatedUser);
//
//	        // Store updated user details in session
//	        session.setAttribute("userId", updatedUser.getUserId());
//	        session.setAttribute("user", updatedUser);
//
//	        System.out.println("User updated in DB!");
//	    } else {
//	        return "redirect:/login";
//	    }
//
//	    return "redirect:/login"; // ✅ Redirect to login after updating profile
//	}
	
	
	@PostMapping("/savedetails")
	public String saveUserDetails(@ModelAttribute UserEntity user, HttpSession session, Model model) {
	    Integer userId = (Integer) session.getAttribute("userId");
	    
//	    System.out.println(profilePic.getOriginalFilename());// file name
	    System.out.println("Session userId: " + userId);

	    if (userId == null) return "redirect:/login";

	    Optional<UserEntity> existingUser = userRepository.findById(userId);

	    if (existingUser.isPresent()) {
	        UserEntity updatedUser = existingUser.get();
	        updatedUser.setFirstName(user.getFirstName());
	        updatedUser.setLastName(user.getLastName());
	        updatedUser.setContactNum(user.getContactNum());
	        updatedUser.setCity(user.getCity());
	        updatedUser.setState(user.getState());
	        updatedUser.setDob(user.getDob());
	        updatedUser.setCountry(user.getCountry());
	        
	        
	        
	        
//	        
	        
	        userRepository.save(updatedUser);

	        // Store updated user details in session
	        session.setAttribute("userId", updatedUser.getUserId());
	        session.setAttribute("user", updatedUser);

	        System.out.println("User updated in DB!");
	    } else {
	        return "redirect:/login";
	    }

	    return "redirect:/login"; // ✅ Redirect to login after updating profile
	}
	
	
	@GetMapping("/profile")
	public String profile(HttpSession session, Model model) {
		Integer userId = (Integer) session.getAttribute("userId");

		if (userId == null)
			return "redirect:/login";

		Optional<UserEntity> user = userRepository.findById(userId);

		if (user.isPresent()) {
			model.addAttribute("user", user.get());
		} else {
			return "redirect:/login";
		}

		return "Profile";
	}


}
