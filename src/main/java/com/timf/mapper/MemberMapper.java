package com.timf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.AuthVO;
import com.timf.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String userid);
	public MemberVO read1(String userid);
	public AuthVO read2(String userid);
	public void insert1(@Param("board")MemberVO board);
	public void insert2(@Param("au") AuthVO au);
	
	public void insert3(@Param("board")MemberVO board);
	public void insert4(@Param("au") AuthVO au);
}
