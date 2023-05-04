package action;

<<<<<<< HEAD
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
=======
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

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
		
		ServletContext context = request.getServletContext();
		String directory = context.getRealPath("/offsellerup"); 
		File dir = new File(directory);  //upload 폴더가 없는 경우 폴더를 만들어라
		if (!dir.exists()) dir.mkdirs();
		
		int fileSize=10*1024*1024;
		
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		
		List<String> list = new ArrayList<String>();
		
		String a1 = multi.getFilesystemName("cert0");
		String a2 = multi.getFilesystemName("cert1");
		String a3 = multi.getFilesystemName("cert2");
		String a4 = multi.getFilesystemName("cert3");
		String a5 = multi.getFilesystemName("cert4");
		

		
		if(a1 != null)
		{
			list.add(a1);
			System.out.println(list.get(0));
		}
		if(a2 != null)
		{
			list.add(a2);
			System.out.println(list.get(1));
		}
		if(a3 != null)
		{
			list.add(a3);
			System.out.println(list.get(2));
		}
		if(a4 != null)
		{
			list.add(a4);
			System.out.println(list.get(3));
		}
		if(a5 != null)
		{
			list.add(a5);
			System.out.println(list.get(4));
		}
		
		

		
		
		String addCommaString = StringUtils.join(list, ",");
		
		offsellerregipageob = new OffSellerRegipageob();
		
		offsellerregipageob.setEmail(multi.getParameter("email"));
		offsellerregipageob.setOffseller_image(multi.getFilesystemName("profileimg"));
		offsellerregipageob.setOffseller_intro(multi.getParameter("offsellerintro"));
		offsellerregipageob.setOffseller_insta(multi.getParameter("offinsta"));
		offsellerregipageob.setOffseller_blog(multi.getParameter("offblog"));
		offsellerregipageob.setOffseller_youtube(multi.getParameter("offyoutube"));
		offsellerregipageob.setOffseller_history(multi.getParameter("offhistory"));
		offsellerregipageob.setOffseller_historyimage(addCommaString);
		
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
			forward.setPath("offclassregi.off");
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
		}

		return forward;
		
	}
}
