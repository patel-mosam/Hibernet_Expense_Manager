package com.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "category")
@Data
public class CategoryEntity {

//	category			
//	categoryID	PK	1	2
//	title		Automobile	HouseHold
//	userId	FK	12	12
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "categoryId")
	private Integer categoryId;
	
	@Column(nullable = false)
    private String title;

//    @ManyToOne
//    @JoinColumn(name = "userId", referencedColumnName = "userId", nullable = false)
//    private User user;
	
}
