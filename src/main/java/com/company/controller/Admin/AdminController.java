package com.company.controller.Admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.company.entity.UserEntity;
import com.company.repository.SessionRepository;
import com.company.repository.VehicleRepository;
import com.company.service.MailService;

@Controller
public class AdminController {
	
	@Autowired
	PasswordEncoder encoder;

	@Autowired
	MailService serviceMail;

	@Autowired
	SessionRepository repoSession;
	

	@Autowired
    private SessionRepository sessionRepository;

    @Autowired
    private VehicleRepository vehicleRepository;

    @GetMapping("/admindashboard")
    public String adminDashboard(Model model) {
        long totalUsers = sessionRepository.count(); // total registered users
        long totalCars = vehicleRepository.count(); // total cars posted
        long approvedCount = vehicleRepository.countByStatus("APPROVED"); // approved/inspected cars

        model.addAttribute("totalUsers", totalUsers);
        model.addAttribute("carsPosted", totalCars);
        model.addAttribute("carsInspected", approvedCount); // assuming "inspected" = "approved"

        return "AdminDashboard"; // name of your JSP
    }
	
	@PostMapping("/savemember")
	public String saveTechnician(UserEntity userEntity) {
		
		userEntity.setCreatedAt(new Date());
		userEntity.setStatus("INACTIVE");
//		userEntity.setRole("TECHNICIAN");

		String encodedPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encodedPassword);

		repoSession.save(userEntity);

		// Send welcome email
		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());

		
		return "redirect:/admindashboard";
	}
	
}
