package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.TalentDAO;
import vo.TalentBuyDataType;

public class TalentBuyInsertService {

	public boolean registArticle(TalentBuyDataType buy) {
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		TalentDAO talentDAO = TalentDAO.getInstance();
		talentDAO.setConnection(con);
		int insertCount = talentDAO.buyinsertArticle(buy);
		
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
