package svc;

import java.io.IOException;
import dao.Off_DAO;
import vo.OffSellerRegipageob;
import java.sql.Connection;

import static db.JdbcUtil.*;
public class OffSellerRegiService {
	
	public boolean registArticle(OffSellerRegipageob offsellerregipageob) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		Off_DAO off_DAO = Off_DAO.getInstance();
		off_DAO.setConnection(con);
		
		int insertCount = off_DAO.insertsellerinfo(offsellerregipageob);
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
