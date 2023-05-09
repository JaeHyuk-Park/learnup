package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.TalentLikeInsertService;
import vo.ActionForward;
import vo.TalentLikeDataType;

public class TalentLikeInsertAction implements TalentAction {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		 ActionForward forward = null;
		 TalentLikeDataType like = new TalentLikeDataType();
		 if(!request.getParameter("email").equals("null")) {
			 like.setEmail(request.getParameter("email"));
		 }
		 like.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
		 
		 TalentLikeInsertService insert = new TalentLikeInsertService();
		 boolean isInsert = insert.registArticle(like);
		 System.out.println(isInsert);
		 
		 if(!isInsert && request.getParameter("email").equals("null")){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인 후 가능합니다.')");
			out.println("history.back();");
			out.println("</script>");
		}else {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(request.getHeader("referer"));
		}
		 
		 return forward;
	 }

}
