/*
 * 	데이터 빈(DataBean) 클래스 작성
 * 게시판에서 사용되는 정보들을 데이터 빈이라는 하나의 객체에 저장하게 되고
 * 이 객체를 전달하면 각 정보를 하나씩 전달할 필요가 없으며
 * 한꺼번에 모든 정보가 전달됩니다.
 * 이런 클래스를 DTO(Data Transfer Object),
 * VO(Value Object)라고 합니다.
 * DB에서 만들었떤 컬럼명과 동일하게 프로퍼티를 생성합니다.
 */
package net.member.admin.db;

import java.util.Date;

public class ADMemberVO {
	private String aid;
	private String apass;
	private String aname;
	private int aresid;
	private String agender;
	private String ajob;
	private int aphone;
	private String aemail;
	private String apost;
	private String aaddress;
	private String aperm;
	private Date adate;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApass() {
		return apass;
	}
	public void setApass(String apass) {
		this.apass = apass;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public int getAresid() {
		return aresid;
	}
	public void setAresid(int aresid) {
		this.aresid = aresid;
	}
	public String getAgender() {
		return agender;
	}
	public void setAgender(String agender) {
		this.agender = agender;
	}
	public String getAjob() {
		return ajob;
	}
	public void setAjob(String ajob) {
		this.ajob = ajob;
	}
	public int getAphone() {
		return aphone;
	}
	public void setAphone(int aphone) {
		this.aphone = aphone;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getApost() {
		return apost;
	}
	public void setApost(String apost) {
		this.apost = apost;
	}
	public String getAaddress() {
		return aaddress;
	}
	public void setAaddress(String aaddress) {
		this.aaddress = aaddress;
	}
	public String getAperm() {
		return aperm;
	}
	public void setAperm(String aperm) {
		this.aperm = aperm;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
}
