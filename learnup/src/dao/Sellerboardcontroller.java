package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Sellerboardob;

public class Sellerboardcontroller {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	//////////////////////////////////////// ï¿½ï¿½ï¿½ï¿½Ì¹ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½  (ï¿½ï¿½ï¿½ï¿½ï¿½Ú´ï¿½ ï¿½Æ·ï¿½ ï¿½ï¿½ï¿½ï¿½Ï´Â°ï¿½ï¿½ï¿½ï¿½ï¿½ È£ï¿½ï¿½ï¿½ï¿½ ï¿½Ê¿ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã¼ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ë¾Æ¼ï¿½ ï¿½ï¿½ï¿½ï¿½È´ï¿½)
	public Sellerboardcontroller(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////////////////// Ä¿ï¿½Ø¼ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼ï¿½ï¿½ï¿½
	void conn() {
						
   		try {
<<<<<<< HEAD
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324");
=======
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123");
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////////////////// ï¿½Ý±ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼ï¿½ï¿½ï¿½
	void disconn() {
		
		try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//////////////////////////////////////// ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ®
	public ArrayList<Sellerboardob> sellerselect(){      
		
			
		ArrayList<Sellerboardob> sellerlist = new ArrayList<Sellerboardob>();
			
		try{
	   		//Class.forName("com.mysql.jdbc.Driver");     ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
	   		//conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yu","root","1324");  ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
			conn();   // ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½Ì·ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Ï¸ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½
	   		if(conn==null)
	   			throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Íºï¿½ï¿½Ì½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select * from sellerboard;");
	   		
	   		while(rs.next())
	   		{
	   			Sellerboardob seller = new Sellerboardob();          // ï¿½ï¿½Ã¼ï¿½ï¿½ whileï¿½ï¿½ ï¿½È¿ï¿½ ï¿½Ö¾ï¿½ï¿½ï¿½ï¿½ ï¿½Ýºï¿½ï¿½ï¿½ï¿½Ìµï¿½ï¿½é¼­ ï¿½ï¿½ï¿½ ï¿½ï¿½Ã¼ï¿½ï¿½ ï¿½ï¿½î°¡ï¿½ÔµÈ´ï¿½.
	   			
	   			seller.setBoardnum(rs.getInt("boardnum"));
	   			seller.setEmail(rs.getString("email"));
	   			seller.setTitle(rs.getString("title"));
	   			seller.setNote(rs.getString("note"));
	   			seller.setDate(rs.getString("date"));
	   			
	   			sellerlist.add(seller);
	   		}
	    }catch(Exception e){
	    	System.out.print("ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
	   	}finally{
	   		disconn();
	   	}
		return sellerlist;   // ï¿½ï¿½Ã¼ï¿½È¿ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ø¼ï¿½ ï¿½ï¿½ï¿½ï¿½
	}
	
	//////////////////////////////////////// ï¿½Ô½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Æ®
	public Sellerboardob selectone(String boardnum) {
		
		Sellerboardob sellerone = new Sellerboardob();
		
		try{
	   		conn();   // ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½Ì·ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Ï¸ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½
	   		if(conn==null)
	   			throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Íºï¿½ï¿½Ì½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select * from sellerboard where boardnum='"+boardnum+"';");
	   		
	   		if(rs.next()){
	   			sellerone.setBoardnum(rs.getInt("boardnum"));
	   			sellerone.setEmail(rs.getString("email"));
	   			sellerone.setTitle(rs.getString("title"));
	   			sellerone.setNote(rs.getString("note"));
	   			sellerone.setDate(rs.getString("date"));
	   		}
		}catch(Exception e){
	    	System.out.print("ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
	   	}finally{
	   		disconn();
	   	}
		return sellerone;
	}
	
	//////////////////////////////////////// ï¿½Ô½ï¿½ï¿½Ç¸ï¿½ï¿½ ï¿½Ë»ï¿½ ï¿½ï¿½ï¿½ï¿½Æ®
	public ArrayList<Sellerboardob> searchselect(String titlesearch) {
	
		ArrayList<Sellerboardob> sellersearchlist = new ArrayList<Sellerboardob>();
		
		
		try{
			conn();   // ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½Ì·ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Ï¸ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½
		if(conn==null)
			throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Íºï¿½ï¿½Ì½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from sellerboard where title like '%"+titlesearch+"%';");
		
		while(rs.next()){
			
			Sellerboardob searchlistob = new Sellerboardob();
			
			searchlistob.setBoardnum(rs.getInt("boardnum"));
			searchlistob.setEmail(rs.getString("email"));
			searchlistob.setTitle(rs.getString("title"));
			searchlistob.setNote(rs.getString("note"));
			searchlistob.setDate(rs.getString("date"));
			
			sellersearchlist.add(searchlistob);
			
		}
		}catch(Exception e){
			System.out.print("ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
		}finally{
			disconn();
		}
		return sellersearchlist;
	}
	
	//////////////////////////////////////// ï¿½Ô½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
	public void sellerdelete(String num){ 
		
		try{
<<<<<<< HEAD
	   		Class.forName("com.mysql.jdbc.Driver"); //¼¿·ºÆ®, µô¸®Æ® ¸Þ¼Òµå¿¡ °øÅëÀûÀ¸·Î »ç¿ëµÇ±â¶§¹®¿¡ À§¿¡ »õ·Î ¸Þ¼Òµå¸¦ »ý¼ºÇÑ´Ù
	   		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324"); //¼¿·ºÆ®, µô¸®Æ® ¸Þ¼Òµå¿¡ °øÅëÀûÀ¸·Î »ç¿ëµÇ±â¶§¹®¿¡ À§¿¡ »õ·Î ¸Þ¼Òµå¸¦ »ý¼ºÇÑ´Ù
=======
	   		Class.forName("com.mysql.jdbc.Driver"); //ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
	   		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123"); //ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
			//conn();
	   		if(conn==null)
	   			throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Íºï¿½ï¿½Ì½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
	   		stmt = conn.createStatement();
	   		String dele = "delete from sellerboard where boardnum='"+num+"';";
	   		stmt.executeUpdate(dele);
	   		
	    }catch(Exception e){

	   	}finally{
	   		disconn();
	   	}	
	}
	
	//////////////////////////////////////// ï¿½Î¼ï¿½Æ® ï¿½Þ¼ï¿½ï¿½ï¿½
	public void sellerinsert(String email, String title, String note){ 
		
	
		try{
<<<<<<< HEAD
			Class.forName("com.mysql.jdbc.Driver"); //¼¿·ºÆ®, µô¸®Æ® ¸Þ¼Òµå¿¡ °øÅëÀûÀ¸·Î »ç¿ëµÇ±â¶§¹®¿¡ À§¿¡ »õ·Î ¸Þ¼Òµå¸¦ »ý¼ºÇÑ´Ù
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324"); //¼¿·ºÆ®, µô¸®Æ® ¸Þ¼Òµå¿¡ °øÅëÀûÀ¸·Î »ç¿ëµÇ±â¶§¹®¿¡ À§¿¡ »õ·Î ¸Þ¼Òµå¸¦ »ý¼ºÇÑ´Ù
=======
			Class.forName("com.mysql.jdbc.Driver"); //ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123"); //ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
			//conn();
			if(conn==null)
				throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Íºï¿½ï¿½Ì½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
			stmt = conn.createStatement();
			String insert = String.format("insert into sellerboard(email, title, note) values('%s', '%s', '%s')", email, title, note);
			stmt.executeUpdate(insert);
		
		}catch(Exception e){
			System.out.println(e+"ï¿½ï¿½ï¿½ï¿½ï¿½Ô´Ï´ï¿½.");
		}finally{
			disconn();
		}	
	}
	//////////////////////////////////////// ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼ï¿½ï¿½ï¿½
	public void sellerupdate(String boardnum, String title, String note) {
		
		try{
<<<<<<< HEAD
			Class.forName("com.mysql.jdbc.Driver"); //¼¿·ºÆ®, µô¸®Æ® ¸Þ¼Òµå¿¡ °øÅëÀûÀ¸·Î »ç¿ëµÇ±â¶§¹®¿¡ À§¿¡ »õ·Î ¸Þ¼Òµå¸¦ »ý¼ºÇÑ´Ù
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324"); //¼¿·ºÆ®, µô¸®Æ® ¸Þ¼Òµå¿¡ °øÅëÀûÀ¸·Î »ç¿ëµÇ±â¶§¹®¿¡ À§¿¡ »õ·Î ¸Þ¼Òµå¸¦ »ý¼ºÇÑ´Ù
=======
			Class.forName("com.mysql.jdbc.Driver"); //ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123"); //ï¿½ï¿½ï¿½ï¿½Æ®, ï¿½ï¿½ï¿½ï¿½Æ® ï¿½Þ¼Òµå¿¡ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ç±â¶§ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½Þ¼Òµå¸¦ ï¿½ï¿½ï¿½ï¿½ï¿½Ñ´ï¿½
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
			//conn();
			if(conn==null)
	   			throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Íºï¿½ï¿½Ì½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½");
	   		stmt = conn.createStatement();
	   		String renote = String.format("update sellerboard set note='%s', title='%s' where boardnum=%s;", note, title, boardnum);
	   		int rowNum = stmt.executeUpdate(renote);
	   		if(rowNum<1)
	   			throw new Exception("ï¿½ï¿½ï¿½ï¿½ï¿½Í¸ï¿½ DBï¿½ï¿½ ï¿½Ô·ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Ï´ï¿½.");
		}catch(Exception e){
			
	   	}finally{
	   		disconn();
	   	}
		
	}
}
