package com.timf.controller;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.timf.domain.BoardVO;
import com.timf.domain.ReplyVO;
import com.timf.service.BoardService;
import com.timf.service.MemberService;
import com.timf.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/feedback/*", produces = "text/plain;charset=UTF-8")
@Log4j
@AllArgsConstructor
public class ClaimWebController {
	
	private BoardService service;
	private MemberService mservice;
	private ReplyService rservice;
	
	@GetMapping("/list")
	public void list(Model model){
	 model.addAttribute("list",service.getList());	
	}
	

	@GetMapping("/write_form")
	public String write_form(Model model,Principal principal){
		model.addAttribute("read1",mservice.get1(principal.getName()));	
		model.addAttribute("read2",mservice.get2(principal.getName()));	
		return "/feedback/write_form";
	}
	
		
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr, Principal principal)
	{
		log.info("______________register: controller"+board);
		service.register(board, principal.getName());
		
		return "redirect:/feedback/list";
	}

	
	@GetMapping("/get")
	public String get(@RequestParam("aid") long aid,BoardVO board,Model model){	
		log.info("______________get: controller");
		model.addAttribute("board", service.get(aid));
		log.info(aid);
		List<ReplyVO> reply = null;
		reply = rservice.getList(aid);
		model.addAttribute("reply", reply);
		log.info("_____________reply: controller");
		return "/feedback/get";
	}
	

}
