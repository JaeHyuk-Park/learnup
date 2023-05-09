package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;

import vo.TalentDataType;
import vo.TalentOptionDataType;
import vo.TalentQnaDataType;
import vo.TalentVersionDataType;
import vo.TalentVersionDataTypeparent;

public class TalentDAOparent {

	DataSource ds;
	Connection con;
	private static TalentDAOparent talentDAO;
	

	public TalentDAOparent() {
	}

	public static TalentDAOparent getInstance(){
		if(talentDAO == null){
			talentDAO = new TalentDAOparent();
		}
		return talentDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}

//	public int selectListCount() {
//
//		int listCount= 0;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		try{
//			pstmt=con.prepareStatement("select count(*) from board");
//			rs = pstmt.executeQuery();
//
//			if(rs.next()){
//				listCount=rs.getInt(1);
//			}
//		}catch(Exception ex){
//
//		}finally{
//			close(rs);
//			close(pstmt);
//		}
//
//		return listCount;
//
//	}
	
//	public ArrayList<BoardBean> selectArticleList(int page,int limit){
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String board_list_sql="select * from board order by BOARD_RE_REF desc,BOARD_RE_SEQ asc limit ?,10";
//		ArrayList<BoardBean> articleList = new ArrayList<BoardBean>();
//		BoardBean board = null;
//		int startrow=(page-1)*10; 
//
//		try{
//			pstmt = con.prepareStatement(board_list_sql);
//			pstmt.setInt(1, startrow);
//			rs = pstmt.executeQuery();
//
//			while(rs.next()){
//				board = new BoardBean();
//				board.setBOARD_NUM(rs.getInt("BOARD_NUM"));
//				board.setBOARD_NAME(rs.getString("BOARD_NAME"));
//				board.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
//				board.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
//				board.setBOARD_FILE(rs.getString("BOARD_FILE"));
//				board.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
//				board.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
//				board.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
//				board.setBOARD_READCOUNT(rs.getInt("BOARD_READCOUNT"));
//				board.setBOARD_DATE(rs.getDate("BOARD_DATE"));
//				articleList.add(board);
//			}
//
//		}catch(Exception ex){
//		}finally{
//			close(rs);
//			close(pstmt);
//		}
//
//		return articleList;
//
//	}

//	public BoardBean selectArticle(int board_num){
//
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		BoardBean boardBean = null;
//
//		try{
//			pstmt = con.prepareStatement(
//					"select * from board where BOARD_NUM = ?");
//			pstmt.setInt(1, board_num);
//			rs= pstmt.executeQuery();
//
//			if(rs.next()){
//				boardBean = new BoardBean();
//				boardBean.setBOARD_NUM(rs.getInt("BOARD_NUM"));
//				boardBean.setBOARD_NAME(rs.getString("BOARD_NAME"));
//				boardBean.setBOARD_SUBJECT(rs.getString("BOARD_SUBJECT"));
//				boardBean.setBOARD_CONTENT(rs.getString("BOARD_CONTENT"));
//				boardBean.setBOARD_FILE(rs.getString("BOARD_FILE"));
//				boardBean.setBOARD_RE_REF(rs.getInt("BOARD_RE_REF"));
//				boardBean.setBOARD_RE_LEV(rs.getInt("BOARD_RE_LEV"));
//				boardBean.setBOARD_RE_SEQ(rs.getInt("BOARD_RE_SEQ"));
//				boardBean.setBOARD_READCOUNT(rs.getInt("BOARD_READCOUNT"));
//				boardBean.setBOARD_DATE(rs.getDate("BOARD_DATE"));
//			}
//		}catch(Exception ex){
//		}finally{
//			close(rs);
//			close(pstmt);
//		}
//
//		return boardBean;
//
//	}

