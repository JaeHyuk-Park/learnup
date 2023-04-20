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
	
	//////////////////////////////////////// 드라이버 연결을 위한 생성자  (생성자는 아래 사용하는곳에서 호출이 필요없고 객체만 만들면 알아서 실행된다)
	public Sellerboardcontroller(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////////////////// 커넥션을 위한 메서드
	void conn() {
						
   		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////////////////// 닫기위한 메서드
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

	//////////////////////////////////////// 모든 셀렉트
	public ArrayList<Sellerboardob> sellerselect(){      
		
			
		ArrayList<Sellerboardob> sellerlist = new ArrayList<Sellerboardob>();
			
		try{
	   		//Class.forName("com.mysql.jdbc.Driver");     셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
	   		//conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yu","root","1111");  셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
			conn();   // 위 생성된 메소드를 이렇게 사용하면 간편하다
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select * from sellerboard;");
	   		
	   		while(rs.next())
	   		{
	   			Sellerboardob seller = new Sellerboardob();          // 객체를 while문 안에 넣어줘야 반복문이돌면서 계속 객체에 들어가게된다.
	   			
	   			seller.setBoardnum(rs.getInt("boardnum"));
	   			seller.setEmail(rs.getString("email"));
	   			seller.setTitle(rs.getString("title"));
	   			seller.setNote(rs.getString("note"));
	   			seller.setDate(rs.getString("date"));
	   			
	   			sellerlist.add(seller);
	   		}
	    }catch(Exception e){
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		disconn();
	   	}
		return sellerlist;   // 객체안에 셋팅해서 리턴
	}
	
	//////////////////////////////////////// 게시판 상세페이지 셀렉트
	public Sellerboardob selectone(String boardnum) {
		
		Sellerboardob sellerone = new Sellerboardob();
		
		try{
	   		conn();   // 위 생성된 메소드를 이렇게 사용하면 간편하다
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
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
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		disconn();
	   	}
		return sellerone;
	}
	
	//////////////////////////////////////// 게시판목록 검색 셀렉트
	public ArrayList<Sellerboardob> searchselect(String titlesearch) {
	
		ArrayList<Sellerboardob> sellersearchlist = new ArrayList<Sellerboardob>();
		
		
		try{
			conn();   // 위 생성된 메소드를 이렇게 사용하면 간편하다
		if(conn==null)
			throw new Exception("데이터베이스에 연결할 수 없습니다");
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
			System.out.print("결과가 없습니다");
		}finally{
			disconn();
		}
		return sellersearchlist;
	}
	
	//////////////////////////////////////// 게시판 글 삭제
	public void sellerdelete(String num){ 
		
		try{
	   		Class.forName("com.mysql.jdbc.Driver"); //셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
	   		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324"); //셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
			//conn();
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		String dele = "delete from sellerboard where boardnum='"+num+"';";
	   		stmt.executeUpdate(dele);
	   		
	    }catch(Exception e){

	   	}finally{
	   		disconn();
	   	}	
	}
	
	//////////////////////////////////////// 인서트 메서드
	public void sellerinsert(String email, String title, String note){ 
		
	
		try{
			Class.forName("com.mysql.jdbc.Driver"); //셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324"); //셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
			//conn();
			if(conn==null)
				throw new Exception("데이터베이스에 연결할 수 없습니다");
			stmt = conn.createStatement();
			String insert = String.format("insert into sellerboard(email, title, note) values('%s', '%s', '%s')", email, title, note);
			stmt.executeUpdate(insert);
		
		}catch(Exception e){
			System.out.println(e+"오류입니다.");
		}finally{
			disconn();
		}	
	}
	//////////////////////////////////////// 업데이트 메서드
	public void sellerupdate(String boardnum, String title, String note) {
		
		try{
			Class.forName("com.mysql.jdbc.Driver"); //셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","1324"); //셀렉트, 딜리트 메소드에 공통적으로 사용되기때문에 위에 새로 메소드를 생성한다
			//conn();
			if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		String renote = String.format("update sellerboard set note='%s', title='%s' where boardnum=%s;", note, title, boardnum);
	   		int rowNum = stmt.executeUpdate(renote);
	   		if(rowNum<1)
	   			throw new Exception("데이터를 DB에 입력할 수 없습니다.");
		}catch(Exception e){
			
	   	}finally{
	   		disconn();
	   	}
		
	}
}
