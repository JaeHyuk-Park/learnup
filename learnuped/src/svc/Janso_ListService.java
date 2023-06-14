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
	
	
	//서울
	public ArrayList<Janso_product_registration> getArticleList(String addp) throws Exception{ //지역별 셀렉
		
		
		//System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationListSeoul(addp);
		close(con);
		return articleList;
		
	}
	
	public ArrayList<Janso_product_registration> getArticleList2(String addp) throws Exception{ //지역별 셀렉
			
			
			//System.out.println(addp);
			ArrayList<Janso_product_registration> articleList = null;
			Connection con = getConnection();
			JansoDAO jansoDAO = JansoDAO.getInstance();
			jansoDAO.setConnection(con);
			articleList = jansoDAO.Janso_product_registrationList2(addp);
			close(con);
			return articleList;
			
		}
	
	public ArrayList<Janso_product_registration> getArticleList3(String addp) throws Exception{ //지역별 셀렉
		
		
		//System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList3(addp);
		close(con);
		return articleList;
		
	}
	
	public ArrayList<Janso_product_registration> getArticleList4(String addp,String addp2) throws Exception{ //지역별 셀렉
		
		
		//System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList4(addp,addp2);
		close(con);
		return articleList;
		
	}
	
	public ArrayList<Janso_product_registration> getArticleList5(String addp,String addp2) throws Exception{ //지역별 셀렉
		
		
		//System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList5(addp,addp2);
		close(con);
		return articleList;
		
	}
	//경상
	public ArrayList<Janso_product_registration> getArticleList6(String addp , String addp2 ) throws Exception{ //지역별 셀렉
		
		
		//System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList6(addp,addp2);
		close(con);
		return articleList;
		
	}
	//제주
	public ArrayList<Janso_product_registration> getArticleList7(String addp) throws Exception{ //지역별 셀렉
		
		
		//System.out.println(addp);
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList7(addp);
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

