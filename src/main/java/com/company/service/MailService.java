package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	@Autowired
	JavaMailSender mailSender;

	public void sendWelcomeMail(String email, String firstName) {
		String subject = "Welcome to Vehicle Vault!";
		String body = "Hey " + firstName
				+ ", We're excited to have you on board. If you have any questions, feel free to reach out – we’re here to help!";
		String from = "tejasshah2k19@gmail.com";

		// logic
		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);

		mailSender.send(message);

	}

	public void sendResetPasswordMail(String email, String firstName, String otp) {
	    String subject = "Reset Password Request";
	    String body = "Hey " + firstName + ",\n\n"
	            + "We received a request to reset your password. If you didn't make the request, just ignore this email. "
	            + "Otherwise, you can reset your password using this OTP: " + otp + "\n\n"
	            + "This OTP is valid for 10 minutes.";

	    String from = "tejasshah2k19@gmail.com";

	    SimpleMailMessage message = new SimpleMailMessage();
	    message.setFrom(from);
	    message.setTo(email);
	    message.setSubject(subject);
	    message.setText(body);

	    mailSender.send(message);
	}
	
	// New method for sending Contact Us form details
	public void sendContactMail(String fullName, String email, String phoneNumber, String messageContent) {
	    String subject = "Want to Contact You!";
	    String body = "Full Name: " + fullName + "\n"
	            + "Email: " + email + "\n"
	            + "Phone Number: " + phoneNumber + "\n"
	            + "Message: " + messageContent;

	    String to = "sellerNeel@yopmail.com";  // Recipient email
	    String from = "tejasshah2k19@gmail.com";  // Authenticated SMTP sender

	    SimpleMailMessage message = new SimpleMailMessage();
	    message.setFrom(from);  // This must be the authenticated email
	    message.setTo(to);
	    message.setSubject(subject);
	    message.setText(body);
	    message.setReplyTo(email);  // Allows recipient to reply to user's email

	    mailSender.send(message);
	}

}