package net.member.admin.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
 * DAO(Data Access Object) 클래스
 * - 데이터 베이스와 연동하여 레코드의 추가, 수정, 삭제 작업이
 * 		이루어지는 클래스 입니다.
 * - 어떤 Action 클래스가 호출되더라도 그에 해당하는
 * 		데이터 베이스 연동 처리는 DAO 클래스에서 이루어지게 됩니다.
 */
public class ADMemberDAO {
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	int result;
	
	//생성자에게 JNDI 리소스를 참조하여 Connection 객체를 얻어옵니다.
	public ADMemberDAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		} catch(Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	public int isId(String id, String pass) {
		return 0;
	}
	
	public List<ADMemberVO> getList(){
		return null;
	}
	
	public ADMemberVO member_info(String id) {
		return null;
	}
	
	public void delete(String id) {
		
	}
	
	public int update(ADMemberVO m) {
		return 0;
	}
	
	public int insert(ADMemberVO m) {
		return 0;
	}
}
