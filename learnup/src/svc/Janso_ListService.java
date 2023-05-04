package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.JansoDAO;
import vo.Janso_product_registration;
import static db.JdbcUtil.*;


public class Janso_ListService {
	

	public ArrayList<Janso_product_registration> getArticleList() throws Exception{
		
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList();
		close(con);
		return articleList;
		
	}
	
	
	public int getListCount() throws Exception{
		int listCount = 0;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		listCount = jansoDAO.selectListCount();
		close(con);
		return listCount;
		
	}
	
	public ArrayList<Janso_product_registration> getsubArticleList(String a, int startpage,int pageSize) throws Exception{
		
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_subpageList(a,startpage,pageSize);
		close(con);
		return articleList;
		
	}
}  	

