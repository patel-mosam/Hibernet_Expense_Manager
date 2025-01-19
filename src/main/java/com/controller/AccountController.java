package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.AccountEntity;
import com.entity.UserEntity;
import com.repository.AccountRepository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;


@Controller
public class AccountController {

	@Autowired
	AccountRepository accountRepository;

	@GetMapping("createaccount")
	public String getMethodName() {
		return "CreateAccount";
	}

	@PostMapping("saveaccount")
	public String saveAccount(AccountEntity accountEntity) {
		accountRepository.save(accountEntity);
		return "redirect:/listaccount";
	}

	@GetMapping("listaccount")
	public String listAccounts(Model model) {
		model.addAttribute("accounts", accountRepository.findAll());
		return "ListAccount";
	}

	@GetMapping("deleteaccount")
	public String DeleteAccount(@RequestParam("id") Integer accountId, Model model) {
		accountRepository.deleteById(accountId);
		return "redirect:/listaccount";
	}

	@GetMapping("editaccount")
	public String EditAccount(@RequestParam Integer id, Model model) {
		Optional<AccountEntity> optional = accountRepository.findById(id);
		if (optional.isEmpty()) {
			return "redirect:/listaccount";
		}
		AccountEntity account = optional.get();
		model.addAttribute("account", account);
		return "EditAccount";
	}

	@PostMapping("updateaccount")
	public String UpdateUser(AccountEntity accountEntity) {
		accountRepository.save(accountEntity);
		return "redirect:/listaccount";
	}
	
}
