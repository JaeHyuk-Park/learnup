package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;

import dao.Off_DAO;
import vo.Off_total_ob;

public class OffTotalListService {
public ArrayList<Off_total_ob> selectTotal() throws Exception{
		
		ArrayList<Off_total_ob> totalList = null;
		Connection con = getConnection();
		Off_DAO off_dao = Off_DAO.getInstance();
		
		off_dao.setConnection(con);
		totalList = off_dao.selectTotal();
		
		System.out.println(totalList.size()+"dd");
		
		close(con);
		return totalList;
	}
	
}
