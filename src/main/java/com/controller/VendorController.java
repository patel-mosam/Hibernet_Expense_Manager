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
import com.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class VendorController {

	@Autowired
	VendorRepository vendorRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	private HttpSession session;
	
	@GetMapping("addvendor")
	public String AddVendor() {
		return "AddVendor";
	}
	
	@PostMapping("savevendor")
	public String saveVendor(VendorEntity vendor) {
		
		UUID userId = (UUID)session.getAttribute("userId");
		Optional<UserEntity> optUser = userRepository.findById(userId);
		if(optUser.isPresent()) {
			vendor.setUser(optUser.get());
			vendorRepository.save(vendor);
			return "redirect:/listvendor";
		}else {
	        
	        return "redirect:/addvendor?error=userNotFound";
			
		}

	}
	
	@GetMapping("listvendor")
	public String listVendor(Model model) {
		List<VendorEntity> vendors = vendorRepository.findAll();
		model.addAttribute("vendors",vendors);
		return "ListVendor";
	}
	
	@GetMapping("deletevendor")
	public String deleteVendor(@RequestParam ("id") UUID vendorId) {
		vendorRepository.deleteById(vendorId);
		return "redirect:/listvendor";
		
	}
	
	@GetMapping("editvendor")
	public String editVendor(@RequestParam UUID id, Model model) {
		Optional<VendorEntity> optional = vendorRepository.findById(id);
		if(optional.isEmpty()) {
			return "redirect:/listvendor";
		}
		VendorEntity vendor = optional.get();
		model.addAttribute("vendor",vendor);
		return "EditVendor";		
	
	}
	

	@PostMapping("updatevendor")
	public String updateVendor(VendorEntity vendor){
		UUID userId = (UUID)session.getAttribute("userId");
		Optional<UserEntity> optUser = userRepository.findById(userId);
		vendor.setUser(optUser.get());
		vendorRepository.save(vendor);
		return "redirect:/listvendor";
		
	}

	
}
