package com.timf.service;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;

import com.timf.domain.BoardVO;
import com.timf.domain.CompensationVO;
import com.timf.domain.VocVO;
import com.timf.mapper.BoardMapper;
import com.timf.mapper.CompensationMapper;
import com.timf.mapper.VocMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CompensationServiceImpl implements CompensationService {
	
	@Setter(onMethod_= @Autowired)
	private CompensationMapper mapper;


	@Override
	public List<CompensationVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	





}
