////package com.controller;
////
////import java.util.List;
////import java.util.Optional;
////import java.util.UUID;
////
////import org.springframework.beans.factory.annotation.Autowired;
////import org.springframework.stereotype.Controller;
////import org.springframework.ui.Model;
////import org.springframework.web.bind.annotation.GetMapping;
////import org.springframework.web.bind.annotation.PostMapping;
////import org.springframework.web.bind.annotation.RequestParam;
////
////import com.entity.CategoryEntity;
////import com.entity.SubCategoryEntity;
////import com.entity.UserEntity;
////import com.repository.CategoryRepository;
////import com.repository.SubCategoryRepository;
////import com.repository.UserRepository;
////
////import jakarta.servlet.http.HttpSession;
////
////@Controller
////public class SubCategoryController {
////
////	@Autowired
////	SubCategoryRepository subcategoryRepository;
////
////	@Autowired
////	UserRepository userRepository;
////
////	@Autowired
////	CategoryRepository categoryRepository;
////
////	@Autowired
////	private HttpSession session;
////
////	@GetMapping("subcategory")
////	public String SubCategory() {
////		return "SubCategory";
////	}
////	
////
////
////		
////	@PostMapping("savesubcategory")
////	public String AddSubCategory(@RequestParam(value =  "categoryId" , required = true) Integer categoryId, 
////	                             SubCategoryEntity subcategoryEntity) {
////		
////		  System.out.println("Category ID from request: " + categoryId); 
////		
////		
////	    Optional<CategoryEntity> categoryOpt = categoryRepository.findById(categoryId);
////	    if (categoryOpt.isPresent()) {
////	        subcategoryEntity.setCategory(categoryOpt.get());
////	        subcategoryRepository.save(subcategoryEntity);
////	        return "redirect:/listsubcategory";
////	    } else {
////	        return "redirect:/subcategory?error=categoryNotFound";
////	    }
////	}
////
////
////	@GetMapping("listsubcategory")
////	public String ListSubCategories(Model model) {
////		List<SubCategoryEntity> subcategory = subcategoryRepository.findAll();
////		model.addAttribute("subcategory", subcategory);
////		return "ListSubCategories";
////	}
////
////	@GetMapping("deletesubcategory")
////	public String DeleteSubCategory(@RequestParam("subcategoryId") Integer subcategoryId) {
////		subcategoryRepository.deleteById(subcategoryId);
////		return "redirect:/listsubcategory";
////	}
////
////	@GetMapping("editsubcategory")
////	public String EditSubCategory(@RequestParam("subcategoryId") Integer subcategoryId, Model model) {
////
////		Optional<SubCategoryEntity> optional = subcategoryRepository.findById(subcategoryId);
////
////		if (optional.isEmpty()) {
////			return "redirect:/listsubcategory";
////		} else {
////			SubCategoryEntity subcategory = optional.get();
////			model.addAttribute("subcategory", subcategory);
////			  // Set categoryId in session before redirecting to the edit form
////	        session.setAttribute("categoryId", subcategory.getCategory().getCategoryId());
////	        
////			return "EditSubCategory";
////		}
////		
////	}
////
////	@PostMapping("updatesubcategory")
////	public String updateSubCategory(SubCategoryEntity subcategoryEntity) {
////	    // **Get categoryId from session**
////	    Integer categoryId = (Integer) session.getAttribute("categoryId");  // **Change**
////
////	    if (categoryId == null) {
////	        // Handle the case when categoryId is missing from the session
////	        return "redirect:/listsubcategory?error=categoryIdNotFound";
////	    }
////
////	    Optional<CategoryEntity> categoryOpt = categoryRepository.findById(categoryId);
////
////	    if (categoryOpt.isPresent()) {
////	        subcategoryEntity.setCategory(categoryOpt.get());
////	        subcategoryRepository.save(subcategoryEntity);
////	    } else {
////	        // Handle the case when the category with the given categoryId is not found
////	        return "redirect:/listsubcategory?error=categoryNotFound";
////	    }
////
////	    return "redirect:/listsubcategory";
////	}
////
////	
////	
////
////
////}
//
//
//
//
//
//package com.controller;
//
//import java.util.List;
//import java.util.Optional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.entity.CategoryEntity;
//import com.entity.SubCategoryEntity;
//import com.repository.CategoryRepository;
//import com.repository.SubCategoryRepository;
//
//import jakarta.servlet.http.HttpSession;
//
//@Controller
//public class SubCategoryController {
//
//    @Autowired
//    SubCategoryRepository subcategoryRepository;
//
//    @Autowired
//    CategoryRepository categoryRepository;
//
//    @Autowired
//    private HttpSession session;
//
//    @GetMapping("subcategory")
//    public String SubCategory() {
//        return "SubCategory";
//    }
//
////    @PostMapping("savesubcategory")
////    public String AddSubCategory(@RequestParam("categoryId") Integer categoryId, SubCategoryEntity subcategoryEntity) {
////        // Store categoryId in session
////        session.setAttribute("categoryId", categoryId);
////        
////        Optional<CategoryEntity> categoryOpt = categoryRepository.findById(categoryId);
////        if (categoryOpt.isPresent()) {
////            subcategoryEntity.setCategory(categoryOpt.get());
////            subcategoryRepository.save(subcategoryEntity);
////            return "redirect:/listsubcategory";
////        } else {
////            return "redirect:/subcategory?error=categoryNotFound";
////        }
////    }
//    
//    
//    @PostMapping("savesubcategory")
//    public String AddSubCategory(SubCategoryEntity subcategoryEntity) {
//       
////    	check if the categoryId exists in the session
//	    Integer categoryId = (Integer) session.getAttribute("categoryId");
//    	
//    	if (categoryId == null) {
//            System.out.println("Error: categoryId is mot present");
//            return "redirect:/subcategory?error=categoryIdNotFound";
//        }
//
//        Optional<CategoryEntity> optCategory = categoryRepository.findById(categoryId);
//        if (optCategory.isPresent()) {
//        	
////        	set the category to the subcategory
//	    	CategoryEntity sessionCategoryId = optCategory.get();
//		    System.out.println(sessionCategoryId.getCategoryId());
//        	
//            subcategoryEntity.setCategory(optCategory.get());
//            subcategoryRepository.save(subcategoryEntity);
//            return "redirect:/listsubcategory";
//        } else {
//            return "redirect:/subcategory?error=categoryNotFound";
//        }
//    }
//
//    
//    
//
//    @GetMapping("listsubcategory")
//    public String ListSubCategories(Model model) {
//        List<SubCategoryEntity> subcategory = subcategoryRepository.findAll();
//        model.addAttribute("subcategory", subcategory);
//        return "ListSubCategories";
//    }
//
//    @GetMapping("deletesubcategory")
//    public String DeleteSubCategory(@RequestParam Integer id) {
//        subcategoryRepository.deleteById(id);
//        return "redirect:/listsubcategory";
//    }
//
//	@GetMapping("editsubcategory")
//	public String EditSubCategory(@RequestParam Integer id, Model model) {
//		Optional<SubCategoryEntity> optional = subcategoryRepository.findById(id);
//		if (optional.isEmpty()) {
//
//			return "redirect:/listsubcategory";
//		}
//		SubCategoryEntity subcategory = optional.get();
//		model.addAttribute("subcategory", subcategory);
//		
//		return "EditSubCategory";
//
//	}
//    
//
////    @PostMapping("updatesubcategory")
////    public String updateSubCategory(SubCategoryEntity subcategoryEntity) {
////        // Retrieve categoryId from session
////        Integer categoryId = (Integer) session.getAttribute("categoryId");
////
////        if (categoryId == null) {
////            return "redirect:/listsubcategory?error=categoryIdNotFound";
////        }
////
////        Optional<CategoryEntity> categoryOpt = categoryRepository.findById(categoryId);
////        if (categoryOpt.isPresent()) {
////            subcategoryEntity.setCategory(categoryOpt.get());
////            subcategoryRepository.save(subcategoryEntity);
////        } else {
////            return "redirect:/listsubcategory?error=categoryNotFound";
////        }
////        return "redirect:/listsubcategory";
////    }
//    
//    
//    
//    
//    
//    @PostMapping("updatesubcategory")
//    public String updateSubCategory(@RequestParam Integer subcategoryId ,SubCategoryEntity updatedSubcategory, HttpSession session , Model model) {
//        
//    	 Optional<SubCategoryEntity> OptSubCategory = subcategoryRepository.findById(subcategoryId);
//    	
//    	 if (OptSubCategory.isEmpty()) {
// 	        model.addAttribute("error", "Subcategory not found");
// 	        return "redirect:/listsubcategory";
// 	     }
//    	 
//    	 SubCategoryEntity existingSubcategory = OptSubCategory.get();
//    	 
//    	 // Fetch the category from session
//    	 Integer categoryId = (Integer) session.getAttribute("categoryId");
// 	    if (categoryId == null) {
// 	        model.addAttribute("error", "CategoryId not found");
// 	        return "redirect:/subcategory"; 
// 	    }
// 	    
// 	   Optional<CategoryEntity> optCategory = categoryRepository.findById(categoryId);
//	     if (optCategory.isEmpty()) {
//	    	 model.addAttribute("error", "Invalid CategoryId");
//	         return "redirect:/subcategory";
//	     } 
//	     
//	     existingSubcategory.setTitle(updatedSubcategory.getTitle());  // Update required fields
//		    existingSubcategory.setCategory(optCategory.get()); // Update category
//
//		    // Save updated subcategory
//		    subcategoryRepository.save(existingSubcategory);
//		    
//		    return "redirect:/listsubcategory";
//    }    
//}










