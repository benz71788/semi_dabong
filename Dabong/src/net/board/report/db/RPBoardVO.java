package net.board.report.db;

import java.sql.Date;

public class RPBoardVO {
	private int dnum;
	private String did;
	private String dname;
	private String dsum;
	private String dcont;
	private String dfiles;
	private Date ddate;
	private int dvisit;
	
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDsum() {
		return dsum;
	}
	public void setDsum(String dsum) {
		this.dsum = dsum;
	}
	public String getDcont() {
		return dcont;
	}
	public void setDcont(String dcont) {
		this.dcont = dcont;
	}
	public String getDfiles() {
		return dfiles;
	}
	public void setDfiles(String dfiles) {
		this.dfiles = dfiles;
	}
	public Date getDdate() {
		return ddate;
	}
	public void setDdate(Date ddate) {
		this.ddate = ddate;
	}
	public int getDvisit() {
		return dvisit;
	}
	public void setDvisit(int dvisit) {
		this.dvisit = dvisit;
	}
}
