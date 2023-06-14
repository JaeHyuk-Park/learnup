package action;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.Janso_ListService;
import svc.Janso_detailListService;
import svc.Janso_product_registrationService;
import vo.Janso_product_registration;

import vo.ActionForward;
import vo.Janso_mypage_buy;


public class Janso_detailPageAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

//		Janso_mypage_buy  janso_mypage_buy= null;
		
		ArrayList<Janso_mypage_buy> articleList=new ArrayList<Janso_mypage_buy>();  //장소 구매 페이지
		Janso_product_registration article = new Janso_product_registration(); //장소 기본 설명 넘버당
		
		int nowpage=1;
		int room_number = 1;
		
		room_number = Integer.parseInt(request.getParameter("roomnumber"));
		
		
		if(request.getParameter("page")!=null){
			nowpage=Integer.parseInt(request.getParameter("page"));
		}
		
//		String datepicker1 = request.getParameter("datepicker1");
//		String datepicker2 = request.getParameter("datepicker2");
//		String timepicker = request.getParameter("timepicker");
//		String timez = request.getParameter("timez");
//		String person = request.getParameter("person");
//		String ppp = request.getParameter("ppp");
//		
//		String datepickerTo = datepicker1 +"," + datepicker2;
//		
//		System.out.println(datepicker1);
//		System.out.println(datepicker2);
//		System.out.println(timepicker);
//		System.out.println(timez);
//		System.out.println(person);
//		System.out.println(ppp + "총가격");
		

		
	
		
		Janso_detailListService janso_detailListService = new Janso_detailListService();
		article = janso_detailListService.getdetailArticle(room_number);
		
		Janso_detailListService janso_detailListService2 = new Janso_detailListService();
		articleList = janso_detailListService2.getdetailArticle2(room_number);
		
//		System.out.println(articleList.size());
		
//		Janso_detailListService janso_detailListService2 = new Janso_detailListService();
//	
//		janso_mypage_buy = new Janso_mypage_buy();
//		
//		janso_mypage_buy.setRoom_number(room_number);
//		janso_mypage_buy.setEmail(article.getEmail());
//		janso_mypage_buy.setMy_date(datepickerTo);
//		janso_mypage_buy.setMy_time(timepicker);
//		janso_mypage_buy.setMy_person(person);
//		janso_mypage_buy.setMy_sell(ppp);
		
//		janso_detailListService2.jansomyArticle(janso_mypage_buy);
		
		String Facility_categories = article.getFacility_categories();
		String address = article.getRoom_address();
		String addres = "";
		String[] Facility_categoriesArray = Facility_categories.split(",");
		String[] addressArray = address.split(",");
		
		addres = addressArray[1];

		
		List<String> Facility_categoriesArray2 = new ArrayList<>();
		
		
		for(String a : Facility_categoriesArray )
		{
			Facility_categoriesArray2.add(a);
		}
	

	
		
		
		
		request.setAttribute("nowpage", nowpage);
		request.setAttribute("article", article);
		request.setAttribute("articleList", articleList);
		request.setAttribute("Facility_categoriesArray", Facility_categoriesArray2); //카테고리 보내기
		request.setAttribute("addres", addres); //지도에 사용될 주소 보내기
		

		ActionForward forward= new ActionForward();
   		forward.setPath("/janso_detail.jsp");
   		return forward;
   		
   		
  	 
		
   		
	 }
		
}  	


