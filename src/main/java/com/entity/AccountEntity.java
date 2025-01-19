package com.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "account")
@Data
public class AccountEntity {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "accountId")
    private Long accountId;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private double amount;


    @Column(name = "description")
    private String description;
    
    
    
    

//    @ManyToOne
//    private User user;

  

}
