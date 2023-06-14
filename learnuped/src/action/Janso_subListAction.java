package action;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import javax.servlet.ServletContext;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.Janso_ListService;
import svc.Janso_product_registrationService;
import vo.Janso_product_registration;
import vo.PageInfo;
import vo.PageSearch;
import vo.ActionForward;


public class Janso_subListAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ArrayList<Janso_product_registration> articleList=new ArrayList<Janso_product_registration>();
		ServletContext context = request.getServletContext();
		String directory = context.getRealPath("/jansoproduct"); 
	
		int page=1;
		int pageSize=9;
		

		String searchs = request.getParameter("searchs");
	
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		String[] keyword  = new String[8];
		keyword[0] = " ";
		keyword[1] = " ";
		keyword[2] = " ";
		keyword[3] = " "; 
		keyword[4] = " ";
		keyword[5] = " ";
		keyword[6] = " ";
		keyword[7] = " ";
		
		
		if(request.getParameter("keworld")!=null){
			keyword[0] = request.getParameter("keworld");
		}
		
		if(request.getParameter("keworld1")!=null){
			keyword[1] = request.getParameter("keworld1");
		}
		
		if(request.getParameter("keworld2")!=null){
			keyword[2] = request.getParameter("keworld2");
		}
		
		if(request.getParameter("keworld3")!=null){
			keyword[3] = request.getParameter("keworld3");
		}
		
		if(request.getParameter("keworld4")!=null){
			keyword[4] = request.getParameter("keworld4");
		}
		
		if(request.getParameter("keworld5")!=null){
			keyword[5] = request.getParameter("keworld5");
		}
		
		if(request.getParameter("keworld6")!=null){
			keyword[6] = request.getParameter("keworld6");
		}
		
		if(request.getParameter("keworld7")!=null){
			keyword[7] = request.getParameter("keworld7");
		}
		
		
		Janso_ListService janso_ListService = new Janso_ListService();
		int listCount = janso_ListService.getListCount();
		
		articleList = janso_ListService.getsubArticleList(searchs,page,pageSize,keyword);
		int maxPage=(int)((double)listCount/pageSize+0.95); 
   		//int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    int currentBlock = page % pageSize == 0 ? page / pageSize : (page / pageSize) + 1;
   	    int endPage =  currentBlock + pageSize - 1;
   	    
   	    if (endPage> maxPage) endPage= maxPage;
   	    
   	    PageSearch psearch = new PageSearch();
   	    psearch.setSearch(searchs);

		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(currentBlock);	
		
		request.setAttribute("directory", directory);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("search", psearch);
		request.setAttribute("articleList", articleList);
		
		ActionForward forward= new ActionForward();
   		forward.setPath("/janso_subpage.jsp");
   		return forward;
   		
   		
  	 
		
   		
	 }
		
}  	


