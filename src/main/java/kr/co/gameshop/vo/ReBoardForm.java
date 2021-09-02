package kr.co.gameshop.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReBoardForm extends CommonForm{
	
	int board_seq;
    int board_parent_seq;
    int board_re_ref;
    int board_re_lev;
    int board_re_seq;
    String board_writer;
    String board_subject;
    String board_content;
    int board_hits;
    String del_yn;
    String ins_user_id;
    Date ins_date;
    String upd_user_id;
    Date upd_date;
    String search_type;
	
}
