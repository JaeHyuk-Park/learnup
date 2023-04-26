package svc;

import java.sql.Connection;
import dao.TalentDAO;
import vo.TalentDataType;
import static db.JdbcUtil.*;

public class TalentDetailService {

	public TalentDataType getArticle(int product_num) throws Exception{

		TalentDataType article = null;
		Connection con = getConnection();
		TalentDAO talentDAO = TalentDAO.getInstance();
		talentDAO.setConnection(con);
//		int updateCount = talentDAO.updateReadCount(product_num);
//		
//		if(updateCount > 0){
//			commit(con);
//		}
//		else{
//			rollback(con);
//		}
		
		article = talentDAO.selectArticle(product_num);
		
		
		close(con);
		return article;
		
	}
	
}
