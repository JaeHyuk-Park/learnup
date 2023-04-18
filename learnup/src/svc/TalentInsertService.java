package svc;

import java.sql.Connection;

import dao.TalentDAO;
import vo.TalentDataType;
import vo.TalentImageDataType;
import vo.TalentOptionDataType;
import vo.TalentQnaDataType;
import vo.TalentVersionDataType;

import static db.JdbcUtil.*;
public class TalentInsertService {

	public boolean registArticle(TalentDataType talent, TalentOptionDataType option, TalentQnaDataType qna, TalentVersionDataType version) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		TalentDAO talentDAO = TalentDAO.getInstance();
		talentDAO.setConnection(con);
		int insertCount = talentDAO.insertArticle(talent);
		talentDAO.insertVersion(insertCount, version);
		if(option.getOp_title().get(0) != "") {
			talentDAO.insertoption(insertCount, option);
		}if(qna.getQna_title().get(0) != "") {
			talentDAO.insertqna(insertCount, qna);
		}
		
		
		
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
