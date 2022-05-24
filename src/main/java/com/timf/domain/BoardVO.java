package com.timf.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class BoardVO {
	private long aid;
	private String im_title;
	private String im_content;
	private String id;
	private String im_re;
	private Date date1;
	private String c_name;
    private String d_name;
    private long pr_num;
    private String ca_name;


}
