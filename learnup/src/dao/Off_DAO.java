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

<<<<<<< HEAD
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
=======
import vo.OffClassRegipageob;
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
			pstmt.setString(1, offsellerregipageob.getEmail());
			pstmt.setString(2, offsellerregipageob.getOffseller_image());
			pstmt.setString(3, offsellerregipageob.getOffseller_intro());
			pstmt.setString(4, offsellerregipageob.getOffseller_insta());
			pstmt.setString(5, offsellerregipageob.getOffseller_blog());
			pstmt.setString(6, offsellerregipageob.getOffseller_youtube());
			pstmt.setString(7, offsellerregipageob.getOffseller_history());
			pstmt.setString(8, offsellerregipageob.getOffseller_historyimage());
			
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
			System.out.println(ex+"실패");
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;
	}
	
	public int insertclassinfo(OffClassRegipageob offclassregipageob) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;

		
		String a ="skyelran@naver.com";

		try{
			pstmt=conn.prepareStatement("select max(off_product_num) from offline_product");
			rs = pstmt.executeQuery();

			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;
						
			sql="insert into offline_product(off_product_num,email,offlineclass_category,entry,offclass_count,offclass_title,cover_image,offseller_notice,offclass_exp1,offclass_exp2,offclass_exp3,offclass_exp3_image1,offclass_notice,offclass_exp4,offclass_exp4_image1,offclass_tag,offclass_url,offclass_message,offclass_price,offclass_time)"
					+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
								
			System.out.println("dfsdf");
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setString(2, offclassregipageob.getEmail());
			pstmt.setString(3, offclassregipageob.getOfflineclass_category());
			pstmt.setInt(4, offclassregipageob.getEntry());
			pstmt.setInt(5, offclassregipageob.getOffclass_count());
			pstmt.setString(6, offclassregipageob.getOffclass_title());
			pstmt.setString(7, offclassregipageob.getCover_image());
			pstmt.setString(8, offclassregipageob.getOffseller_notice());
			pstmt.setString(9, offclassregipageob.getOffclass_exp1());
			pstmt.setString(10, offclassregipageob.getOffclass_exp2());
			pstmt.setString(11, offclassregipageob.getOffclass_exp3());
			pstmt.setString(12, offclassregipageob.getOffclass_exp3_image1());
			pstmt.setString(13, offclassregipageob.getOffclass_notice());
			pstmt.setString(14, offclassregipageob.getOffclass_exp4());
			pstmt.setString(15, offclassregipageob.getOffclass_exp4_image1());
			pstmt.setString(16, offclassregipageob.getOffclass_tag());
			pstmt.setString(17, offclassregipageob.getOffclass_url());
			pstmt.setString(18, offclassregipageob.getOffclass_message());
			pstmt.setInt(19, offclassregipageob.getOffclass_price());
			pstmt.setInt(20, offclassregipageob.getOffclass_time());
			
			
			
			
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
			System.out.println(ex+"실패");
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;
	}
	
	
	
	
	
	
}
