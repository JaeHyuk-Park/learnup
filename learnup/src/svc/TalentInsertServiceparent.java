package svc;

import java.sql.Connection;

import dao.TalentDAOparent;
import vo.TalentDataType;
import vo.TalentOptionDataType;
import vo.TalentQnaDataType;
import vo.TalentVersionDataType;
import vo.TalentVersionDataTypeparent;

import static db.JdbcUtil.*;
public class TalentInsertServiceparent {

	public boolean registArticle(TalentDataType talent, TalentOptionDataType option, TalentQnaDataType qna, TalentVersionDataTypeparent version) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		TalentDAOparent talentDAO = TalentDAOparent.getInstance();
		talentDAO.setConnection(con);
		int insertCount = talentDAO.insertArticle(talent);
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
