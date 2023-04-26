package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.TalentDetailService;
import vo.ActionForward;
import vo.TalentDataType;

 public class TalentDetailAction implements TalentAction {
	 
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 
	   	
		int product_num=Integer.parseInt(request.getParameter("product_num"));
		String page = request.getParameter("page");
		TalentDetailService talentDetailService = new TalentDetailService();
		TalentDataType article = talentDetailService.getArticle(product_num);
		ActionForward forward = new ActionForward();
		request.setAttribute("page", page);
	   	request.setAttribute("article", article);
   		forward.setPath("/qna_board_view.jsp");
   		return forward;

	 }
	 
}