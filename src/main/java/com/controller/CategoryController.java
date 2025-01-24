package com.controller;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.CategoryEntity;
import com.entity.UserEntity;
import com.repository.CategoryRepository;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CategoryController {

	@Autowired
	CategoryRepository categoryRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	private HttpSession session;

	@GetMapping("category")
	public String Category() {
		return "Category";
	}

	@PostMapping("savecategory")
	public String SaveCategory(CategoryEntity categoryEntity) {
		
		UUID userId = (UUID)session.getAttribute("userId");
		Optional<UserEntity> optUser = userRepository.findById(userId);
		if(optUser.isPresent()) {
			categoryEntity.setUser(optUser.get());
			categoryRepository.save(categoryEntity);
			return "redirect:/listcategory";
		}else {
			return "redirect:/category?error=userNotFound";
		}

	}

	@GetMapping("listcategory")
	public String ListCategories(Model model) {
		List<CategoryEntity> category = categoryRepository.findAll();
		model.addAttribute("category", category);
		return "ListCategories";
	}

	@GetMapping("deletecategory")
	public String DeleteCategory(@RequestParam("categoryId") Integer categoryId) {
		categoryRepository.deleteById(categoryId);
		return "redirect:/listcategory";
	}

	@GetMapping("editcategory")
	public String EditCategory(@RequestParam("categoryId") Integer categoryId, Model model) {

		Optional<CategoryEntity> optional = categoryRepository.findById(categoryId);

		if (optional.isEmpty()) {
			return "redirect:/listcategory";
		} else {
			CategoryEntity category = optional.get();
			model.addAttribute("category", category);
			return "EditCategory";
		}
		
	}
		@PostMapping("updatecategory")
		public String updateUser(CategoryEntity categoryEntity) {
			UUID userId = (UUID)session.getAttribute("userId");
			Optional<UserEntity> optUser = userRepository.findById(userId);
			categoryEntity.setUser(optUser.get());
		    categoryRepository.save(categoryEntity);
		    return "redirect:/listcategory";
		}

}