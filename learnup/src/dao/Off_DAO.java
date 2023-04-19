package dao;

import static db.JdbcUtil.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import vo.OffSellerRegipageob;

public class Off_DAO {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs;
	
	private static Off_DAO off_DAO;
	
	private Off_DAO(){
		
	}
	public static Off_DAO getInstance(){
		if(off_DAO == null){
			off_DAO = new Off_DAO();
		}
		return off_DAO;
	}

	
	public void setConnection(Connection conn){
		this.conn = conn;
	}

	
	public int insertsellerinfo(OffSellerRegipageob offsellerregipageob) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;
		System.out.println(offsellerregipageob.getOffseller_blog());
		
		String a ="skyelran@naver.com";

		try{
						
			sql="insert into offseller values(?,?,?,?,?,?,?,?)";
								
			System.out.println("dfsdf");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, a);
			pstmt.setString(2, offsellerregipageob.getOffseller_image());
			pstmt.setString(3, offsellerregipageob.getOffseller_intro());
			pstmt.setString(4, offsellerregipageob.getOffseller_insta());
			pstmt.setString(5, offsellerregipageob.getOffseller_blog());
			pstmt.setString(6, offsellerregipageob.getOffseller_youtube());
			pstmt.setString(7, offsellerregipageob.getOffseller_history());
			pstmt.setString(8, offsellerregipageob.getOffseller_historyimage());
			
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;
	}
	
	
	
	
	
	
}
