package ko.co.gameshop.form;

import java.sql.Date;

public class CommunityForm {
	int Community_seq;
    int Community_re_ref;
    int Community_re_lev;
    int Community_re_seq;
    String Community_writer;
    String Community_subject;
    String Community_content;
    int Community_hits;
    String del_yn;
    String ins_user_id;
    Date ins_date;
    String upd_user_id;
    Date upd_date;
    String search_type;
 
    public int getCommunity_seq() {
        return Community_seq;
    }
 
    public void setCommunity_seq(int community_seq) {
        this.Community_seq = community_seq;
    }
 
    public int getCommunity_re_ref() {
        return Community_re_ref;
    }
 
    public void setCommunity_re_ref(int community_re_ref) {
        this.Community_re_ref = community_re_ref;
    }
 
    public int getCommunity_re_lev() {
        return Community_re_lev;
    }
 
    public void setCommunity_re_lev(int community_re_lev) {
        this.Community_re_lev = community_re_lev;
    }
 
    public int getommunity_re_seq() {
        return Community_re_seq;
    }
 
    public void setCommunity_re_seq(int community_re_seq) {
        this.Community_re_seq = community_re_seq;
    }
 
    public String getCommunity_writer() {
        return Community_writer;
    }
 
    public void setCommunity_writer(String community_writer) {
        this.Community_writer = community_writer;
    }
 
    public String getCommunity_subject() {
        return Community_subject;
    }
 
    public void setCommunity_subject(String community_subject) {
        this.Community_subject = community_subject;
    }
 
    public String getCommunity_content() {
        return Community_content;
    }
 
    public void setCommunity_content(String community_content) {
        this.Community_content = community_content;
    }
 
    public int getCommunity_hits() {
        return Community_hits;
    }
 
    public void setCommunity_hits(int community_hits) {
        this.Community_hits = community_hits;
    }
 
    public String getDel_yn() {
        return del_yn;
    }
 
    public void setDel_yn(String del_yn) {
        this.del_yn = del_yn;
    }
 
    public String getIns_user_id() {
        return ins_user_id;
    }
 
    public void setIns_user_id(String ins_user_id) {
        this.ins_user_id = ins_user_id;
    }
 
    public Date getIns_date() {
        return ins_date;
    }
 
    public void setIns_date(Date ins_date) {
        this.ins_date = ins_date;
    }
 
    public String getUpd_user_id() {
        return upd_user_id;
    }
 
    public void setUpd_user_id(String upd_user_id) {
        this.upd_user_id = upd_user_id;
    }
 
    public Date getUpd_date() {
        return upd_date;
    }
 
    public void setUpd_date(Date upd_date) {
        this.upd_date = upd_date;
    }
 
    public String getSearch_type() {
        return search_type;
    }
 
    public void setSearch_type(String search_type) {
        this.search_type = search_type;
    }

}
