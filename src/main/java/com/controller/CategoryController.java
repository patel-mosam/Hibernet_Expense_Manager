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

    // Show the add category form
    @GetMapping("category")
    public String AddCategory() {
        return "Category";
    }

    // Save the category with the logged-in user and store the category ID in the session
    @PostMapping("savecategory")
    public String SaveCategory(CategoryEntity categoryEntity) {
        UUID userId = (UUID) session.getAttribute("userId"); 
        
        Optional<UserEntity> optUser = userRepository.findById(userId);
        if (optUser.isPresent()) {
            categoryEntity.setUser(optUser.get()); // Set the user before saving
            categoryRepository.save(categoryEntity);
            
            Optional<CategoryEntity> optCategory = categoryRepository.findById(categoryEntity.getCategoryId());
            session.setAttribute("categoryId", categoryEntity.getCategoryId());

            System.out.println("Category ID from session: " + categoryEntity.getCategoryId());
            
            return "redirect:/listcategory";
        } else {
            return "redirect:/category?error=userNotFound";
        }
    }

    // List all categories
    @GetMapping("listcategory")
    public String ListCategories(Model model) {
        List<CategoryEntity> category = categoryRepository.findAll();
        model.addAttribute("category", category);
        return "ListCategories";
    }

    // Delete category by ID
    @GetMapping("deletecategory")
    public String DeleteCategory(@RequestParam Integer categoryId) {
        categoryRepository.deleteById(categoryId);
        return "redirect:/listcategory";
    }

    // Show the edit category form
    @GetMapping("editcategory")
    public String EditCategory(@RequestParam Integer categoryId, Model model) {

        Optional<CategoryEntity> optional = categoryRepository.findById(categoryId);

        if (optional.isEmpty()) {
            return "redirect:/listcategory";
        } else {
            CategoryEntity category = optional.get();
            model.addAttribute("category", category);
            return "EditCategory";
        }
    }

    // Update the category after editing
    @PostMapping("updatecategory")
    public String updateCategory(CategoryEntity categoryEntity, Model model) {
        UUID userId = (UUID) session.getAttribute("userId");

        if (userId == null) {
            model.addAttribute("error", "User not logged in.");
            return "redirect:/login"; 
        }

        Optional<UserEntity> optUser = userRepository.findById(userId);
        categoryEntity.setUser(optUser.get());
        categoryRepository.save(categoryEntity);
        return "redirect:/listcategory";
    }
}
