package com.timf.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.BoardVO;
import com.timf.domain.MemberVO;
import com.timf.domain.VocVO;

public interface VocService {
	public void register(VocVO board);
	public void penalty(@Param("board") VocVO board,@Param("vo_num")long vo_num);
	public VocVO get (long bno);
	public VocVO get2 (long pr_num);
	public boolean modify(VocVO board);
	public boolean remove(long bno);
	public List<VocVO> getList();
	public void final1(@Param("board") VocVO board,@Param("vo_num")long vo_num);
	public void final2(@Param("board") VocVO board,@Param("vo_num")long vo_num);
	public void final3(@Param("board") VocVO board,@Param("vo_num")long vo_num);
	public void final4(@Param("board") VocVO board,@Param("vo_num")long vo_num);
	public void final5(@Param("board") VocVO board,@Param("vo_num")long vo_num);
	
	public void mailsend(@Param("board") VocVO board,@Param("vo_num")long vo_num);
}
