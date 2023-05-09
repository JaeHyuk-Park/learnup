package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.JansoDAO;
import vo.Janso_product_registration;
import static db.JdbcUtil.*;


public class Janso_ListService {
	

	
	
public ArrayList<Janso_product_registration> getArticleListall() throws Exception{ //전체 셀렉
		
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationListall();
		close(con);
		return articleList;
		
	}
	
	
	
	public ArrayList<Janso_product_registration> getArticleList(String addp) throws Exception{ //지역별 셀렉
		
		
		System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList(addp);
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
	
	public ArrayList<Janso_product_registration> getsubArticleList(String a, int startpage,int pageSize, String[] keyword ) throws Exception{ //서브리스트 셀렉
		
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
	
		articleList = jansoDAO.Janso_subpageList(a,startpage,pageSize,keyword);
		close(con);
		return articleList;
		
	}
}  	

