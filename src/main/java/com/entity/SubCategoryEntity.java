package com.entity;

import java.util.Locale.Category;

import org.apache.catalina.User;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "SubCategory")
@Data
public class SubCategoryEntity {

	  @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Integer subcategoryId;

	    private String title;

//	    @ManyToOne
//	    @JoinColumn(name = "categoryId", nullable = false)
//	    private Category category;  // Links to the Category entity
//
//	    @ManyToOne
//	    @JoinColumn(name = "userId", nullable = false)
//	    private User user;  // Links to the User entity
	    

	    
}
