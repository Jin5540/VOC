package com.timf.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


import com.timf.domain.VocVO;

public interface VocMapper {
 //@Select("select * from tbl_board where bno > 0")
 public List<VocVO> getList();

 public void insert(@Param("board") VocVO board);
 public void penalty(@Param("board") VocVO board,@Param("vo_num")long vo_num);
 public VocVO read(long bno);
 public VocVO read2(long pr_num);
 public int delete(long bno);
 public int update(VocVO board);
 public void mailsend(@Param("board") VocVO board,@Param("vo_num")long vo_num);
 public void final1(@Param("board") VocVO board,@Param("vo_num")long vo_num);
 public void final2(@Param("board") VocVO board,@Param("vo_num")long vo_num);
 public void final3(@Param("board") VocVO board,@Param("vo_num")long vo_num);
 public void final4(@Param("board") VocVO board,@Param("vo_num")long vo_num);
 public void final5(@Param("board") VocVO board,@Param("vo_num")long vo_num);
}
