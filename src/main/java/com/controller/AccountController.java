package com.controller;

import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.entity.AccountEntity;
import com.entity.UserEntity;
import com.repository.AccountRepository;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AccountController {

	@Autowired
	AccountRepository accountRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	private HttpSession session;

	@GetMapping("createaccount")
	public String getMethodName() {
		return "CreateAccount";
	}

	@PostMapping("saveaccount")
	public String SaveAccount(AccountEntity accountEntity) {
		
		UUID userId = (UUID)session.getAttribute("userId");
		Optional<UserEntity> optUser = userRepository.findById(userId);
		if(optUser.isPresent()) {
			accountEntity.setUser(optUser.get());
			accountRepository.save(accountEntity);
			return "redirect:/listaccount";
		}else {
	        
	        return "redirect:/addaccount?error=userNotFound";
			
		}
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
	public String EditAccount(@RequestParam("id") Integer id, Model model) {
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
		UUID userId = (UUID)session.getAttribute("userId");
		Optional<UserEntity> optUser = userRepository.findById(userId);
		accountEntity.setUser(optUser.get());
		accountRepository.save(accountEntity);
		return "redirect:/listaccount";
	}
	
}