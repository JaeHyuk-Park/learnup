package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.OffSellerRegiAction;
import action.OffAction;
import vo.ActionForward;


@WebServlet("*.off")
public class Off_FrontController extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null; // 데이터베이스 게터세터 클래스
		OffAction offregipageaction=null;

		if(command.equals("/offsellerregi.off")){
			forward=new ActionForward(); // 데이터베이스 게터세터 클래스
			forward.setPath("/off_seller_regipage.jsp");
		}else if(command.equals("/off_seller_regipage.off")){
			offregipageaction  = new OffSellerRegiAction();
			try {
				forward=offregipageaction.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
				
		if(forward != null){
			
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
	
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}  	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}   
	
}