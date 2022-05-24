package com.timf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(@Param("board") ReplyVO board, @Param("writer")String writer);
	public ReplyVO read(long rno);
	public int delete (long rno);
	public int update (ReplyVO reply, String writer);
	public List<ReplyVO> getList(@Param("aid") long aid);
}
