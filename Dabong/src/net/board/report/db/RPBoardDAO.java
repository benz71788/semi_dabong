package net.board.report.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class RPBoardDAO {
	DataSource ds;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public RPBoardDAO(){
		try {
			Context init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		} catch(Exception ex) {
			System.out.println("DB 연결 실패: " + ex);
			return;
		}
	}
	
	public int getListCount() {
		return 0;
	}
	
	public List<RPBoardVO> getBoardList(int page, int limit){
		return null;
	}
	
	public List<RPBoardVO> listSearch(RPBoardVO board) {
		return null;
	}
	
	public boolean boardInsert(RPBoardVO board) {
		return false;
	}
	
	public boolean isBoardWriter(int num, String pass) {
		return false;
	}
	
	public RPBoardVO getDetail(int num) {
		return null;
	}
	
	public boolean boardModify(RPBoardVO board) {
		return false;
	}
	
	public boolean boardDelete(int num) {
		return false;
	}
	
	public void setReadCountUpdate(int num) {
		
	}
	

}
