package com.timf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.AuthVO;
import com.timf.domain.MemberVO;
import com.timf.domain.VocVO;

public interface DriverService {
	public VocVO get (long d_num);
	public List<VocVO> getList(long d_num);
	public void check(@Param("vo_num")long vo_num);
	public void disagree(@Param("board") VocVO board,@Param("vo_num")long vo_num);

}
