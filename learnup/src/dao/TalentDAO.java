package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import vo.TalentDataType;
import vo.TalentVersionDataType;

public class TalentDAO {

	DataSource ds;
	Connection con;
	private static TalentDAO talentDAO;
	

	public TalentDAO() {
	}

	public static TalentDAO getInstance(){
		if(talentDAO == null){
			talentDAO = new TalentDAO();
		}
		return talentDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}

	public int insertArticle(TalentDataType talent, String[] keyword){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;

		try{
			pstmt=con.prepareStatement("select max(product_num) as 'num' from learnup.product");
			rs = pstmt.executeQuery();

			if(rs.next())
				num =rs.getInt("num")+1;
			else
				num=1;

			sql="insert into learnup.product(email, product_num, title, category,";
			sql+="keyword, service_descript, service_text,"+
					"recruit, image, image_1, image_2, image_3, image_4, image_5, image_6, image_7, image_8, image_9) "+
					"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			System.out.println("데이터베이스 이메일 : " + talent.getEmail());
			pstmt.setString(1, talent.getEmail());
			pstmt.setInt(2, num);
			pstmt.setString(3, talent.getTitle());
			pstmt.setString(4, talent.getCategory());
			if (keyword != null) {
				pstmt.setString(5, String.join(", ", keyword));
			}
			if (talent.getService_descript() != null) {
				pstmt.setString(6, talent.getService_descript());
			} else {
			    pstmt.setNull(6, java.sql.Types.VARCHAR);
			}
			if (talent.getService_text() != null) {
				pstmt.setString(7, talent.getService_text());
			} else {
			    pstmt.setNull(7, java.sql.Types.VARCHAR);
			}
			if (talent.getRecruit() != null) {
				pstmt.setString(8, talent.getService_text());
			} else {
			    pstmt.setNull(8, java.sql.Types.VARCHAR);
			}
			System.out.println("이미지 이름 : " + talent.getImage());
			pstmt.setString(9, talent.getImage());
			
			if (talent.getImage_1() != null) {
			    pstmt.setString(10, talent.getImage_1());
			} else {
			    pstmt.setNull(10, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_2() != null) {
			    pstmt.setString(11, talent.getImage_2());
			} else {
			    pstmt.setNull(11, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_3() != null) {
			    pstmt.setString(12, talent.getImage_3());
			} else {
			    pstmt.setNull(12, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_4() != null) {
			    pstmt.setString(13, talent.getImage_4());
			} else {
			    pstmt.setNull(13, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_5() != null) {
			    pstmt.setString(14, talent.getImage_5());
			} else {
			    pstmt.setNull(14, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_6() != null) {
			    pstmt.setString(15, talent.getImage_6());
			} else {
			    pstmt.setNull(15, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_7() != null) {
			    pstmt.setString(16, talent.getImage_7());
			} else {
			    pstmt.setNull(16, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_8() != null) {
			    pstmt.setString(17, talent.getImage_8());
			} else {
			    pstmt.setNull(17, java.sql.Types.VARCHAR);
			}

			if (talent.getImage_9() != null) {
			    pstmt.setString(18, talent.getImage_9());
			} else {
			    pstmt.setNull(18, java.sql.Types.VARCHAR);
			}

			insertCount=pstmt.executeUpdate();
			
			System.out.println("talent insert 완료 되었습니다.");

		}catch(Exception ex){
			System.out.println(ex+"talent insert 오류입니다.");
		}finally{
			close(rs);
			close(pstmt);
		}

		return num;

	}
	
	public void insertVersion(int insertCount, TalentVersionDataType version) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		
		try{
			sql="insert into learnup.vers_info(product_num, vers_num, vers_title, vers_descript, vers_price, vers_date, recruit_num)";
			sql+="values(?, ?, ?, ?, ?, ?, ?)";
			
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, insertCount);
				pstmt.setInt(2, 1);
				pstmt.setString(3, version.getTitle());
				pstmt.setString(4, version.getDescript());
				pstmt.setInt(5, version.getPrice());
				pstmt.setInt(6, version.getDate());
				pstmt.setInt(7, version.getNum());
				
				pstmt.executeUpdate();
				
				System.out.println("talent version 1개 insert 완료 되었습니다.");

		}catch(Exception ex){
			System.out.println(ex+"talent version insert 오류입니다.");
		}finally{
			close(rs);
			close(pstmt);
		}
		
	}
}
