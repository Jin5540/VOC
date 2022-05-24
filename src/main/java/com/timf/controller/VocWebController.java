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
import com.timf.domain.VocVO;
import com.timf.service.BoardService;
import com.timf.service.VocService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/voc/*", produces = "text/plain;charset=UTF-8")
@Log4j
@AllArgsConstructor
public class VocWebController {
	
	private BoardService service;
	private VocService service1;
	
	@GetMapping("/receipt")
	public void receipt(@RequestParam("aid") long aid,Model model,@RequestParam("pr_num") long pr_num){
	 model.addAttribute("list",service.get(aid));
	 model.addAttribute("list2",service1.get2(pr_num));
	 
	}
	
	
	@GetMapping("/list")
	public void list(Model model){
	 model.addAttribute("list",service1.getList());	
	}

	
	@GetMapping("/compensation")
	public String write_form(@RequestParam("vo_num") long vo_num,Model model){
		model.addAttribute("board",service1.get(vo_num));
		return "/voc/compensation";
	}
	
	@PostMapping("/final")
	public String final1(@RequestParam("vo_num") long vo_num,VocVO vo, RedirectAttributes rttr, Principal principal)
	{
		log.info("______________final: controller "+vo);
		log.info("______________final: controller "+vo.getRe_price());
		log.info("______________final: controller "+vo.getD_num());
		service1.final1(vo,vo_num);
		service1.final2(vo,vo_num);
		service1.final3(vo,vo_num);
		service1.final4(vo, vo_num);
		service1.final5(vo, vo_num);
		return "redirect:/voc/list";
	}
	
	
	
	@PostMapping("/penalty")
	public String penalty(@RequestParam("vo_num") long vo_num,VocVO vo, RedirectAttributes rttr, Principal principal)
	{
		log.info("______________penalty: controller"+vo);
		service1.penalty(vo,vo_num);
		rttr.addFlashAttribute("result", vo.getVo_num());
		
		return "redirect:/voc/get?vo_num="+vo_num;
	}
	

	
	@PostMapping("/register")
	public String register(VocVO vo, RedirectAttributes rttr, Principal principal)
	{
		log.info("______________register: controller"+vo);
		service1.register(vo);
		rttr.addFlashAttribute("result", vo.getVo_num());
		
		return "redirect:/voc/list";
	}

	@GetMapping("/sendmail")
	public String send_mail(Model model,HttpServletRequest request,RedirectAttributes attr,@RequestParam("vo_num") long vo_num) throws Exception{
		log.info("____________send_mail: controller"); 
		//service.sendmail();
		//service1.mailsend(vo, vo_num);
	    return "redirect:/voc/get?vo_num="+vo_num;
	}
	
	@GetMapping("/get")
	public String get(@RequestParam("vo_num") long vo_num, Model model){	
		log.info("______________get: controller");
		model.addAttribute("board", service1.get(vo_num));
		return "/voc/get";
	}
	
	@GetMapping("/modify")
	public String modify(@RequestParam("aid") long aid, Model model){	
		log.info("______________modify: controller");
		model.addAttribute("board", service.get(aid));
		return "/feedback/modify";
	}
	
}
