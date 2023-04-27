package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.TalentDetailService;
import vo.ActionForward;
import vo.TalentDataType;

 public class TalentDetailAction implements TalentAction {
	 
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
	   	
		int product_num=Integer.parseInt(request.getParameter("product_num"));
		TalentDetailService talentDetailService = new TalentDetailService();
		TalentDataType article = talentDetailService.getArticle(product_num);
		ActionForward forward = new ActionForward();
		System.out.println("惑前锅龋 = " + product_num);
	   	request.setAttribute("article", article);
	   	System.out.println("惑前 力格 " + article.getTitle());
   		forward.setPath("/talent_detailview.jsp");
   		return forward;

	 }
	 
}