package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import javax.sql.DataSource;
import vo.*;

public class JansoDAO {

	DataSource ds;
	Connection con;
	private static JansoDAO jansoDAO;

	private JansoDAO() {
	}

	public static JansoDAO getInstance(){
		if(jansoDAO == null){
			jansoDAO = new JansoDAO();
		}
		return jansoDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}
	
	
	public int selectListCount() {

		int listCount= 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			pstmt=con.prepareStatement("select count(*) from room_product_registration");
			rs = pstmt.executeQuery();

			if(rs.next()){
				listCount=rs.getInt(1);
			}
		}catch(Exception ex){

		}finally{
			close(rs);
			close(pstmt);
		}

		return listCount;

	}

	
	//장소 대여자 등록
	public int janso_rental_registration(Janso_rental_registration rental){
		
		//System.out.println(rental.getEmail());
		//System.out.println(rental.getFileName());
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int insertCount=0;
		int num =0;
		String SQL = "insert into room_business_registration values(?,?,?,?,?,?)";
		
		try{
			pstmt = con.prepareStatement(SQL);
	
			pstmt.setString(1, rental.getEmail());
			pstmt.setString(2, rental.getBusiness_name());
			pstmt.setString(3, rental.getBusiness_phonenumber());
			pstmt.setString(4, rental.getBusiness_license());
			pstmt.setString(5, rental.getFileName());
			pstmt.setString(6, rental.getFileRealName());
			insertCount = pstmt.executeUpdate();	
			
			return insertCount;
		}catch(Exception ex){
			System.out.println(ex+"인설트 안됨");
		}finally{
			close(pstmt);
		}

		return insertCount;

	}
	
	//장소 대여자 상품 등록
		public int janso_product_registration(Janso_product_registration rental){
			
			//System.out.println(rental.getEmail());
			//System.out.println(rental.getFileName());
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			int insertCount=0;
			int num =0;
			String SQL = "insert into room_product_registration(email,room_title,room_categories,room_area,facility_categories,room_address,reservationtime,max_personnel,open_time,close_time,holiday,room_price,personnel_price,room_introduction,room_precautions,main_img,sub_img1,sub_img2,sub_img3,sub_img4,min_personnel)"
					+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			
			try{
				pstmt = con.prepareStatement(SQL);
				pstmt.setString(1, rental.getEmail());
				pstmt.setString(2, rental.getRoom_title()); //방제목
				pstmt.setString(3, rental.getRoom_categories()); //방카테고리 설정
				pstmt.setString(4, rental.getRoom_area());   //방 면적
				pstmt.setString(5, rental.getFacility_categories());  //방에있는 기능 카테고리
				pstmt.setString(6, rental.getRoom_address()); //방 주소
			
				pstmt.setString(7, rental.getReservationtime()); //예약시간
				pstmt.setString(8, rental.getMax_personnel());  //최대인원
				pstmt.setString(9, rental.getOpen_time());    //문여는 시간
				pstmt.setString(10, rental.getClose_time()); //문닫는시간
				pstmt.setString(11, rental.getHoliday()); //휴무일
				pstmt.setString(12, rental.getRoom_price());  //비용
				pstmt.setString(13, rental.getPersonnel_price());  //인원당비용
				pstmt.setString(14, rental.getRoom_introduction()); //방소개
				pstmt.setString(15, rental.getRoom_precautions());
			
				pstmt.setString(16, rental.getMain_img());
				pstmt.setString(17, rental.getSub_img1());
				pstmt.setString(18, rental.getSub_img2());
				pstmt.setString(19, rental.getSub_img3());
				pstmt.setString(20, rental.getSub_img4());
				pstmt.setString(21, rental.getMin_personnel()); //최소인원
			
	
				insertCount = pstmt.executeUpdate();	
				
				return insertCount;
			}catch(Exception ex){
				System.out.println(ex+"인설트 안됨");
			}finally{
				close(pstmt);
			}

			return insertCount;

		}
		
		
		//장소 대여자 상품 셀렉 전채 셀렉
		public ArrayList<Janso_product_registration> Janso_product_registrationListall(){
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String board_list_sql="select * from room_product_registration";
			
			
			ArrayList<Janso_product_registration> articleList = new ArrayList<Janso_product_registration>();
			Janso_product_registration janso = null;
	

			try{
				pstmt = con.prepareStatement(board_list_sql);
				rs = pstmt.executeQuery();

				while(rs.next()){
					janso = new Janso_product_registration();
					
					janso.setEmail(rs.getString("email"));
					janso.setRoom_number(rs.getInt("room_number")); 
				
					janso.setRoom_title(rs.getString("room_title"));
					janso.setRoom_categories(rs.getString("room_categories"));
					janso.setRoom_area(rs.getString("room_area"));
					janso.setFacility_categories(rs.getString("facility_categories"));
					janso.setRoom_address(rs.getString("room_address"));
					janso.setReservationtime(rs.getString("reservationtime"));
					
					janso.setMin_personnel(rs.getString("min_personnel"));
					janso.setMax_personnel(rs.getString("max_personnel"));
					
					janso.setOpen_time(rs.getString("open_time"));
					janso.setClose_time(rs.getString("close_time"));
					
					janso.setHoliday(rs.getString("holiday"));
					
					janso.setRoom_price(rs.getString("room_price"));
					
					janso.setPersonnel_price(rs.getString("personnel_price"));
					janso.setRoom_introduction(rs.getString("room_introduction"));
					janso.setRoom_precautions(rs.getString("room_precautions"));
					
					janso.setMain_img(rs.getString("main_img"));
					janso.setSub_img1(rs.getString("sub_img1"));
					janso.setSub_img2(rs.getString("sub_img2"));
					janso.setSub_img3(rs.getString("sub_img3"));
					janso.setSub_img4(rs.getString("sub_img4"));


				
					articleList.add(janso);
				}

			}catch(Exception ex){
			}finally{
				close(rs);
				close(pstmt);
			}

			return articleList;

		}
		
		
		
		
		
		//장소 대여자 상품 셀렉 지역별 셀렉
		public ArrayList<Janso_product_registration> Janso_product_registrationList(String addp){
			
			System.out.println(addp+"dao임");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String board_list_sql="select * from room_product_registration where room_address like ? ";
			
			
			ArrayList<Janso_product_registration> articleList = new ArrayList<Janso_product_registration>();
			Janso_product_registration janso = null;
	

			try{
				pstmt = con.prepareStatement(board_list_sql);
				pstmt.setString(1, "%"+addp+"%"); //시작행-1 (시작 row 인덱스 번호)
				rs = pstmt.executeQuery();

				while(rs.next()){
					janso = new Janso_product_registration();
					
					janso.setEmail(rs.getString("email"));
					janso.setRoom_number(rs.getInt("room_number")); 
				
					janso.setRoom_title(rs.getString("room_title"));
					janso.setRoom_categories(rs.getString("room_categories"));
					janso.setRoom_area(rs.getString("room_area"));
					janso.setFacility_categories(rs.getString("facility_categories"));
					janso.setRoom_address(rs.getString("room_address"));
					janso.setReservationtime(rs.getString("reservationtime"));
					
					janso.setMin_personnel(rs.getString("min_personnel"));
					janso.setMax_personnel(rs.getString("max_personnel"));
					
					janso.setOpen_time(rs.getString("open_time"));
					janso.setClose_time(rs.getString("close_time"));
					
					janso.setHoliday(rs.getString("holiday"));
					
					janso.setRoom_price(rs.getString("room_price"));
					
					janso.setPersonnel_price(rs.getString("personnel_price"));
					janso.setRoom_introduction(rs.getString("room_introduction"));
					janso.setRoom_precautions(rs.getString("room_precautions"));
					
					janso.setMain_img(rs.getString("main_img"));
					janso.setSub_img1(rs.getString("sub_img1"));
					janso.setSub_img2(rs.getString("sub_img2"));
					janso.setSub_img3(rs.getString("sub_img3"));
					janso.setSub_img4(rs.getString("sub_img4"));


				
					articleList.add(janso);
				}

			}catch(Exception ex){
			}finally{
				close(rs);
				close(pstmt);
			}

			return articleList;

		}

		
		//장소대여자 상품셀렉 서브페이지
		//장소 대여자 상품 셀렉
				public ArrayList<Janso_product_registration> Janso_subpageList(String search, int startpage,int pageSize , String[]  keword){
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					ArrayList<Janso_product_registration> articleList = new ArrayList<Janso_product_registration>();
					Janso_product_registration janso = null;
					int startrow=(startpage-1)*9; 
					System.out.println(startrow);
					
					String	sql2 ="select * from room_product_registration where "
					+ "if( '"+search +"' != '' , room_title like'%"+search+"%',"
					+ " room_categories like '%"+keword[0]+"%' or room_categories like '%"+keword[1]+"%' or room_categories like '%"+keword[2]+"%' or room_categories like '%"+keword[3]+"%' or room_categories like '%"+keword[4]+"%' or room_categories like '%"+keword[5]+"%' or room_categories like '%"+keword[6]+"%' or room_categories like '%"+keword[7]+"%') "
					+ "and max_personnel between 0 and 999"
					+ " order by room_number ASC  limit "+startrow+", "+pageSize +" ";
					
					
					String sql="select * from room_product_registration  where room_title like ? and "
							+ "( room_categories like ? or room_categories like ? ) "
							+ "order by room_number ASC  limit ?,?";
					
					
					
				
					System.out.println(search +"스타트 페이지");
					for(int i = 0; i < keword.length; i++ )
					{
						System.out.println(keword[i]);
					}
					
					
					
				    try{
				    	
				    	Statement stmt = null;
				    	stmt = con.prepareStatement(sql2);
						//pstmt = con.prepareStatement(sql);
//					    pstmt.setString(1, "%"+search+"%"); //시작행-1 (시작 row 인덱스 번호)
//						pstmt.setString(2, "%"+keword[0]+"%"); // 키워드 검색
//						pstmt.setString(3, "%"+keword[1]+"%"); // 키워드 검색2
//						pstmt.setInt(4, startrow); //시작행-1 (시작 row 인덱스 번호)
//						pstmt.setInt(5, pageSize); // 페이지크기 (한번에 출력되는 수)
					
						//rs = pstmt.executeQuery();
						rs = stmt.executeQuery(sql2);

						while(rs.next()){
							janso = new Janso_product_registration();
							
							janso.setEmail(rs.getString("email"));
							janso.setRoom_number(rs.getInt("room_number")); 
						
							janso.setRoom_title(rs.getString("room_title"));
							janso.setRoom_categories(rs.getString("room_categories"));
							janso.setRoom_area(rs.getString("room_area"));
							janso.setFacility_categories(rs.getString("facility_categories"));
							janso.setRoom_address(rs.getString("room_address"));
							janso.setReservationtime(rs.getString("reservationtime"));
							
							janso.setMin_personnel(rs.getString("min_personnel"));
							janso.setMax_personnel(rs.getString("max_personnel"));
							
							janso.setOpen_time(rs.getString("open_time"));
							janso.setClose_time(rs.getString("close_time"));
							
							janso.setHoliday(rs.getString("holiday"));
							
							janso.setRoom_price(rs.getString("room_price"));
							
							janso.setPersonnel_price(rs.getString("personnel_price"));
							janso.setRoom_introduction(rs.getString("room_introduction"));
							janso.setRoom_precautions(rs.getString("room_precautions"));
							
							janso.setMain_img(rs.getString("main_img"));
							janso.setSub_img1(rs.getString("sub_img1"));
							janso.setSub_img2(rs.getString("sub_img2"));
							janso.setSub_img3(rs.getString("sub_img3"));
							janso.setSub_img4(rs.getString("sub_img4"));


							articleList.add(janso);
						}

					}catch(Exception ex){
					}finally{
						close(rs);
						close(pstmt);
					}
				   

					return articleList;

				}
				
				
				
				public Janso_product_registration Janso_detailList(int room){ //디테일페이지
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
				
					
					String sql="select * from room_product_registration where room_number = ?";
			
					Janso_product_registration janso = null;

					//System.out.println(startrow +"스타트 페이지");
					//System.out.println(search +"스타트 페이지");
					
				    try{
						pstmt = con.prepareStatement(sql);
					    pstmt.setInt(1, room);

						rs = pstmt.executeQuery();

						if(rs.next()){
							janso = new Janso_product_registration();
							
							janso.setEmail(rs.getString("email"));
							janso.setRoom_number(rs.getInt("room_number")); 
						
							janso.setRoom_title(rs.getString("room_title"));
							janso.setRoom_categories(rs.getString("room_categories"));
							janso.setRoom_area(rs.getString("room_area"));
							janso.setFacility_categories(rs.getString("facility_categories"));
							janso.setRoom_address(rs.getString("room_address"));
							janso.setReservationtime(rs.getString("reservationtime"));
							
							janso.setMin_personnel(rs.getString("min_personnel"));
							janso.setMax_personnel(rs.getString("max_personnel"));
							
							janso.setOpen_time(rs.getString("open_time"));
							janso.setClose_time(rs.getString("close_time"));
							
							janso.setHoliday(rs.getString("holiday"));
							
							janso.setRoom_price(rs.getString("room_price"));
							
							janso.setPersonnel_price(rs.getString("personnel_price"));
							janso.setRoom_introduction(rs.getString("room_introduction"));
							janso.setRoom_precautions(rs.getString("room_precautions"));
							
							janso.setMain_img(rs.getString("main_img"));
							janso.setSub_img1(rs.getString("sub_img1"));
							janso.setSub_img2(rs.getString("sub_img2"));
							janso.setSub_img3(rs.getString("sub_img3"));
							janso.setSub_img4(rs.getString("sub_img4"));


						}

					}catch(Exception ex){
					}finally{
						close(rs);
						close(pstmt);
					}
				   

					return janso;

				}
				
				
				
}
