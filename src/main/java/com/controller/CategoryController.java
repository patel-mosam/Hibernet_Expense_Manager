package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.CategoryEntity;
import com.repository.CategoryRepository;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CategoryController {

	@Autowired
	CategoryRepository categoryRepository;

	@GetMapping("category")
	public String Category() {
		return "Category";
	}

	@PostMapping("savecategory")
	public String AddCategory(CategoryEntity categoryEntity) {
		categoryRepository.save(categoryEntity);
		return "Category";
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
		    categoryRepository.save(categoryEntity);
		    return "redirect:/listcategory";
		}

}