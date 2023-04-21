package svc;

import java.sql.Connection;

import dao.TalentDAO;
import vo.TalentDataType;
import vo.TalentVersionDataType;

import static db.JdbcUtil.*;
public class TalentInsertService {

	public boolean registArticle(TalentDataType talent, TalentVersionDataType version, String[] keyword) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		TalentDAO talentDAO = TalentDAO.getInstance();
		talentDAO.setConnection(con);
		int insertCount = talentDAO.insertArticle(talent, keyword);
		talentDAO.insertVersion(insertCount, version);
		
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
