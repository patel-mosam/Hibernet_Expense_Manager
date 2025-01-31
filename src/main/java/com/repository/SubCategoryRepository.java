package com.repository;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.entity.CategoryEntity;
import com.entity.SubCategoryEntity;

@Repository
public interface SubCategoryRepository extends JpaRepository<SubCategoryEntity, Integer> {
}
