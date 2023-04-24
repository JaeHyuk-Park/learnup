package action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.TalentListService;
import vo.ActionForward;
import vo.TalentDataType;
import vo.TalentPageInfo;

 public class TalentListAction implements TalentAction {
	 
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
		ArrayList<TalentDataType> articleList=new ArrayList<TalentDataType>();
	  	int page=1;
		int limit=24;
		
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}

		System.out.println("액션 페이지 : "+page);
		TalentListService talentListService = new TalentListService();
		int listCount=talentListService.getListCount();
		articleList = talentListService.getArticleList(page,limit);
   		int maxPage=(int)((double)listCount/limit+0.95); 
   		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    int endPage = startPage+10-1;

   		if (endPage> maxPage) endPage= maxPage;

   		TalentPageInfo pageInfo = new TalentPageInfo();
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		System.out.println(endPage);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("articleList", articleList);
		ActionForward forward= new ActionForward();
   		forward.setPath("/talentindexpage.jsp");
   		return forward;
   		
	 }
	 
 }