package ko.co.gameshop.dto;

public class CommunityDto {
	int community_seq;
    int community_re_ref;
    int community_re_lev;
    int community_re_seq;
    String community_writer;
    String community_subject;
    String community_content;
    int community_hits;
    String del_yn;
    String ins_user_id;
    String ins_date;
    String upd_user_id;
    String upd_date;
 
    String result;
 
    public int getCommunity_seq() {
        return community_seq;
    }
 
    public void setCommunity_seq(int community_seq) {
        this.community_seq = community_seq;
    }
 
    public int getCommunity_re_ref() {
        return community_re_ref;
    }
 
    public void setCommunity_re_ref(int community_re_ref) {
        this.community_re_ref = community_re_ref;
    }
 
    public int getCommunity_re_lev() {
        return community_re_lev;
    }
 
    public void setCommunity_re_lev(int community_re_lev) {
        this.community_re_lev = community_re_lev;
    }
 
    public int getCommunity_re_seq() {
        return community_re_seq;
    }
 
    public void setCommunity_re_seq(int community_re_seq) {
        this.community_re_seq = community_re_seq;
    }
 
    public String getCommunity_writer() {
        return community_writer;
    }
 
    public void setCommunity_writer(String community_writer) {
        this.community_writer = community_writer;
    }
 
    public String getCommunity_subject() {
        return community_subject;
    }
 
    public void setCommunity_subject(String community_subject) {
        this.community_subject = community_subject;
    }
 
    public String getCommunity_content() {
        return community_content;
    }
 
    public void setCommunity_content(String community_content) {
        this.community_content = community_content;
    }
 
    public int getCommunity_hits() {
        return community_hits;
    }
 
    public void setCommunity_hits(int community_hits) {
        this.community_hits = community_hits;
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
 
    public String getIns_date() {
        return ins_date;
    }
 
    public void setIns_date(String ins_date) {
        this.ins_date = ins_date;
    }
 
    public String getUpd_user_id() {
        return upd_user_id;
    }
 
    public void setUpd_user_id(String upd_user_id) {
        this.upd_user_id = upd_user_id;
    }
 
    public String getUpd_date() {
        return upd_date;
    }
 
    public void setUpd_date(String upd_date) {
        this.upd_date = upd_date;
    }
 
    public String getResult() {
        return result;
    }
 
    public void setResult(String result) {
        this.result = result;
    }

}
