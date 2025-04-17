package com.company.controller;

import com.company.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ContactController {

    @Autowired
    private MailService mailService;

    @PostMapping("/contactus")
    public String handleContactForm(
            @RequestParam("fullName") String fullName,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("message") String message,
            RedirectAttributes redirectAttributes) {
    	
    	System.out.println("Received Contact Form:");
        System.out.println("Full Name: " + fullName);
        System.out.println("Email: " + email);
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("Message: " + message);

        // Send contact mail
        mailService.sendContactMail(fullName, email, phoneNumber, message);

        // Add success message (optional)
        redirectAttributes.addFlashAttribute("successMessage", "Your message has been sent successfully!");

        // Redirect back to the same page
        return "redirect:/home";
    }
}
