package com.timf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.timf.service.BoardService;
import com.timf.service.CompensationService;
import com.timf.service.VocService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/Compensation/*", produces = "text/plain;charset=UTF-8")
@Log4j
@AllArgsConstructor
public class CompensationController {
	
	private CompensationService service;
	
	@GetMapping("/list")
	public String list(Model model){
	 model.addAttribute("list",service.getList());
	return "/Compensation/list";	
	}

}
