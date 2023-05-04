package svc;

import java.sql.Connection;
import dao.JansoDAO;
import vo.Janso_product_registration;
import static db.JdbcUtil.*;


public class Janso_product_registrationService {
	
	public boolean registArticle(Janso_product_registration rental) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		int insertCount = jansoDAO.janso_product_registration(rental);
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

