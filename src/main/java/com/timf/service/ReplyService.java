package com.timf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.BoardVO;
import com.timf.domain.MemberVO;
import com.timf.domain.ReplyVO;

public interface ReplyService {
	//public int register(ReplyVO board, String writer);
	public int register(@Param("board") ReplyVO board, @Param("writer")String writer);
	public ReplyVO get (long rno);
	public boolean modify(ReplyVO board, String writer);
	public boolean remove(long rno);
	public List<ReplyVO> getList(@Param("aid") long aid);
	

}
