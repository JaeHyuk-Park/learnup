package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.OffSellerRegiService;
import vo.ActionForward;
import vo.OffSellerRegipageob;

public class OffSellerRegiAction implements OffAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		OffSellerRegipageob offsellerregipageob = null;
		String realFolder="";
		String saveFolder="/offsellerup";
		int fileSize=10*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		String a = 	multi.getFilesystemName("cert0")+"," + multi.getFilesystemName("cert1");
		
		offsellerregipageob = new OffSellerRegipageob();
		
		offsellerregipageob.setEmail(multi.getParameter("email"));
		offsellerregipageob.setOffseller_image(multi.getOriginalFileName("profileimg"));
		offsellerregipageob.setOffseller_intro(multi.getParameter("offsellerintro"));
		offsellerregipageob.setOffseller_insta(multi.getParameter("offinsta"));
		offsellerregipageob.setOffseller_blog(multi.getParameter("offblog"));
		offsellerregipageob.setOffseller_youtube(multi.getParameter("offyoutube"));
		offsellerregipageob.setOffseller_history(multi.getParameter("offhistory"));
		offsellerregipageob.setOffseller_historyimage(a);
		
		OffSellerRegiService offSellerRegiService = new OffSellerRegiService();
		boolean isWriteSuccess = offSellerRegiService.registArticle(offsellerregipageob);
		System.out.println(isWriteSuccess);
		if(!isWriteSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("off_class_regipage.jsp");
		}

		return forward;
		
	}
}
