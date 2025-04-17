package com.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.entity.UserEntity;
import com.company.repository.SessionRepository;
import com.company.service.MailService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.security.SecureRandom;
import java.util.Date;

@Controller
public class SessionController {

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	MailService serviceMail;

	@Autowired
	SessionRepository repoSession;

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@GetMapping("/")
	public String signup() {
		return "Home";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
			System.out.println("Session invalidated successfully.");
		}
		return "redirect:/"; // Redirect after logout
	}

	@PostMapping("/saveuser")
	public String saveUser(UserEntity userEntity, HttpServletRequest request) {
		// Set default values
		userEntity.setCreatedAt(new Date());
		userEntity.setStatus("INACTIVE");
		userEntity.setRole("USER");

		String encodedPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encodedPassword);

		repoSession.save(userEntity);

		// Send welcome email
		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());

		// Store new user in session
		HttpSession session = request.getSession();
		session.setAttribute("userId", userEntity.getUserId());

		return "redirect:/updateProfile"; // Redirect to update profile after signup
	}

	@PostMapping("authenticate")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpServletRequest request, Model model) {

		UserEntity user = repoSession.findByEmail(email);

		if (user != null && encoder.matches(password, user.getPassword())) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getUserId()); // ✅ Store only userId
			session.setAttribute("role", user.getRole());
			
			System.out.println("User logged in: " + user.getFirstName());
			System.out.println("UserID stored in session: " + session.getAttribute("userId"));

			// Check if the user's role is ADMIN
			if ("ADMIN".equalsIgnoreCase(user.getRole())) {
				return "redirect:/admindashboard"; // Redirect to Admin.jsp
			} else if ("TECHNICIAN".equalsIgnoreCase(user.getRole())) {
				return "redirect:/technician"; // Redirect to Technician.jsp
			}

			return "redirect:/explore"; // Redirect to login after updating the profile
		} else {
			model.addAttribute("error", "Invalid email or password!");
			return "Login";
		}
	}

	public String generateOTP() {
		SecureRandom random = new SecureRandom();
		int otp = 100000 + random.nextInt(900000); // Generates a 6-digit number
		return String.valueOf(otp);
	}
		
	
	@GetMapping("/resetpassword")
	public String showResetPasswordPage() {
	    return "ChangePassword"; // JSP where the user inputs their email
	}

	
	@PostMapping("/sendotp")
	public String resetPassword(@RequestParam("email") String email, Model model) {
		UserEntity user = repoSession.findByEmail(email);

		if (user != null) {
			String otp = generateOTP();

			// Store OTP in the database
			user.setOtp(otp);
			repoSession.save(user);

			// Send OTP via email
			serviceMail.sendResetPasswordMail(email, user.getFirstName(), otp);

			model.addAttribute("message", "Password reset OTP sent to your email!");
			return "ChangePassword";
		} else {
			model.addAttribute("error", "User not found!");
			return "Login";
		}
	}

	@PostMapping("/updatepassword")
	public String verifyOTP(@RequestParam("otp") String enteredOtp, @RequestParam("newPassword") String newPassword,
			@RequestParam("confirmPassword") String confirmPassword, Model model) {

		UserEntity user = repoSession.findByOtp(enteredOtp); // Find user by OTP

		if (user == null) {
			model.addAttribute("error", "Invalid OTP. Please try again.");
			return "ChangePassword";
		}

		if (!newPassword.equals(confirmPassword)) {
			model.addAttribute("error", "Passwords do not match.");
			return "ChangePassword";
		}

		// Reset password
		user.setPassword(encoder.encode(newPassword));

		// Clear OTP after use
		user.setOtp("");
		repoSession.save(user);

		model.addAttribute("message", "Password reset successful! Please log in.");
		return "Login";
	}

}
