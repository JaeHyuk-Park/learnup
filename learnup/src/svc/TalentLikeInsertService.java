package svc;

import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.TalentDAO;
import vo.TalentLikeDataType;

public class TalentLikeInsertService {

	public boolean registArticle(TalentLikeDataType like) {
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		TalentDAO talentDAO = TalentDAO.getInstance();
		talentDAO.setConnection(con);
		int insertCount = talentDAO.insertLike(like);
		
		if(insertCount > 0){
			commit(con);
			isWriteSuccess = true;
		}
		else{
			rollback(con);
		}
		
		return isWriteSuccess;
	}

}
