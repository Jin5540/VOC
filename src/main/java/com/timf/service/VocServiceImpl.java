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
import com.timf.domain.VocVO;
import com.timf.mapper.BoardMapper;
import com.timf.mapper.VocMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class VocServiceImpl implements VocService {

	@Setter(onMethod_= @Autowired)
	private VocMapper mapper;
	
	@Override
	public void register(VocVO board) {
		log.info("get register_________________");
		mapper.insert(board);
		
	}

	@Override
	public VocVO get(long bno) {
		log.info("get_________________"+bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(VocVO board) {
		log.info("modify_________________"+board);
		return mapper.update(board) ==1;
	}

	@Override
	public boolean remove(long bno) {
		log.info("remove_________________");
		return mapper.delete(bno) ==1;
	}

	@Override
	public List<VocVO> getList() {
		log.info("get list_________________" );
		return mapper.getList();
	}

	@Override
	public void penalty(VocVO board, long vo_num) {
		log.info("get penalty");
		mapper.penalty(board,vo_num);
	}

	@Override
	public void final1(VocVO board, long vo_num) {
		log.info("get final");
		mapper.final1(board,vo_num);
		
		
	}

	@Override
	public void final2(VocVO board, long vo_num) {
		mapper.final2(board,vo_num);
		
	}

	@Override
	public void final3(VocVO board, long vo_num) {
		mapper.final3(board,vo_num);
		
	}

	@Override
	public void mailsend(VocVO board, long vo_num) {
		mapper.mailsend(board, vo_num);
		
	}

	@Override
	public void final4(VocVO board, long vo_num) {
		mapper.final4(board,vo_num);
		
	}

	@Override
	public void final5(VocVO board, long vo_num) {
		mapper.final5(board,vo_num);
		
	}

	@Override
	public VocVO get2(long pr_num) {
		return mapper.read2(pr_num);
	}




}
