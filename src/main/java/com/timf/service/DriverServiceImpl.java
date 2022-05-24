package com.timf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timf.domain.AuthVO;
import com.timf.domain.MemberVO;
import com.timf.domain.VocVO;
import com.timf.mapper.DriverMapper;
import com.timf.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class DriverServiceImpl implements DriverService {
	
	@Setter(onMethod_= @Autowired)
	private DriverMapper mapper;
	

	@Override
	public VocVO get(long d_num) {
		log.info("get_________________"+d_num);
		return mapper.read(d_num);
	}


	@Override
	public List<VocVO> getList(long d_num) {
		// TODO Auto-generated method stub
		return mapper.getList(d_num);
	}


	@Override
	public void check(long vo_num) {
		mapper.check(vo_num);
		
	}


	@Override
	public void disagree(@Param("board") VocVO board,long vo_num) {
	mapper.disagree(board,vo_num);
		
	}

}
