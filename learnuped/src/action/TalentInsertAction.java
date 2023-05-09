package action;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.TalentInsertService;
import vo.ActionForward;
import vo.TalentDataType;
import vo.TalentVersionDataType;

public class TalentInsertAction implements TalentAction {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		TalentDataType talent = null;
		TalentVersionDataType version = null;
	
		String keyword[] = new String[5];
		
		String realFolder="";
		String saveFolder="/TalentUpload";
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);
		File dir = new File(realFolder);  //upload 폴더가 없는 경우 폴더를 만들어라
	      if (!dir.exists()) dir.mkdirs();
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		talent = new TalentDataType();
		version = new TalentVersionDataType();
		
		
		talent.setEmail(multi.getParameter("email"));
		System.out.println("이메일 : " + multi.getParameter("email"));
		talent.setTitle(multi.getParameter("servicetitle"));
		talent.setCategory(Integer.parseInt(multi.getParameter("category")));
		if(multi.getParameter("keyword1") != null) {
			keyword[0] = multi.getParameter("keyword1");
			System.out.println(keyword[0]);
		}if(multi.getParameter("keyword2") != null){
			keyword[1] = multi.getParameter("keyword2");
			System.out.println(keyword[1]);
		}if(multi.getParameter("keyword3") != null){
			keyword[2] = multi.getParameter("keyword3");
			System.out.println(keyword[2]);
		}if(multi.getParameter("keyword4") != null){
			keyword[3] = multi.getParameter("keyword4");
			System.out.println(keyword[3]);
		}if(multi.getParameter("keyword5") != null){
			keyword[4] = multi.getParameter("keyword5");
			System.out.println(keyword[4]);
		}
		
		version.setTitle(multi.getParameter("vers_title"));
		version.setDescript(multi.getParameter("vers_descript"));
		version.setPrice(Integer.parseInt(multi.getParameter("vers_price")));
		version.setDate(Integer.parseInt(multi.getParameter("vers_date")));
		version.setNum(Integer.parseInt(multi.getParameter("recruit_num")));
		
		if(multi.getParameter("service_descript") != null) {
			talent.setService_descript(multi.getParameter("service_descript"));
			System.out.println("서비스설명 들어옴");
		}if(multi.getParameter("service_text") != null) {
			talent.setService_text(multi.getParameter("service_text"));
			System.out.println("서비스 텍스트 들어옴.");
		}if(multi.getParameter("recruit") != null) {
			talent.setRecruit(multi.getParameter("recruit"));
			System.out.println("리크릿");
		}
		
		if(multi.getFilesystemName("image") != null) {
			talent.setImage((String)multi.getFilesystemName("image"));
		}if(multi.getFilesystemName("image1") != null) {
			talent.setImage_1((String)multi.getFilesystemName("image1"));
		}if(multi.getFilesystemName("image2") != null) {
			talent.setImage_2((String)multi.getFilesystemName("image2"));
		}if(multi.getFilesystemName("image3") != null) {
			talent.setImage_3((String)multi.getFilesystemName("image3"));
		}if(multi.getFilesystemName("image4") != null) {
			talent.setImage_4((String)multi.getFilesystemName("image4"));
		}if(multi.getFilesystemName("image5") != null) {
			talent.setImage_5((String)multi.getFilesystemName("image5"));
		}if(multi.getFilesystemName("image6") != null) {
			talent.setImage_6((String)multi.getFilesystemName("image6"));
		}if(multi.getFilesystemName("image7") != null) {
			talent.setImage_7((String)multi.getFilesystemName("image7"));
		}if(multi.getFilesystemName("image8") != null) {
			talent.setImage_8((String)multi.getFilesystemName("image8"));
		}if(multi.getFilesystemName("image9") != null) {
			talent.setImage_9((String)multi.getFilesystemName("image9"));
		}
			
//		List<String> fileList = new ArrayList<>();
//		Enumeration files = multi.getFileNames();
//		
//		int a = 0;
//		while(files.hasMoreElements()) {
//			a++;
//			String filename = (String) files.nextElement();
//		    System.out.println(filename);
//		    System.out.println(a);
//		    fileList.add(multi.getOriginalFileName(filename));
//		}
//
//		for(String file : fileList) {
//		    System.out.println("파일 이름 : " + file);
//		}
//
//		int size = fileList.size();
//		for (int i = 0; i < size && i <= 9; i++) {
//		    String file = fileList.get(i);
//		    if (file != null) {
//		        switch (i) {
//		            case 0: talent.setImage(file); break;
//		            case 1: talent.setImage_1(file); break;
//		            case 2: talent.setImage_2(file); break;
//		            case 3: talent.setImage_3(file); break;
//		            case 4: talent.setImage_4(file); break;
//		            case 5: talent.setImage_5(file); break;
//		            case 6: talent.setImage_6(file); break;
//		            case 7: talent.setImage_7(file); break;
//		            case 8: talent.setImage_8(file); break;
//		            case 9: talent.setImage_9(file); break;
//		        }
//		    }
//		}
		
		TalentInsertService talentinsert = new TalentInsertService();
		boolean isInsertSuccess = talentinsert.registArticle(talent, version, keyword);
		System.out.println(isInsertSuccess);
		if(!isInsertSuccess){
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
			forward.setPath("TalentList.learn?category=1");
		}

		return forward;
		
	}

}