package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.NoticedataType;

public class Noticedata {
	Connection conn = null;
	Statement stmt = null;
	
	public void connect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/learnup", "root", "1324");
		}catch(Exception e) {
			System.out.println(e+"오류입니다.");
		}
	}
	
	public void diconnect() {
		try {
			conn.close();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void datainsert(NoticedataType data) {
		try {
			connect();
			stmt = conn.createStatement();
			String recordadd = "insert into notice(title, text, nickname, file) "
					+ "values('"+data.getTitle()+"', '"+data.getText()+"', '"+data.getNickname()+"', '"+data.getFile()+"')";
			stmt.executeUpdate(recordadd);
		}catch(Exception e){
			System.out.println(e+"오류입니다.");
		}finally {
			try {
				diconnect();
			}catch(Exception e) {
			}
		}
	}
	public ArrayList<NoticedataType> mainselect() {
		ResultSet rs = null;
		ArrayList<NoticedataType> s = new ArrayList<NoticedataType>();
		NoticedataType data = null;
		try{
	   		connect();
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select @rownum:=@rownum+1 as 'number', noticenum, title, nickname, text, file, date_format(createdate, '%Y년 %m월 %d일') as 'date' from notice where (@rownum:=0)=0");
	   		while(rs.next())
	   		{
	   			data = new NoticedataType();
	   			data.setNoticenum(rs.getInt("noticenum"));
	   			data.setTitle(rs.getString("title"));
	   			data.setNickname(rs.getString("nickname"));
	   			data.setText(rs.getString("text"));
	   			data.setFile(rs.getString("file"));
	   			data.setCreatedate(rs.getString("date"));
	   			s.add(data);
	   		}
	    }catch(Exception e){
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		try{
	   			diconnect();
	   		}catch(Exception ignored){
	   		
	   		}
	   	}
		return s;
	}
	public ArrayList<NoticedataType> titleselect(String tt) {
		ResultSet rs = null;
		ArrayList<NoticedataType> s = new ArrayList<NoticedataType>();
		NoticedataType data = null;
		try{
	   		connect();
	   		if(conn==null)
	   		{
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		}
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select noticenum, title, nickname, text, date_format(createdate, '%Y년 %m월 %d일') as 'date' from notice where title like '%"+tt+"%'");
	   		while(rs.next())
	   		{
	   			data = new NoticedataType();
	   			data.setNoticenum(rs.getInt("noticenum"));
	   			data.setTitle(rs.getString("title"));
	   			data.setNickname(rs.getString("nickname"));
	   			data.setText(rs.getString("text"));
	   			data.setCreatedate(rs.getString("date"));
	   			s.add(data);
	   		}
	    }catch(Exception e){
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		try{
	   			diconnect();
	   		}catch(Exception ignored){
	   		
	   		}
	   	}
		return s;
	}
	
	public NoticedataType detailpageselect(String title) {
		ResultSet rs = null;
		NoticedataType data = new NoticedataType();
		try{
	   		connect();
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select @rownum:=@rownum+1 as 'num', noticenum, title, nickname, text, file, date_format(createdate, '%Y년 %m월 %d일 %T') as 'date' from learnup.notice where title='"+title+"' and (@rownum:=0)=0;");
	   		if(rs.next())
	   		{
	   			data.setNum(rs.getInt("num"));
	   			data.setNoticenum(rs.getInt("noticenum"));
	   			data.setTitle(rs.getString("title"));
	   			data.setNickname(rs.getString("nickname"));
	   			data.setText(rs.getString("text"));
	   			data.setFile(rs.getString("file"));
	   			data.setCreatedate(rs.getString("date"));
	   		}
	    }catch(Exception e){
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		try{
	   			diconnect();
	   		}catch(Exception ignored){
	   		
	   		}
	   	}
		return data;
	}
	public NoticedataType prevselect(String number) {
		ResultSet rs = null;
		NoticedataType data = new NoticedataType();
		try{
	   		connect();
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select noticenum, title, nickname, text, date_format(createdate, '%Y년 %m월 %d일 %T') as 'date' from learnup.notice where noticenum<"+number+" order by noticenum desc limit 1");
	   		if(rs.next())
	   		{
	   			data.setNoticenum(rs.getInt("noticenum"));
	   			data.setTitle(rs.getString("title"));
	   			data.setNickname(rs.getString("nickname"));
	   			data.setText(rs.getString("text"));
	   			data.setCreatedate(rs.getString("date"));
	   		}
	    }catch(Exception e){
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		try{
	   			diconnect();
	   		}catch(Exception ignored){
	   		
	   		}
	   	}
		return data;
	}
	public NoticedataType nextselect(String number) {
		ResultSet rs = null;
		NoticedataType data = new NoticedataType();
		try{
	   		connect();
	   		if(conn==null)
	   			throw new Exception("데이터베이스에 연결할 수 없습니다");
	   		stmt = conn.createStatement();
	   		rs = stmt.executeQuery("select noticenum, title, nickname, text, date_format(createdate, '%Y년 %m월 %d일 %T') as 'date' from learnup.notice where noticenum>"+number+" order by noticenum limit 1");
	   		if(rs.next())
	   		{
	   			data.setNoticenum(rs.getInt("noticenum"));
	   			data.setTitle(rs.getString("title"));
	   			data.setNickname(rs.getString("nickname"));
	   			data.setText(rs.getString("text"));
	   			data.setCreatedate(rs.getString("date"));
	   		}
	    }catch(Exception e){
	    	System.out.print("결과가 없습니다");
	   	}finally{
	   		try{
	   			diconnect();
	   		}catch(Exception ignored){
	   		
	   		}
	   	}
		return data;
	}
	public void delete(String no) {
		try{
			connect();
			stmt = conn.createStatement();

			String data = "delete from notice where noticenum = '"+ no +"'"; 
			stmt.executeUpdate(data);
		}catch(Exception e) {
			System.out.println(e+"오류입니다.");
		}finally {
			try {
				diconnect();
			}catch(Exception e){
			}
		}
	}
	public void update(NoticedataType no) {
		try{
			connect();
			stmt = conn.createStatement();

			String data = "update notice set title='"+no.getTitle()+"', text='"+no.getText()+"', file='"+no.getFile()+"' where noticenum="+no.getNoticenum()+""; 
			stmt.executeUpdate(data);
		}catch(Exception e) {
			System.out.println(e+"오류입니다.");
		}finally {
			try {
				diconnect();
			}catch(Exception e){
			}
		}
	}
}
