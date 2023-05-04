package action;

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

import svc.OffClassRegiService;
import vo.ActionForward;
import vo.OffClassRegipageob;


public class OffClassRegiAction implements OffAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		OffClassRegipageob offclassregipageob = null;
		String realFolder="";
		String saveFolder="/offclassup";
		
		ServletContext context = request.getServletContext();
		String directory = context.getRealPath("/offclassup"); 
<<<<<<< HEAD
		File dir = new File(directory);  //upload �뤃�뜑媛� �뾾�뒗 寃쎌슦 �뤃�뜑瑜� 留뚮뱾�뼱�씪
		if (!dir.exists()) dir.mkdirs();
		
		int fileSize=10*1024*1024;
		
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		
		String category = multi.getParameter("category1")+multi.getParameter("category2");
		
		int counts = 0;
		int countday = Integer.parseInt(multi.getParameter("count_type"));
		if(countday == 1)
		{
			counts = 1;
		}
		else if(countday == 0)
		{
			counts = Integer.parseInt(multi.getParameter("count_num"));
		}
		
		List<String> list = new ArrayList<String>();
		String[] tags = multi.getParameterValues("classTags[]");
		for( int i = 0; i < tags.length; i++ )
		{
			list.add(tags[i]);
		}
		
		String addCommaString = StringUtils.join(list, ",");
				
		offclassregipageob = new OffClassRegipageob();
		
		offclassregipageob.setEmail(multi.getParameter("email"));
		
		
		offclassregipageob.setOfflineclass_category(category);
		
		offclassregipageob.setEntry( Integer.parseInt( multi.getParameter("class_type")));  //
		
		System.out.println(Integer.parseInt( multi.getParameter("class_type")));
		
		offclassregipageob.setOffclass_count(counts);
		System.out.println(counts);
		
		offclassregipageob.setOffclass_title(multi.getParameter("classTitle"));
		
		offclassregipageob.setCover_image1(multi.getFilesystemName("coverimage0"));
		offclassregipageob.setCover_image2(multi.getFilesystemName("coverimage1"));
		offclassregipageob.setCover_image3(multi.getFilesystemName("coverimage2"));
		offclassregipageob.setCover_image4(multi.getFilesystemName("coverimage3"));
		offclassregipageob.setCover_image5(multi.getFilesystemName("coverimage4"));
		
		offclassregipageob.setOffseller_notice(multi.getParameter("notice"));
		offclassregipageob.setOffclass_exp1(multi.getParameter("exp1"));
		offclassregipageob.setOffclass_exp2(multi.getParameter("exp2"));
		offclassregipageob.setOffclass_exp3(multi.getParameter("exp3"));
		offclassregipageob.setOffclass_exp3_image1(multi.getFilesystemName("classintroimg"));
		
		offclassregipageob.setOffclass_notice(multi.getParameter("notice2"));
		
		offclassregipageob.setOffclass_exp4(multi.getParameter("exp4"));
		offclassregipageob.setOffclass_exp4_image1(multi.getFilesystemName("exp4file"));
		
		offclassregipageob.setOffclass_tag(addCommaString);
		
		offclassregipageob.setOffclass_url(multi.getParameter("video0"));
		
		offclassregipageob.setOffclass_message(multi.getParameter("mg"));
		offclassregipageob.setOffclass_price(Integer.parseInt(multi.getParameter("pp").replace(",", "")));
=======
		File dir = new File(directory);  //upload 폴더가 없는 경우 폴더를 만들어라
		if (!dir.exists()) dir.mkdirs();
		
		int fileSize=10*1024*1024;
		
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		
		String category = multi.getParameter("category1")+multi.getParameter("category2");
		
		int counts = 0;
		int countday = Integer.parseInt(multi.getParameter("count_type"));
		if(countday == 1)
		{
			counts = 1;
		}
		else if(countday == 0)
		{
			counts = Integer.parseInt(multi.getParameter("count_num"));
		}
		
		List<String> list = new ArrayList<String>();
		String[] tags = multi.getParameterValues("classTags[]");
		for( int i = 0; i < tags.length; i++ )
		{
			list.add(tags[i]);
		}
		
		String addCommaString = StringUtils.join(list, ",");
				
		offclassregipageob = new OffClassRegipageob();
		
		offclassregipageob.setEmail(multi.getParameter("email"));
		
		
		offclassregipageob.setOfflineclass_category(category);
		
		offclassregipageob.setEntry( Integer.parseInt( multi.getParameter("class_type")));  //
		
		System.out.println(Integer.parseInt( multi.getParameter("class_type")));
		
		offclassregipageob.setOffclass_count(counts);
		System.out.println(counts);
		
		offclassregipageob.setOffclass_title(multi.getParameter("classTitle"));
		
		offclassregipageob.setCover_image(multi.getFilesystemName("coverimage0"));
		
		offclassregipageob.setOffseller_notice(multi.getParameter("notice"));
		offclassregipageob.setOffclass_exp1(multi.getParameter("exp1"));
		offclassregipageob.setOffclass_exp2(multi.getParameter("exp2"));
		offclassregipageob.setOffclass_exp3(multi.getParameter("exp3"));
		offclassregipageob.setOffclass_exp3_image1(multi.getFilesystemName("classintroimg"));
		
		offclassregipageob.setOffclass_notice(multi.getParameter("notice2"));
		
		offclassregipageob.setOffclass_exp4(multi.getParameter("exp4"));
		offclassregipageob.setOffclass_exp4_image1(multi.getFilesystemName("exp4file"));
		
		offclassregipageob.setOffclass_tag(addCommaString);
		
		offclassregipageob.setOffclass_url(multi.getParameter("video0"));
		
		offclassregipageob.setOffclass_message(multi.getParameter("mg"));
		offclassregipageob.setOffclass_price(Integer.parseInt(multi.getParameter("pp")));
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
		offclassregipageob.setOffclass_time(Integer.parseInt(multi.getParameter("ppin")));
		
		
		OffClassRegiService offClassRegiService = new OffClassRegiService();
		boolean isWriteSuccess = offClassRegiService.registArticle(offclassregipageob);
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
			forward.setPath("index.jsp");
		}

		return forward;
		
	}
}
