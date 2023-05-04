package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Janso_detailPageAction;
import action.Janso_mainListAction;
import action.Janso_product_registrationAction;
import action.Janso_rental_registrationAction;
import action.Janso_subListAction;
import action.jansoAction;
import vo.ActionForward;

@WebServlet("*.com")
public class JansoFrontController extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null; 
		jansoAction action=null;
		//장소메인페이지
		if(command.equals("/jangso.learnup.com")){
			action  = new Janso_mainListAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		//장소등록 전페이지
		else if(command.equals("/registerExpert.learnup.com"))
		{
			forward= new ActionForward(); 
			forward.setPath("/registerExpert.jsp");
		}
		//장소 대여자 등록 페이지 인설트
		else if(command.equals("/jangso_Register.learnup.com"))
		{
			forward= new ActionForward(); 
			forward.setPath("/janso_Register.jsp");
		}
		
		//장소 대여자 등록완료
		else if(command.equals("/jangso_Registerinsert.learnup.com"))
		{
			action  = new Janso_rental_registrationAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//장소 상품등록페이지
		else if(command.equals("/janso_regipage.learnup.com"))
		{
			forward= new ActionForward(); 
			forward.setPath("/janso_regipage.jsp");
		}
		
		//장소 상품 등록 완료
		else if(command.equals("/janso_regipageinsert.learnup.com"))
		{
			action  = new Janso_product_registrationAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//장소 서브페이지
		else if(command.equals("/janso_subpage.learnup.com"))
		{
			action  = new Janso_subListAction();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//장소 디테일 페이지
		else if(command.equals("/janso_detail.learnup.com"))
		{
			action  = new Janso_detailPageAction();
			try {
				forward=action.execute(request, response );
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