package com.controller;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.CategoryEntity;
import com.entity.SubCategoryEntity;
import com.repository.CategoryRepository;
import com.repository.SubCategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SubCategoryController {

    @Autowired
    private SubCategoryRepository subcategoryRepository;

    @Autowired
    private CategoryRepository categoryRepository;
    
    @Autowired
    HttpSession session;

    // Show subcategory form
    @GetMapping("/subcategory")
    public String subcategory(HttpSession session, Model model) {
        Integer categoryId = (Integer) session.getAttribute("categoryId");
        System.out.println("SubCategory Form - Session categoryId: " + categoryId);

        if (categoryId == null) {
            return "redirect:/category";  // Redirect if categoryId is missing
        }

        Optional<CategoryEntity> categoryOptional = categoryRepository.findById(categoryId);
        categoryOptional.ifPresent(category -> model.addAttribute("category", category));

        return "SubCategory";
    }

    // Save subcategory
    @PostMapping("/savesubcategory")
    public String savesubcategory(@ModelAttribute SubCategoryEntity subcategoryEntity, HttpSession session) {
        Integer categoryId = (Integer) session.getAttribute("categoryId");
        System.out.println("Save SubCategory - Session categoryId: " + categoryId);

        if (categoryId == null) {
            return "redirect:/category";  // Redirect if categoryId is missing
        }

        Optional<CategoryEntity> categoryOptional = categoryRepository.findById(categoryId);
        if (categoryOptional.isPresent()) {
            subcategoryEntity.setCategory(categoryOptional.get());
            subcategoryRepository.save(subcategoryEntity);
            System.out.println("SubCategory Saved: " + subcategoryEntity.getTitle());
        } else {
            System.out.println("Error: Category not found for ID: " + categoryId);
        }

        return "redirect:/listsubcategory";
    }

    // List all subcategories
    @GetMapping("/listsubcategory")
    public String listsubcategory(Model model) {
        List<SubCategoryEntity> subcategories = subcategoryRepository.findAll();
        System.out.println("SubCategories Retrieved: " + subcategories.size());

        model.addAttribute("subcategories", subcategories);
        return "ListSubCategories";
    }

    // Edit subcategory
    @GetMapping("/editsubcategory/{subcategoryId}")
    public String editsubcategory(@PathVariable Integer subcategoryId, Model model) {
        Optional<SubCategoryEntity> subcategoryOptional = subcategoryRepository.findById(subcategoryId);
        if (subcategoryOptional.isPresent()) {
            model.addAttribute("subcategory", subcategoryOptional.get());
            return "EditSubCategory";
        } else {
            System.out.println("Error: SubCategory not found for ID: " + subcategoryId);
            return "redirect:/listsubcategory";
        }
    }

    // Update subcategory
//    @PostMapping("/updatesubcategory")
//    public String updatesubcategory(@ModelAttribute SubCategoryEntity subcategoryEntity) {
//        Optional<SubCategoryEntity> existingSubcategory = subcategoryRepository.findById(subcategoryEntity.getSubcategoryId());
//
//        if (existingSubcategory.isPresent()) {
//            SubCategoryEntity updatedSubcategory = existingSubcategory.get();
//            updatedSubcategory.setTitle(subcategoryEntity.getTitle());
//            subcategoryRepository.save(updatedSubcategory);
//            System.out.println("SubCategory Updated: " + updatedSubcategory.getTitle());
//        } else {
//            System.out.println("Error: SubCategory not found for update");
//        }
//
//        return "redirect:/listsubcategory";
//    }
    
    
    
    
    
    
    
    
    @PostMapping("/updatesubcategory")
    public String updatesubcategory(@RequestParam("subcategoryId") Integer subcategoryId,
                                     @RequestParam("title") String title) {
        Optional<SubCategoryEntity> existingSubcategory = subcategoryRepository.findById(subcategoryId);

        if (existingSubcategory.isPresent()) {
            SubCategoryEntity updatedSubcategory = existingSubcategory.get();
            updatedSubcategory.setTitle(title);
            subcategoryRepository.save(updatedSubcategory);
            System.out.println("SubCategory Updated: " + updatedSubcategory.getTitle());
        } else {
            System.out.println("Error: SubCategory not found for update");
        }

        return "redirect:/listsubcategory";
    }

    
    
    

    // Delete subcategory
    @GetMapping("/deletesubcategory/{subcategoryId}")
    public String deletesubcategory(@PathVariable Integer subcategoryId) {
        if (subcategoryRepository.existsById(subcategoryId)) {
            subcategoryRepository.deleteById(subcategoryId);
            System.out.println("SubCategory Deleted: " + subcategoryId);
        } else {
            System.out.println("Error: SubCategory not found for deletion");
        }
        return "redirect:/listsubcategory";
    }
}




