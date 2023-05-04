package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.TalentBuyInsertService;
import vo.ActionForward;
import vo.TalentBuyDataType;

public class TalentBuyInsertAction implements TalentAction {
	
	HttpSession session;
	
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		TalentBuyDataType buy = new TalentBuyDataType();
		
		buy.setProduct_num(Integer.parseInt(request.getParameter("num")));
		buy.setEmail(request.getParameter("email"));
		buy.setOrder_money(Integer.parseInt(request.getParameter("price")));
		buy.setBuy_way("ĳ��");
		System.out.println("��ǰ��ȣ : " + Integer.parseInt(request.getParameter("num")));
		
		TalentBuyInsertService talentbuyinsert = new TalentBuyInsertService();
		boolean isInsertSuccess = talentbuyinsert.registArticle(buy);
		System.out.println(isInsertSuccess);
		if(request.getParameter("email") == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�α��� �� ���� �����մϴ�.')");
			out.println("history.back();");
			out.println("</script>");
		}
		else if(!isInsertSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('�α��� �� ���� �����մϴ�.')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���� �Ϸ�Ǿ����ϴ�.')");
			out.println("history.back();");
			out.println("</script>");
		}

		return forward;
		
	}

}