<<<<<<< HEAD
package svc;

import java.sql.Connection;
import dao.JansoDAO;
import vo.Janso_rental_registration;
import static db.JdbcUtil.*;


public class Janso_rental_registrationService {
	
	public boolean registArticle(Janso_rental_registration rental) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		int insertCount = jansoDAO.janso_rental_registration(rental);
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

=======
package svc;

import java.sql.Connection;
import dao.JansoDAO;
import vo.Janso_rental_registration;
import static db.JdbcUtil.*;


public class Janso_rental_registrationService {
	
	public boolean registArticle(Janso_rental_registration rental) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		JansoDAO jansoDAO = JansoDAO.getInstance();
		jansoDAO.setConnection(con);
		int insertCount = jansoDAO.janso_rental_registration(rental);
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

>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
