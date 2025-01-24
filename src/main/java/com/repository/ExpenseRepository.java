package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.ExpenseEntity;

public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Long> {

}
