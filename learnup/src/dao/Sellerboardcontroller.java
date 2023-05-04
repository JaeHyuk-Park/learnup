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
	
	//////////////////////////////////////// ����̹� ������ ���� ������  (�����ڴ� �Ʒ� ����ϴ°����� ȣ���� �ʿ���� ��ü�� ����� �˾Ƽ� ����ȴ�)
	public Sellerboardcontroller(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////////////////// Ŀ�ؼ��� ���� �޼���
	void conn() {
						
   		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////////////////// �ݱ����� �޼���
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

	//////////////////////////////////////// ��� ����Ʈ
	public ArrayList<Sellerboardob> sellerselect(){      
		
			
		ArrayList<Sellerboardob> sellerlist = new ArrayList<Sellerboardob>();
			
		try{
	   		//Class.forName("com.mysql.jdbc.Driver");     ����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
	   		//conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/yu","root","1324");  ����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
			conn();   // �� ������ �޼ҵ带 �̷��� ����ϸ� �����ϴ�
	   		if(conn==null)
	   			throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select * from sellerboard;");
	   		
	   		while(rs.next())
	   		{
	   			Sellerboardob seller = new Sellerboardob();          // ��ü�� while�� �ȿ� �־���� �ݺ����̵��鼭 ��� ��ü�� ���Եȴ�.
	   			
	   			seller.setBoardnum(rs.getInt("boardnum"));
	   			seller.setEmail(rs.getString("email"));
	   			seller.setTitle(rs.getString("title"));
	   			seller.setNote(rs.getString("note"));
	   			seller.setDate(rs.getString("date"));
	   			
	   			sellerlist.add(seller);
	   		}
	    }catch(Exception e){
	    	System.out.print("����� �����ϴ�");
	   	}finally{
	   		disconn();
	   	}
		return sellerlist;   // ��ü�ȿ� �����ؼ� ����
	}
	
	//////////////////////////////////////// �Խ��� �������� ����Ʈ
	public Sellerboardob selectone(String boardnum) {
		
		Sellerboardob sellerone = new Sellerboardob();
		
		try{
	   		conn();   // �� ������ �޼ҵ带 �̷��� ����ϸ� �����ϴ�
	   		if(conn==null)
	   			throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�");
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
	    	System.out.print("����� �����ϴ�");
	   	}finally{
	   		disconn();
	   	}
		return sellerone;
	}
	
	//////////////////////////////////////// �Խ��Ǹ�� �˻� ����Ʈ
	public ArrayList<Sellerboardob> searchselect(String titlesearch) {
	
		ArrayList<Sellerboardob> sellersearchlist = new ArrayList<Sellerboardob>();
		
		
		try{
			conn();   // �� ������ �޼ҵ带 �̷��� ����ϸ� �����ϴ�
		if(conn==null)
			throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�");
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
			System.out.print("����� �����ϴ�");
		}finally{
			disconn();
		}
		return sellersearchlist;
	}
	
	//////////////////////////////////////// �Խ��� �� ����
	public void sellerdelete(String num){ 
		
		try{
	   		Class.forName("com.mysql.jdbc.Driver"); //����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
	   		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123"); //����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
			//conn();
	   		if(conn==null)
	   			throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�");
	   		stmt = conn.createStatement();
	   		String dele = "delete from sellerboard where boardnum='"+num+"';";
	   		stmt.executeUpdate(dele);
	   		
	    }catch(Exception e){

	   	}finally{
	   		disconn();
	   	}	
	}
	
	//////////////////////////////////////// �μ�Ʈ �޼���
	public void sellerinsert(String email, String title, String note){ 
		
	
		try{
			Class.forName("com.mysql.jdbc.Driver"); //����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123"); //����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
			//conn();
			if(conn==null)
				throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�");
			stmt = conn.createStatement();
			String insert = String.format("insert into sellerboard(email, title, note) values('%s', '%s', '%s')", email, title, note);
			stmt.executeUpdate(insert);
		
		}catch(Exception e){
			System.out.println(e+"�����Դϴ�.");
		}finally{
			disconn();
		}	
	}
	//////////////////////////////////////// ������Ʈ �޼���
	public void sellerupdate(String boardnum, String title, String note) {
		
		try{
			Class.forName("com.mysql.jdbc.Driver"); //����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup","root","tjdngur123"); //����Ʈ, ����Ʈ �޼ҵ忡 ���������� ���Ǳ⶧���� ���� ���� �޼ҵ带 �����Ѵ�
			//conn();
			if(conn==null)
	   			throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�");
	   		stmt = conn.createStatement();
	   		String renote = String.format("update sellerboard set note='%s', title='%s' where boardnum=%s;", note, title, boardnum);
	   		int rowNum = stmt.executeUpdate(renote);
	   		if(rowNum<1)
	   			throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
		}catch(Exception e){
			
	   	}finally{
	   		disconn();
	   	}
		
	}
}
