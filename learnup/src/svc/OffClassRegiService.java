package svc;

import dao.Off_DAO;
import vo.OffClassRegipageob;

import java.sql.Connection;

import static db.JdbcUtil.*;
public class OffClassRegiService {
	
	public boolean registArticle(OffClassRegipageob offclassregipageob) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		Off_DAO off_DAO = Off_DAO.getInstance();
		off_DAO.setConnection(con);
		
		int insertCount = off_DAO.insertclassinfo(offclassregipageob);
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
