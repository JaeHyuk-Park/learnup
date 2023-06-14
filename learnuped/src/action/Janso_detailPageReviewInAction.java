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


public class Janso_detailPageReviewInAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		Janso_review  janso_review= null;
		
		String nickname =  request.getParameter("nickname");
		int room_number =  Integer.parseInt(request.getParameter("room_number")) ;
		String write =  request.getParameter("writes");
		double rating  = 0.0;
		
		if(request.getParameter("rating") != null){
			rating = Double.parseDouble(request.getParameter("rating"));
		}
		
		
		System.out.println(nickname);
		System.out.println(room_number);
		System.out.println(write);
		System.out.println(rating);
		janso_review = new Janso_review(); 
		janso_review.setRoom_number(room_number);
		janso_review.setNickname(nickname);
		janso_review.setReview_write(write);
		janso_review.setReview_Evaluation(rating);
		
		Janso_detailListService janso_detailListService2 = new Janso_detailListService();
		boolean isWriteSuccess = janso_detailListService2.detailreviewinArticle(janso_review);
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
			//forward.setPath("janso_detailreview.learnup.com");
		}

		return forward;
   		
		
		
		
		

	 }
		
}  	


