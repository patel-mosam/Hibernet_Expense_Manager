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

import com.entity.CategoryEntity;
import com.entity.SubCategoryEntity;
import com.entity.UserEntity;
import com.repository.CategoryRepository;
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
	CategoryRepository categoryRepository;

	@Autowired
	private HttpSession session;

	@GetMapping("subcategory")
	public String SubCategory() {
		return "SubCategory";
	}

		
	@PostMapping("savesubcategory")
	public String AddSubCategory(@RequestParam("categoryId") Integer categoryId, 
	                             SubCategoryEntity subcategoryEntity) {
	    Optional<CategoryEntity> categoryOpt = categoryRepository.findById(categoryId);
	    if (categoryOpt.isPresent()) {
	        subcategoryEntity.setCategory(categoryOpt.get());
	        subcategoryRepository.save(subcategoryEntity);
	        return "redirect:/listsubcategory";
	    } else {
	        return "redirect:/subcategory?error=categoryNotFound";
	    }
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
			  // Set categoryId in session before redirecting to the edit form
	        session.setAttribute("categoryId", subcategory.getCategory().getCategoryId());
	        
			return "EditSubCategory";
		}
		
	}

	@PostMapping("updatesubcategory")
	public String updateSubCategory(SubCategoryEntity subcategoryEntity) {
	    // **Get categoryId from session**
	    Integer categoryId = (Integer) session.getAttribute("categoryId");  // **Change**

	    if (categoryId == null) {
	        // Handle the case when categoryId is missing from the session
	        return "redirect:/listsubcategory?error=categoryIdNotFound";
	    }

	    Optional<CategoryEntity> categoryOpt = categoryRepository.findById(categoryId);

	    if (categoryOpt.isPresent()) {
	        subcategoryEntity.setCategory(categoryOpt.get());
	        subcategoryRepository.save(subcategoryEntity);
	    } else {
	        // Handle the case when the category with the given categoryId is not found
	        return "redirect:/listsubcategory?error=categoryNotFound";
	    }

	    return "redirect:/listsubcategory";
	}

	
	


}