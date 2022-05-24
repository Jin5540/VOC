package com.timf.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ReplyVO {
	
	private long rno;
	private long aid;
	
	private String reply;
	private String replyer;
	private String replyDate;
	private String updateDate;

}
