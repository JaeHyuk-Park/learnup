package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.JansoDAO;
import vo.Janso_product_registration;
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
	
	public Janso_product_registration getdetailArticle(int room) throws Exception{
		
		Janso_product_registration article = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		article = jansoDAO.Janso_detailList(room);
		close(con);
		return article;
		
	}
}  	

