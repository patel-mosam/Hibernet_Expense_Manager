package com.entity;


import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
	  	@Column(name = "subcategoryId")
	    private Integer subcategoryId;
	    private String title;

	 // Many SubCategories belong to One Category
	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name = "categoryId", nullable = false)
	    private CategoryEntity category;
	    
	    
}
