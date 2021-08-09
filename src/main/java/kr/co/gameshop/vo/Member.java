package kr.co.gameshop.vo;

import lombok.Data;

@Data
public class Member {
	private int mem_id;
	private String mem_userid;
	private String mem_email;
	private String mem_nickname;
	private String mem_password;
	private int mem_point;
	private int useridCheck;
}
