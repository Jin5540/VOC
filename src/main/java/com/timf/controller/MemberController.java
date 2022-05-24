package com.timf.controller;

import java.security.Principal;
import java.util.List;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.timf.domain.AuthVO;
import com.timf.domain.MemberVO;
import com.timf.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
@AllArgsConstructor
public class MemberController {
	
	private MemberService service;

	@GetMapping("/customLogin")
	public void doLogin(String error, String logout, Model model) {
		log.info("error");
		log.info("logout");
		
		if(error != null)
		{
			model.addAttribute("error","login eeror check your account");
			
		}
		
		if(logout != null)
		{
			model.addAttribute("logout","logout!");
			
		}
		
		log.info("login");
	}

	
	@GetMapping("/customJoin")
	public String customjoin() {
		return "/member/customJoin";	
	}
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@PostMapping("/join")
	public String register(MemberVO mem, AuthVO au, RedirectAttributes rttr)
	{
		log.info("______________join: controller");
		log.info("___"+au.getAuth());
		mem.setPw(passwordEncoder.encode(mem.getPw()));
		
		if(au.getAuth().equals("ROLE_CARRIER")) {
		service.register(mem, au);
		}
		else {service.register2(mem, au);}
		rttr.addFlashAttribute("result", mem.getId());
		
		return "redirect:/";
	}
	
	@GetMapping("custonLogout")
	public String logoutGet() {
		log.info("custom logout");
		return "/member/customLogout";
	}
	

}
