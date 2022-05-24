package com.timf.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;

import com.timf.domain.BoardVO;
import com.timf.domain.CompensationVO;
import com.timf.domain.MemberVO;
import com.timf.domain.VocVO;

public interface CompensationService {
	public List<CompensationVO> getList();

}
