package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.JansoDAO;
import vo.Janso_mypage_buy;
import vo.Janso_product_registration;
import vo.Janso_review;

import static db.JdbcUtil.*;


public class Janso_detailListService {
	

//	public ArrayList<Janso_product_registration> getArticleList() throws Exception{
//		
//		ArrayList<Janso_product_registration> articleList = null;
//		Connection con = getConnection();
//		JansoDAO jansoDAO = JansoDAO.getInstance();
//		jansoDAO.setConnection(con);
//		articleList = jansoDAO.Janso_product_registrationList();
//		close(con);
//		return articleList;
//		
//	}
//	
//	
//	public int getListCount() throws Exception{
//		int listCount = 0;
//		Connection con = getConnection();
//		JansoDAO jansoDAO = JansoDAO.getInstance();
//		jansoDAO.setConnection(con);
//		listCount = jansoDAO.selectListCount();
//		close(con);
//		return listCount;
//		
//	}
	
	
	//구매자 정보 달력 기능
	public ArrayList<Janso_mypage_buy> getdetailArticle2(int room) throws Exception{
		

		ArrayList<Janso_mypage_buy> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.mypage_buy(room);
		close(con);
		return articleList;
		
	}
	
	
	
	//장소 리스트 셀렉 
	public Janso_product_registration getdetailArticle(int room) throws Exception{
		
		Janso_product_registration article = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		article = jansoDAO.Janso_detailList(room);
		close(con);
		return article;
		
	}
	
	//장소 리뷰 셀렉
	public ArrayList<Janso_review> getdetailReviewArticle(int room) throws Exception{
		
		
		
		
		ArrayList<Janso_review> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.selectreviewArticleList(room);
		close(con);
		
		
		return articleList;
		
	}
	
//장소 리뷰 인설트
	public boolean detailreviewinArticle(Janso_review janso_review) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		int insertCount = jansoDAO.Janso_review(janso_review);
		
		if(insertCount > 0){
			commit(con);
			isWriteSuccess = true;
		}
		else{
			rollback(con);
		}
		
		close(con);
		return isWriteSuccess;
		
	}
	
	
	//장소 달력 구매자 구매
	public boolean jansomyArticle(Janso_mypage_buy buy) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		int insertCount = jansoDAO.janso_mypage_buy(buy);
		System.out.println(insertCount);
		if(insertCount > 0){
			commit(con);
			isWriteSuccess = true;
		}
		else{
			rollback(con);
		}
		
		close(con);
		return isWriteSuccess;
		
	}
}  	

