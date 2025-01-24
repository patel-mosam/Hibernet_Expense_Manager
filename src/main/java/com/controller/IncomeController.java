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

import com.entity.CategoryEntity;
import com.entity.IncomeEntity;
import com.repository.IncomeRepository;

@Controller
public class IncomeController {

	@Autowired
	IncomeRepository incomeRepository;
	
	@GetMapping("income")
	public String IncomeDetails() {
		return "Income";
	}
	
	@PostMapping("saveincome")
	public String AddCategory(@ModelAttribute IncomeEntity incomeEntity) {
		  System.out.println("Amount: " + incomeEntity.getAmount());
		incomeRepository.save(incomeEntity);
		return "Income";
	}
	
	@GetMapping("listincome")
	public String ListIncome(Model model) {
		List<IncomeEntity> income = incomeRepository.findAll();
		model.addAttribute("income", income);
		return "ListIncome";
	}
	
	@GetMapping("deleteincome")
	public String DeleteIncome(@RequestParam("incomeId") Integer incomeId) {
		incomeRepository.deleteById(incomeId);
		return "redirect:/listincome";
	}
	
	@GetMapping("editincome")
	public String EditIncome(@RequestParam("incomeId") Integer incomeId, Model model) {

		Optional<IncomeEntity> optional = incomeRepository.findById(incomeId);

		if (optional.isEmpty()) {
			return "redirect:/listincome";
		} else {
			IncomeEntity income = optional.get();
			model.addAttribute("income", income);
			return "EditIncome";
		}
		
	}
		@PostMapping("updateincome")
		public String updateIncome(IncomeEntity incomeEntity) {
			incomeRepository.save(incomeEntity);
		    return "redirect:/listincome";
		}
		
}
