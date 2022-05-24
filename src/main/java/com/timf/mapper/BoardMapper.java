package com.timf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.timf.domain.BoardVO;

public interface BoardMapper {
 //@Select("select * from tbl_board where bno > 0")
 public List<BoardVO> getList();
 //public List<BoardVO> getListWithPaging(Criteria cri);
// public int getTotalCount(Criteria cri);
 public void insert(@Param("board")BoardVO board, @Param("id")String id);
 public void insertSelectKey(BoardVO board);
 public BoardVO read(long bno);
 public int delete(long bno);
 public int update(@Param("board")BoardVO board, @Param("id")String id);
 
}
