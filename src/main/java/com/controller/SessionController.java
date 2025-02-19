package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.repository.UserRepository;
import com.service.MailerService;
import com.service.OtpGeneratorService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	OtpGeneratorService otpGeneratorService;

	@Autowired
	MailerService mailerService;

	@Autowired
	private HttpSession session;

	@GetMapping("/") // Root URL mapping
	public String ShowHomePage() {
		// Return the login page or a landing page
		return "Login"; // Or return another page like "LandingPage"
	}

	@GetMapping("userdashboard")
	public String Index() {
		return "UserDashboard";
	}

	@GetMapping("signup")
	public String ShowSignUpPage() {
		return "SignUp";
	}

	@PostMapping("saveuser")
	public String SaveUserProfile(UserEntity userEntity) {

		// Password Encryption
		String encpassword = passwordEncoder.encode(userEntity.getPassword());
		userEntity.setPassword(encpassword);
		System.out.println(encpassword);
		System.out.println(encpassword.length());

		// saving it to database
		userRepository.save(userEntity);

		return "Login";
	}

	// Show login page
	@GetMapping("login")
	public String LoginMethod() {
		return "Login";
	}

	@PostMapping("login")
	public String LoginUsers(@RequestParam String email, @RequestParam String password, Model model) {
		// Find user by email
		Optional<UserEntity> optUser = userRepository.findByEmail(email);

		if (optUser.isPresent() && passwordEncoder.matches(password, optUser.get().getPassword())) {
			// Retrieve user details
			UserEntity user = optUser.get();

			// Set session attributes
			session.setAttribute("userId", user.getUserId());
			model.addAttribute("msg", "Successful Login");
			return "redirect:/userdashboard";
		} else {
			model.addAttribute("error", "Invalid Credentials");
			return "Login";
		}
	}

//	@GetMapping("homepage")
//	public String GetHomePage() {
//		return "HomePage";
//	}

	@GetMapping("forgetpassword")
	public String ShowForgetPassword() {
		return "ForgetPassword";
	}

	@PostMapping("forgetpassword")
	public String SendOtp(@RequestParam String email, Model model) {

		System.out.println("Email : " + email);

//		check db -> email present
		Optional<UserEntity> optUser = userRepository.findByEmail(email);
//		true -> user present 
//		false -> user not present 
		if (optUser == null) {
//			invalid email
//			model.addAttribute("email",email);
			model.addAttribute("error", "Email is not Registered");
			return "ForgetPassword";
		} else {
			// OTP generate
			String otp = otpGeneratorService.generateOtp(6);
			UserEntity user = optUser.get();
//			user->db->otp sent
			user.setOtp(otp);
			userRepository.updateOtpByEmail(email, otp);

			userRepository.save(user); // Save OTP in the database
//			mail send
			mailerService.sendMailForOtp(email, otp);
			model.addAttribute("email", email);
			return "ChangePassword";

		}

	}

//	@PostMapping("changepassword")
//	public String NewPassword(@RequestParam String email, @RequestParam String otp, @RequestParam String newPassword, Model model) {
//	    // Find user by email
//	    UserEntity user = userRepository.findByEmail(email);
//
//	    if (user != null) {
//	        // Check if OTP matches
//	        if (user.getOtp() != null && user.getOtp().equals(otp)) {
//	            // Encrypt the new password
//	            String newEncodedPassword = passwordEncoder.encode(newPassword);
//	            user.setPassword(newEncodedPassword);
//	            user.setOtp(null);  // Clear OTP after successful password reset
//
//	            // Save the updated user details in the database
//	            userRepository.save(user);
//
//	            // Add success message and redirect to Login page
//	            model.addAttribute("success", "Password successfully reset!");
//	            return "redirect:/login";  // Ensure correct redirection here
//	        } else {
//	            model.addAttribute("error", "Invalid OTP. Please try again.");
//	            return "ChangePassword";  // Stay on ChangePassword page if OTP is invalid
//	        }
//	    } else {
//	        model.addAttribute("error", "User not found.");
//	        return "ForgetPassword";  // Redirect back to ForgetPassword if the user is not found
//	    }
//	}

	@PostMapping("/changepassword")
	public String changePassword(@RequestParam String email, @RequestParam String otp, @RequestParam String newPassword,
			Model model) {
		// Normalize email to lower case
		email = email.trim().toLowerCase();

		// Retrieve user from the repository
		Optional<UserEntity> optUser = userRepository.findByEmail(email);
		UserEntity user = optUser.get();
		// Check if user exists and OTP matches
		if (user != null && otp.equals(user.getOtp())) {
			user.setPassword(passwordEncoder.encode(newPassword)); // Update password
			user.setOtp(null); // Clear OTP after use
			userRepository.save(user); // Save changes to the user entity

			model.addAttribute("success", "Password reset successfully.");
			return "redirect:/login"; // Redirect to login page after successful password change
		}

		model.addAttribute("error", "Invalid OTP or email"); // Display error if OTP doesn't match
		return "ChangePassword"; // Stay on the ChangePassword page if OTP/email is invalid
	}

}
