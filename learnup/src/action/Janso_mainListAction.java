package action;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
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
import svc.Janso_product_registrationService;
import vo.Janso_product_registration;
import vo.ActionForward;


public class Janso_mainListAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ArrayList<Janso_product_registration> articleList=new ArrayList<Janso_product_registration>();
	
		Janso_ListService janso_mainListService = new Janso_ListService();
		articleList = janso_mainListService.getArticleList();
		ServletContext context = request.getServletContext();
		String directory = context.getRealPath("/jansoproduct"); 
		System.out.println(directory);
   		
		request.setAttribute("directory", directory);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
   		forward.setPath("janso_main.jsp");
   		return forward;
   		
	 }
		
}  	


