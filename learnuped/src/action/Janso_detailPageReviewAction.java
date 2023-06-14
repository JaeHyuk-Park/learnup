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
import vo.Janso_review;
import vo.ActionForward;
import vo.Janso_mypage_buy;


public class Janso_detailPageReviewAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		
		int roomnum = Integer.parseInt(request.getParameter("roomnssd")) ;
		
		
	
		
		
		
		
		
		
		
		
		
		
		ArrayList<Janso_review> reviewall=new ArrayList<Janso_review>();
		Janso_detailListService janso_detailListService = new Janso_detailListService();
		reviewall = janso_detailListService.getdetailReviewArticle(roomnum);
			
		double star = 0;
		double avgstar = 0;
		double size = reviewall.size();
		
		for(int i=0; i< reviewall.size(); i++)
		{
			
//			System.out.println(reviewall.get(i).getReview_Evaluation());
			star += reviewall.get(i).getReview_Evaluation();
		}
		
		if(size == 0.0)
		{
			size = 1;
		}
	
//		System.out.println(star);
//		System.out.println(size);
		
		
		
		avgstar = Double.parseDouble(String.format("%.2f", star / size));     
	

		//avgstar = star / size;
	
		
		request.setAttribute("reviewall", reviewall);
		request.setAttribute("avgstar", avgstar);
		
		ActionForward forward= new ActionForward();
   		forward.setPath("/janso_detailReview.jsp");
   		return forward;
   	
	 }
		
}  	


