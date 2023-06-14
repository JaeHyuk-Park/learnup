package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import vo.Login_chk;


public class Login_cont {
	
	Connection conn=null;
	Statement stmt=null;
	
	
	public Login_chk Login (String email) {
		Login_chk chk = new Login_chk();
		//�깉濡쒖슫 硫붿냼�뱶 �븞�뿉 insert, select, delete 援щЦ�뿉 �븘�슂�븳 肄붾뱶瑜� �엯�젰�븯�뿬 硫붿냼�뱶 �샇異쒖쓣 �넻�빐 怨듯넻�쟻�쑝濡� �궗�슜 媛��뒫�븿
		//connection, statement, DriverManager.getConnection �쓣 �깮�꽦�옄濡� 遺꾨━�븯�뿬 �샇異�
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://43.200.5.207:3306/learnup", "service", "qkrwogur1021");
			if(conn==null)
				throw new Exception("�뜲�씠�꽣踰좎씠�뒪�뿉 �뿰寃고븷 �닔 �뾾�뒿�땲�떎.");
			stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from information where email='"+email+"';");
			if(rs.next()) {
				chk.setEmail(rs.getString("email"));
				chk.setPassword(rs.getString("password"));
				chk.setNickname(rs.getString("nickname"));
			}	
		} catch (Exception e) {			
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
			} catch (Exception ignored) {
			}
			try {
				conn.close();
			} catch (Exception ignored) {
			}
		}
		return chk; 
	}	
}
