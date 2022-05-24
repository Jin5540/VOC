package com.timf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.BoardVO;
import com.timf.domain.MemberVO;
import com.timf.domain.VocVO;

public interface DriverMapper {
	public VocVO read(long d_num);
	public List<VocVO> getList(long d_num);
	public void check(@Param("vo_num")long vo_num);
	public void disagree(@Param("board") VocVO board,@Param("vo_num")long vo_num);
}
