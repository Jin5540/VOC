package com.timf.service;

import java.util.List;

import com.timf.domain.BoardVO;
import com.timf.domain.MemberVO;

public interface BoardService {
	public void register(BoardVO board, String id);
	public BoardVO get (long bno);
	public boolean modify(BoardVO board, String id);
	public boolean remove(long bno);
	public List<BoardVO> getList();
	//public List<BoardVO> getList(Criteria cri);
	//public int getTotal(Criteria cri);
	

}
