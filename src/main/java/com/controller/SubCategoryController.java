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

import com.entity.SubCategoryEntity;
import com.entity.UserEntity;
import com.repository.SubCategoryRepository;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SubCategoryController {

	@Autowired
	SubCategoryRepository subcategoryRepository;

	@Autowired
	UserRepository userRepository;
	
	@Autowired
	private HttpSession session;
	
	@GetMapping("subcategory")
	public String SubCategory() {
		return "SubCategory";
	}

	@PostMapping("savesubcategory")
	public String AddSubCategory(SubCategoryEntity subcategoryEntity) {
		
//		UUID userId = (UUID)session.getAttribute("userId");
//		Optional<UserEntity> optUser = userRepository.findById(userId);
//		if(optUser.isPresent()) {
//			subcategoryEntity.setUser(optUser.get());
		subcategoryRepository.save(subcategoryEntity);
		return "redirect:/listsubcategory";
//		}else {
//			return "redirect:/subcategory?error=userNotFound";
//		}
	}

	@GetMapping("listsubcategory")
	public String ListSubCategories(Model model) {
		List<SubCategoryEntity> subcategory = subcategoryRepository.findAll();
		model.addAttribute("subcategory", subcategory);
		return "ListSubCategories";
	}
	

	@GetMapping("deletesubcategory")
	public String DeleteSubCategory(@RequestParam("subcategoryId") Integer subcategoryId) {
		subcategoryRepository.deleteById(subcategoryId);
		return "redirect:/listsubcategory";
	}

	@GetMapping("editsubcategory")
	public String EditCategory(@RequestParam("subcategoryId") Integer subcategoryId, Model model) {

		Optional<SubCategoryEntity> optional = subcategoryRepository.findById(subcategoryId);

		if (optional.isEmpty()) {
			return "redirect:/listsubcategory";
		} else {
			SubCategoryEntity subcategory = optional.get();
			model.addAttribute("subcategory", subcategory);
			return "EditSubCategory";
		}
		
	}
	
	
		@PostMapping("updatesubcategory")
		public String updateSubCategory(SubCategoryEntity subcategoryEntity) {
//			UUID userId = (UUID)session.getAttribute("userId");
//			Optional<UserEntity> optUser = userRepository.findById(userId);
//			subcategoryEntity.setUser(optUser.get());
		    subcategoryRepository.save(subcategoryEntity);
		    return "redirect:/listsubcategory";
		}

}