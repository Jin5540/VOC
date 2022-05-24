package com.timf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timf.domain.BoardVO;
import com.timf.domain.ReplyVO;
import com.timf.mapper.BoardMapper;
import com.timf.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	
	@Setter(onMethod_= @Autowired)
	private ReplyMapper mapper;
	
	@Override
	public int register(ReplyVO board, String writer) {
		log.info("get register_________________");
		return mapper.insert(board,writer);
		
	}

	@Override
	public ReplyVO get(long bno) {
		log.info("get_________________"+bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(ReplyVO board, String writer) {
		log.info("modify_________________"+board);
		return mapper.update(board,writer) ==1;
	}

	@Override
	public boolean remove(long rno) {
		log.info("remove_________________");
		return mapper.delete(rno) ==1;
	}

	@Override
	public List<ReplyVO> getList(long aid) {
		return mapper.getList(aid);
	}









}
