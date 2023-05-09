package action;

import java.io.File;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.Janso_rental_registrationService;
import vo.ActionForward;
import vo.Janso_rental_registration;

public class Janso_rental_registrationAction implements jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		Janso_rental_registration registration = null;
		
		String realFolder="";
		String saveFolder="/registrationUP";
		
		ServletContext context = request.getServletContext();
		String directory = context.getRealPath("/registrationUP"); 
		File dir = new File(directory);  //upload 폴더가 없는 경우 폴더를 만들어라
		if (!dir.exists()) dir.mkdirs();
		
		int fileSize=1024*1024*5;
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,"UTF-8",new DefaultFileRenamePolicy());
		
		registration = new Janso_rental_registration();
		
		registration.setEmail(multi.getParameter("email"));
		registration.setBusiness_name(multi.getParameter("liname"));
		registration.setBusiness_phonenumber(multi.getParameter("pnum"));
		registration.setBusiness_license(multi.getParameter("lincense"));
		registration.setFileName(multi.getFilesystemName("file1"));
		registration.setFileRealName(multi.getOriginalFileName("file1"));
		
	
		/*	
		System.out.println(registration.getEmail());
		System.out.println(registration.getBusiness_license());
		System.out.println(registration.getBusiness_name());
		System.out.println(registration.getBusiness_phonenumber());
		System.out.println(registration.getFileName());
		System.out.println(registration.getFileRealName());
		*/


		Janso_rental_registrationService janso_rental_registrationService = new Janso_rental_registrationService();
		boolean isWriteSuccess = janso_rental_registrationService.registArticle(registration);
		System.out.println(isWriteSuccess);
		
		
		if(!isWriteSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('fails')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("janso_regipage.learnup.com");
		}

		return forward;
		
	}  	

}
