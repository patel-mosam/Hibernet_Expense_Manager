package com.entity;

import java.time.LocalDateTime;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;


@Entity
@Table(name="users")
@Data
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private UUID userId;	//pk
	private String firstName;
	private String lastName;
    @Column(unique = true, nullable = false)
	private String email;
	private String password;
	private String role = "user";
	private Boolean active = true;
	private LocalDateTime createdAt = LocalDateTime.now();
	private String otp;
  
}
