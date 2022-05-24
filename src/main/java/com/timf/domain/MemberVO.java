package com.timf.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
private String c_name;
private String id;
private String pw;
private String email;
private String num;
private String d_num;

private List<AuthVO> authList;

}
