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
	
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		System.out.println(page);
		
		String searchs = request.getParameter("searchs");

		Janso_ListService janso_ListService = new Janso_ListService();
		int listCount = janso_ListService.getListCount();
		
		articleList = janso_ListService.getsubArticleList(searchs,page,pageSize);
		System.out.println(articleList.size()+"사이즈");
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


