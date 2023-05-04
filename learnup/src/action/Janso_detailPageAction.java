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


public class Janso_detailPageAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		Janso_product_registration article = new Janso_product_registration();
		
		int nowpage=1;
		int room_number = 1;
		
		room_number = Integer.parseInt(request.getParameter("roomnumber"));
		
		
		if(request.getParameter("page")!=null){
			nowpage=Integer.parseInt(request.getParameter("page"));
		}
		String searchs = request.getParameter("searchs");
		
		
		Janso_detailListService janso_detailListService = new Janso_detailListService();
		article = janso_detailListService.getdetailArticle(room_number);
		

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
		request.setAttribute("searchs", searchs);
		request.setAttribute("article", article);
		request.setAttribute("Facility_categoriesArray", Facility_categoriesArray2); //카테고리 보내기
		request.setAttribute("addres", addres); //지도에 사용될 주소 보내기
		

		ActionForward forward= new ActionForward();
   		forward.setPath("/janso_detail.jsp");
   		return forward;
   		
   		
  	 
		
   		
	 }
		
}  	


