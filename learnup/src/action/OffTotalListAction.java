package action;

import vo.ActionForward;
import vo.Off_total_ob;

import java.util.*;

import javax.mail.Session;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.OffTotalListService;

public class OffTotalListAction implements OffAction {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
			ArrayList<Off_total_ob> totalList=new ArrayList<Off_total_ob>();
		  							
			OffTotalListService offTotalListService = new OffTotalListService();
	
			totalList=offTotalListService.selectTotal();
	
			
			ServletContext context = request.getServletContext();
			String directory = context.getRealPath("/offclassup");
			System.out.println("asdasdasdasda");		
			System.out.println(totalList.size());
		//	System.out.println(totalList.get(0).getOffseller_intro());
			request.setAttribute("totalList", totalList);
			ActionForward forward= new ActionForward();
	   		forward.setPath("/off_mainpage.jsp");
	   		
	   		return forward;
	 }
	 
}
