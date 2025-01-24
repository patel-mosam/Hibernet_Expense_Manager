package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.ExpenseEntity;
import com.repository.ExpenseRepository;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class ExpenseController{

	@Autowired
	ExpenseRepository expenseRepository;
	
	@GetMapping("expenses")
	public String Expense() {
		return "Expenses";
	}
	
	@PostMapping("saveexpenses")
	public String AddCategory(ExpenseEntity expenseEntity) {
		expenseRepository.save(expenseEntity);
		return "Expenses";
	}
	
	
	
	
	@GetMapping("listexpenses")
	public String ListExpenses(Model model) {
		List<ExpenseEntity> expenses = expenseRepository.findAll();
		model.addAttribute("expenses", expenses);
		return "ListExpenses";
	}
	
	
	@GetMapping("deleteexpenses")
	public String DeleteExpenses(@RequestParam("expenseId") Integer expenseId) {
		expenseRepository.deleteById(expenseId);
		return "redirect:/listexpenses";
	}

	@GetMapping("editexpenses")
	public String EditExpenses(@RequestParam("expenseId") Integer expenseId, Model model) {

		Optional<ExpenseEntity> optional = expenseRepository.findById(expenseId);

		if (optional.isEmpty()) {
			return "redirect:/listexpenses";
		} else {
			ExpenseEntity expenses = optional.get();
			model.addAttribute("expenses", expenses);
			return "EditExpenses";
		}
		
	}

	@PostMapping("updatexpense")
	public String UpdateExpenses(@ModelAttribute ExpenseEntity expenseEntity) {
		//TODO: process POST request
		expenseRepository.save(expenseEntity);
		return "redirect:/listexpenses";
	}
	

}
