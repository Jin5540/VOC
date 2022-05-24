package com.timf.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.timf.service.MemberService;
import com.timf.domain.VocVO;
import com.timf.service.BoardService;
import com.timf.service.DriverService;
import com.timf.service.VocService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/driver/*", produces = "text/plain;charset=UTF-8")
@Log4j
@AllArgsConstructor
public class DriverController {
	
	private VocService service1;
	private MemberService service;
	private DriverService dservice;
	
	@GetMapping("/mypage")
	public String get(Model model, Principal principal){	
		if (principal != null) {
		    log.info("username=" + principal.getName());
		  }
	 model.addAttribute("board",service.get1(principal.getName()));	
	 model.addAttribute("board1",service.get2(principal.getName()));
	return "/driver/mypage";	
	}
	
	@GetMapping("/check")
	public String check(@RequestParam("vo_num") long vo_num,Model model, Principal principal){	
dservice.check(vo_num);
return "redirect:/driver/get?vo_num="+vo_num;	
	}
	
	@GetMapping("/list")
	public void list(@RequestParam("d_num") long d_num,Model model){
	 model.addAttribute("list",dservice.getList(d_num));	
	}

	
	@GetMapping("/get")
	public String get(@RequestParam("vo_num") long vo_num, Model model){	
		log.info("______________get: controller");
		model.addAttribute("board", service1.get(vo_num));
		return "/driver/get";
	}
	
	@GetMapping("/driverdisagree")
	public String driverdisagree(@RequestParam("vo_num") long vo_num, Model model){	
		log.info("______________get: controller");
		model.addAttribute("board", service1.get(vo_num));
		return "/driver/disagree";
	}
	
	@PostMapping("/disagree")
	public String disagree(@RequestParam("vo_num") long vo_num,VocVO vo, RedirectAttributes rttr, Principal principal)
	{
		log.info("______________disagree: controller"+vo);
		dservice.disagree(vo, vo_num);
		rttr.addFlashAttribute("result", vo.getVo_num());
		
		return "redirect:/driver/get?vo_num="+vo_num;
	}
}
