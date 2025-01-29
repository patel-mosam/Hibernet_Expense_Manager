package com.repository;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.CategoryEntity;
import com.entity.UserEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, Integer>{
//	List<CategoryEntity> findByUserId(UUID userId);
	
	List<CategoryEntity> findByUser(UserEntity user);

	
}