	public int insertArticle(TalentDataType talent){
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
			System.out.println("µ¥ÀÌÅÍº£ÀÌ½º ÀÌ¸ÞÀÏ : " + talent.getEmail());
			pstmt.setString(1, talent.getEmail());
			pstmt.setInt(2, num);
			pstmt.setString(3, talent.getTitle());
			pstmt.setInt(4, talent.getCategory());
			if (talent.getKeyword() != null) {
				pstmt.setString(5, String.join(", ", talent.getKeyword()));
			} else {
			    pstmt.setNull(5, java.sql.Types.VARCHAR);
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
			System.out.println("ÀÌ¹ÌÁö ÀÌ¸§ : " + talent.getImage());
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
			
			System.out.println("talent insert ¿Ï·á µÇ¾ú½À´Ï´Ù.");

		}catch(Exception ex){
			System.out.println(ex+"talent insert ¿À·ùÀÔ´Ï´Ù.");
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;

	}
	
	public void insertVersion(int insertCount, TalentVersionDataTypeparent version) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		
		try{
			sql="insert into learnup.vers_info(product_num, vers_num, vers_title, vers_descript, vers_price, vers_date, recruit_num";
			sql+="values(?, ?, ?, ?, ?, ?)";
			if(insertCount == 1) {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, insertCount);
				pstmt.setInt(2, insertCount);
				pstmt.setString(3, version.getTitle());
				pstmt.setString(4, version.getDescript());
				pstmt.setInt(5, version.getPrice());
				pstmt.setInt(6, version.getDate());
				pstmt.setInt(7, version.getNum());
				
				pstmt.executeUpdate();
				
				System.out.println("talent version 1°³ insert ¿Ï·á µÇ¾ú½À´Ï´Ù.");
			}else {
				for(int i = 0 ; i<version.getVers_title().size(); i++) {
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, insertCount);
					pstmt.setInt(2, insertCount+i);
					pstmt.setString(3, version.getVers_title().get(i));
					pstmt.setString(4, version.getVers_descript().get(i));
					pstmt.setInt(5, version.getVers_price().get(i));
					pstmt.setInt(6, version.getVers_date().get(i));
					pstmt.setInt(7, version.getRecruit_num().get(i));
					
					pstmt.executeUpdate();
				}
				System.out.println("talent version 3°³ insert ¿Ï·á µÇ¾ú½À´Ï´Ù.");
			}

		}catch(Exception ex){
			System.out.println(ex+"talent version insert ¿À·ùÀÔ´Ï´Ù.");
		}finally{
			close(rs);
			close(pstmt);
		}
		
	}
	
	public void insertoption(int insertCount2, TalentOptionDataType option){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		
		try{
			sql="insert into learnup.option(product_num, op_num, op_title, op_descript, op_date, op_price";
			sql+="values(?, ?, ?, ?, ?, ?)";
			for(int i = 0 ; i<option.getOp_title().size(); i++) {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, insertCount2);
				pstmt.setInt(2, insertCount2+i);
				pstmt.setString(3, option.getOp_title().get(i));
				pstmt.setString(4, option.getOp_descript().get(i));
				pstmt.setInt(5, option.getOp_date().get(i));
				pstmt.setInt(6, option.getOp_price().get(i));
				
				pstmt.executeUpdate();
			}
			System.out.println("talent option insert ¿Ï·á µÇ¾ú½À´Ï´Ù.");

		}catch(Exception ex){
			System.out.println(ex+"talent option insert ¿À·ùÀÔ´Ï´Ù.");
		}finally{
			close(rs);
			close(pstmt);
		}

	}

	public void insertqna(int insertCount, TalentQnaDataType qna){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		
		try{
			sql="insert into learnup.prod_qna(product_num, qna_num, qna_title, qna_answer";
			sql+="values(?, ?, ?, ?)";
			
			for(int i = 0 ; i<qna.getQna_title().size(); i++) {
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, insertCount);
				pstmt.setInt(2, insertCount+i);
				pstmt.setString(3, qna.getQna_title().get(i));
				pstmt.setString(4, qna.getQna_answer().get(i));
				
				pstmt.executeUpdate();
			}
			System.out.println("talent qna insert ¿Ï·á µÇ¾ú½À´Ï´Ù.");

		}catch(Exception ex){
			System.out.println(ex+"talent qna insert ¿À·ùÀÔ´Ï´Ù.");
		}finally{
			close(rs);
			close(pstmt);
		}

	}
