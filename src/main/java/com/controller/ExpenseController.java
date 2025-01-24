package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.ExpenseEntity;
import com.repository.ExpenseRepository;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseRepository expenseRepository;

	@GetMapping("addexpense")
	public String AddExpense() {
		return"AddExpense";
	}
	
	@PostMapping("saveexpense")
	public String saveExpense(ExpenseEntity expenseEntity) {
		expenseRepository.save(expenseEntity);
		return "redirect:/listexpense";
	}
	
	@GetMapping("listexpense")
	public String listExpense(Model model) {
		List<ExpenseEntity> expense = expenseRepository.findAll();
		model.addAttribute("expense",expense);
		return "ListExpense";
	}
	
	@GetMapping("deleteexpense")
	public String deleteExpense(@RequestParam("id") Long expenseId) {
		expenseRepository.deleteById(expenseId);
		return "redirect:/listexpense";
	}
	
	@GetMapping("editexpense")
	public String editExpense(@RequestParam Long id,Model model) {
		Optional<ExpenseEntity> optional = expenseRepository.findById(id);
		if(optional.isEmpty()) {
			return "redirect:/listexpense";
		}
		ExpenseEntity expense = optional.get();
		model.addAttribute("expense",expense);
		return "EditExpense";
	}
	
	@PostMapping("updateexpense")
	public String updateExpense(ExpenseEntity expenseEntity){
		expenseRepository.save(expenseEntity);
		return "redirect:/listexpense";
		
	}
	
}
