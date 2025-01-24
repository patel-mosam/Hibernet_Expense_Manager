package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.IncomeEntity;

public interface IncomeRepository  extends JpaRepository<IncomeEntity, Integer>{

}