//	public int insertReplyArticle(BoardBean article){
//
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String board_max_sql="select max(board_num) from board";
//		String sql="";
//		int num=0;
//		int insertCount=0;
//		int re_ref=article.getBOARD_RE_REF();
//		int re_lev=article.getBOARD_RE_LEV();
//		int re_seq=article.getBOARD_RE_SEQ();
//
//		try{
//			pstmt=con.prepareStatement(board_max_sql);
//			rs = pstmt.executeQuery();
//			if(rs.next())num =rs.getInt(1)+1;
//			else num=1;
//			sql="update board set BOARD_RE_SEQ=BOARD_RE_SEQ+1 where BOARD_RE_REF=? ";
//			sql+="and BOARD_RE_SEQ>?";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1,re_ref);
//			pstmt.setInt(2,re_seq);
//			int updateCount=pstmt.executeUpdate();
//
//			if(updateCount > 0){
//				commit(con);
//			}
//
//			re_seq = re_seq + 1;
//			re_lev = re_lev+1;
//			sql="insert into board (BOARD_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,";
//			sql+="BOARD_CONTENT, BOARD_FILE,BOARD_RE_REF,BOARD_RE_LEV,BOARD_RE_SEQ,";
//			sql+="BOARD_READCOUNT,BOARD_DATE) values(?,?,?,?,?,?,?,?,?,?,now())";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, num);
//			pstmt.setString(2, article.getBOARD_NAME());
//			pstmt.setString(3, article.getBOARD_PASS());
//			pstmt.setString(4, article.getBOARD_SUBJECT());
//			pstmt.setString(5, article.getBOARD_CONTENT());
//			pstmt.setString(6, ""); //ï¿½ï¿½ï¿½å¿¡ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Îµï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½.
//			pstmt.setInt(7, re_ref);
//			pstmt.setInt(8, re_lev);
//			pstmt.setInt(9, re_seq);
//			pstmt.setInt(10, 0);
//			insertCount = pstmt.executeUpdate();
//		}catch(SQLException ex){
//		}finally{
//			close(rs);
//			close(pstmt);
//		}
//
//		return insertCount;
//
//	}

	

//	public int updateArticle(BoardBean article){
//
//		int updateCount = 0;
//		PreparedStatement pstmt = null;
//		String sql="update board set BOARD_SUBJECT=?,BOARD_CONTENT=?, BOARD_NAME=? where BOARD_NUM=?";
//
//		try{
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, article.getBOARD_SUBJECT());
//			pstmt.setString(2, article.getBOARD_CONTENT());
//			pstmt.setString(3, article.getBOARD_NAME());
//			pstmt.setInt(4, article.getBOARD_NUM());
//			updateCount = pstmt.executeUpdate();
//		}catch(Exception ex){
//			System.out.println(ex+"¿À·ùÀÓ.");
//		}finally{
//			close(pstmt);
//		}
//
//		return updateCount;
//
//	}
//
//	public int deleteArticle(int board_num){
//
//		PreparedStatement pstmt = null;
//		String board_delete_sql="delete from board where BOARD_num=?";
//		int deleteCount=0;
//
//		try{
//			pstmt=con.prepareStatement(board_delete_sql);
//			pstmt.setInt(1, board_num);
//			deleteCount=pstmt.executeUpdate();
//		}catch(Exception ex){
//		}	finally{
//			close(pstmt);
//		}
//
//		return deleteCount;
//
//	}
//
//	public int updateReadCount(int board_num){
//
//		PreparedStatement pstmt = null;
//		int updateCount = 0;
//		String sql="update board set BOARD_READCOUNT = "+
//				"BOARD_READCOUNT+1 where BOARD_NUM = "+board_num;
//
//		try{
//			pstmt=con.prepareStatement(sql);
//			updateCount = pstmt.executeUpdate();
//		}catch(SQLException ex){
//		}
//		finally{
//			close(pstmt);
//
//		}
//
//		return updateCount;
//
//	}
//
//	public boolean isArticleBoardWriter(int board_num,String pass){
//
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		String board_sql="select * from board where BOARD_NUM=?";
//		boolean isWriter = false;
//
//		try{
//			pstmt=con.prepareStatement(board_sql);
//			pstmt.setInt(1, board_num);
//			rs=pstmt.executeQuery();
//			rs.next();
//
//			if(pass.equals(rs.getString("BOARD_PASS"))){
//				isWriter = true;
//			}
//		}catch(SQLException ex){
//		}
//		finally{
//			close(pstmt);
//		}
//
//		return isWriter;
//
//	}

}
