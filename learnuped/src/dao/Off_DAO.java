package dao;

import static db.JdbcUtil.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import vo.OffClassRegipageob;
import vo.OffSellerRegipageob;
import vo.Off_total_ob;

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
						
			sql="insert into offline_product(off_product_num,email,offlineclass_category,entry,offclass_count,offclass_title,cover_image1,offseller_notice,offclass_exp1,offclass_exp2,offclass_exp3,offclass_exp3_image1,offclass_notice,offclass_exp4,offclass_exp4_image1,offclass_tag,offclass_url,offclass_message,offclass_price,offclass_time,cover_image2,cover_image3,cover_image4,cover_image5)"
					+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
								
			System.out.println("dfsdf");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, offclassregipageob.getEmail());
			pstmt.setString(3, offclassregipageob.getOfflineclass_category());
			pstmt.setInt(4, offclassregipageob.getEntry());
			pstmt.setInt(5, offclassregipageob.getOffclass_count());
			pstmt.setString(6, offclassregipageob.getOffclass_title());
			pstmt.setString(7, offclassregipageob.getCover_image1());
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
			pstmt.setString(21, offclassregipageob.getCover_image2());
			pstmt.setString(22, offclassregipageob.getCover_image3());
			pstmt.setString(23, offclassregipageob.getCover_image4());
			pstmt.setString(24, offclassregipageob.getCover_image5());
					
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
			System.out.println(ex+"실패");
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;
	}
	
	
	
	public ArrayList<Off_total_ob> selectTotal(){
		PreparedStatement pstmt = null;
		ResultSet setCover_image1 = null;
		String sql="select * from offseller, offline_product";
		
		Off_total_ob offclass = null;
		ArrayList<Off_total_ob> totalList = new ArrayList<Off_total_ob>();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				
				offclass = new Off_total_ob();
				
				offclass.setEmail(rs.getString("email"));
				offclass.setOffseller_image(rs.getString("offseller_image"));
				offclass.setOffseller_intro(rs.getString("offseller_intro"));
				offclass.setOffseller_insta(rs.getString("offseller_insta"));
				offclass.setOffseller_blog(rs.getString("offseller_blog"));
				offclass.setOffseller_youtube(rs.getString("offseller_youtube"));
				offclass.setOffseller_history(rs.getString("offseller_history"));
				offclass.setOffseller_historyimage(rs.getString("offseller_historyimage"));
				offclass.setOff_product_num(rs.getInt("off_product_num"));
				offclass.setOfflineclass_category(rs.getString("offlineclass_category"));
				offclass.setEntry(rs.getInt("entry"));
				offclass.setOffclass_count(rs.getInt("offclass_count"));
				offclass.setOffclass_title(rs.getString("offclass_title"));
				offclass.setCover_image1(rs.getString("cover_image1"));
				offclass.setOffseller_notice(rs.getString("offseller_notice"));
				offclass.setOffclass_exp1(rs.getString("offclass_exp1"));
				offclass.setOffclass_exp2(rs.getString("offclass_exp2"));
				offclass.setOffclass_exp3(rs.getString("offclass_exp3"));
				offclass.setOffclass_exp3_image1(rs.getString("offclass_exp3_image1"));
				offclass.setOffclass_notice(rs.getString("offclass_notice"));
				offclass.setOffclass_exp4(rs.getString("offclass_exp4"));
				offclass.setOffclass_exp4_image1(rs.getString("offclass_exp4_image1"));
				offclass.setOffclass_tag(rs.getString("offclass_tag"));
				offclass.setOffclass_url(rs.getString("offclass_url"));
				offclass.setOffclass_message(rs.getString("offclass_message"));
				offclass.setOffclass_price(rs.getInt("offclass_price"));
				offclass.setOffclass_time(rs.getInt("offclass_time"));
				offclass.setCover_image2(rs.getString("Cover_image2"));
				offclass.setCover_image3(rs.getString("Cover_image3"));
				offclass.setCover_image4(rs.getString("Cover_image4"));
				offclass.setCover_image5(rs.getString("Cover_image5"));
		
				totalList.add(offclass);
			}
			
		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return totalList;
	}
	
	
	
	
}
