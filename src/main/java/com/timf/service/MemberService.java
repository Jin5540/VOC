package com.timf.service;

import java.util.List;

import com.timf.domain.AuthVO;
import com.timf.domain.MemberVO;

public interface MemberService {
	public void register(MemberVO mem, AuthVO au);
	public void register2(MemberVO mem, AuthVO au);
	public MemberVO get (String id);
	public MemberVO get1 (String id);
	public AuthVO get2 (String id);

}
