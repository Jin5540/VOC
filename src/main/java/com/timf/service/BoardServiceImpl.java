package com.timf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timf.domain.BoardVO;
import com.timf.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_= @Autowired)
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO board, String id) {
		log.info("get register_________________");
		mapper.insert(board, id);
		
	}

	@Override
	public BoardVO get(long bno) {
		log.info("get_________________"+bno);
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board, String id) {
		log.info("modify_________________"+board);
		return mapper.update(board,id) ==1;
	}

	@Override
	public boolean remove(long bno) {
		log.info("remove_________________");
		return mapper.delete(bno) ==1;
	}

	@Override
	public List<BoardVO> getList() {
		log.info("get list_________________" );
		return mapper.getList();
	}



}
