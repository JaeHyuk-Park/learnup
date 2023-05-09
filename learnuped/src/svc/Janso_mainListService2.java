package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.JansoDAO;
import vo.Janso_product_registration;
import static db.JdbcUtil.*;


public class Janso_mainListService2 {
	

	public ArrayList<Janso_product_registration> getArticleList(String addp) throws Exception{
		
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList(addp);
		close(con);
		return articleList;
		
	}
}  	

