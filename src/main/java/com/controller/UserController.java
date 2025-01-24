package com.controller;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.entity.VendorEntity;
import com.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;
	
	@GetMapping("listuser")
	public String ListUsersHere(Model model) {
		List<UserEntity> users = userRepository.findAll();
		model.addAttribute("users",users);
		return "ListUsers";
	}

	
	@GetMapping("deleteUser")
	public String DeleteUser(@RequestParam("userId") UUID userId) {
	    userRepository.deleteById(userId); // Ensure UUID is used for the userId, not Integer
	    return "redirect:/listuser";
	}
	
	@GetMapping("editUser")
	public String EditUsers(@RequestParam UUID userId , Model model) {
		
		
		Optional<UserEntity> optional = userRepository.findById(userId);
		
	if(optional.isEmpty()) {
			return "redirect:/listuser";
		}else {
			UserEntity user = optional.get();
			model.addAttribute("user",user);
			return "EditUser";
		}
		
	}
	
	
	@PostMapping("updateUser")
	public String updateUser(UserEntity userEntity) {
	    userRepository.save(userEntity);
	    return "redirect:/listuser";
	}
	
}
