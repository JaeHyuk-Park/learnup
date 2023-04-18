package svc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.JansoDAO;
import vo.Janso_product_registration;
import static db.JdbcUtil.*;


public class Janso_mainListService {
	

	public ArrayList<Janso_product_registration> getArticleList() throws Exception{
		
		ArrayList<Janso_product_registration> articleList = null;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		articleList = jansoDAO.Janso_product_registrationList();
		close(con);
		return articleList;
		
	}
}  	

