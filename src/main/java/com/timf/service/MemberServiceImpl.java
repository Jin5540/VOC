package com.timf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timf.domain.AuthVO;
import com.timf.domain.MemberVO;
import com.timf.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_= @Autowired)
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO board, AuthVO au) {
		log.info("get register_________________");
		mapper.insert1(board);
		mapper.insert2(au);
	}

	@Override
	public MemberVO get(String id) {
		log.info("get_________________"+id);
		return mapper.read(id);
	}
	@Override
	public MemberVO get1(String id) {
		log.info("get_________________"+id);
		return mapper.read1(id);
	}
	@Override
	public AuthVO get2(String id) {
		log.info("get_________________"+id);
		return mapper.read2(id);
	}

	@Override
	public void register2(MemberVO mem, AuthVO au) {
		log.info("get register_________________");
		mapper.insert3(mem);
		mapper.insert4(au);
		
	}

}
