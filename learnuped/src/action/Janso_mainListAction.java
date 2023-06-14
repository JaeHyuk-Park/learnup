package action;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import com.google.gson.JsonObject;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.Janso_ListService;
import svc.Janso_product_registrationService;
import vo.Janso_product_registration;
import vo.ActionForward;


public class Janso_mainListAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		ArrayList<Janso_product_registration> articleListall=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList2=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList3=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList4=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList5=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList6=new ArrayList<Janso_product_registration>();
		ArrayList<Janso_product_registration> articleList7=new ArrayList<Janso_product_registration>();
		
	
	
		Janso_ListService janso_mainListService = new Janso_ListService();
		
		articleList = janso_mainListService.getArticleList("서울");
		articleList2 = janso_mainListService.getArticleList2("경기");
		articleList3 = janso_mainListService.getArticleList3("강원");
		articleList4 = janso_mainListService.getArticleList4("충남","충북");
		articleList5 = janso_mainListService.getArticleList5("전남","전북");
		articleList6 = janso_mainListService.getArticleList6("경남","경북");
		articleList7 = janso_mainListService.getArticleList7("제주");
		articleListall = janso_mainListService.getArticleListall();
		
		ServletContext context = request.getServletContext();
		String directory = context.getRealPath("/jansoproduct"); 
		request.setAttribute("directory", directory);
			
		
		
		request.setAttribute("articleList", articleList);
		request.setAttribute("articleList2", articleList2);
		request.setAttribute("articleList3", articleList3);
		request.setAttribute("articleList4", articleList4);
		request.setAttribute("articleList5", articleList5);
		request.setAttribute("articleList6", articleList6);
		request.setAttribute("articleList7", articleList7);
		request.setAttribute("articleListall", articleListall);
		ActionForward forward= new ActionForward();
   		forward.setPath("janso_main.jsp");
   		return forward;
   		
	 }
		
}  	


