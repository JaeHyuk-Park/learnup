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


public class Janso_detailPageinsertAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		Janso_mypage_buy  janso_mypage_buy= null;
		
		
		Janso_product_registration article = new Janso_product_registration();
		
		int room_number = 1;
		room_number = Integer.parseInt(request.getParameter("roomnumber"));
	
		String datepicker1 = request.getParameter("datepicker1");
		//String datepicker2 = request.getParameter("datepicker2");
		String timepicker = request.getParameter("timepicker");
		//String timez = request.getParameter("timez");
		String person = request.getParameter("person");
		String ppp = request.getParameter("ppp");
		
		//String datepickerTo = datepicker1 +"," + datepicker2;
		
		Janso_detailListService janso_detailListService = new Janso_detailListService();
		article = janso_detailListService.getdetailArticle(room_number);
		
		
		janso_mypage_buy = new Janso_mypage_buy();
		janso_mypage_buy.setRoom_number(room_number);
		janso_mypage_buy.setEmail(article.getEmail());
		janso_mypage_buy.setMy_date(datepicker1);
		janso_mypage_buy.setMy_time(timepicker);
		janso_mypage_buy.setMy_person(person);
		janso_mypage_buy.setMy_sell(ppp);
		
		
		System.out.println(datepicker1);
		//System.out.println(datepicker2);
		System.out.println(timepicker);
		System.out.println(person);
		System.out.println(ppp + "총가격");
		
		
		
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
		
		Janso_detailListService janso_detailListService2 = new Janso_detailListService();
		boolean isWriteSuccess = janso_detailListService2.jansomyArticle(janso_mypage_buy);
		System.out.println(isWriteSuccess);
	
		if(!isWriteSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('fails')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("janso_detail.learnup.com?roomnumber="+room_number);
		}
//		forward= new ActionForward();
//   		forward.setPath("/janso_detail.learnup.com");
//   		return forward;
//   		
		return forward;
   		
  	 
		
   		
	 }
		
}  	


