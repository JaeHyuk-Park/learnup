package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import vo.ActionForward;
import vo.TalentDataType;
import vo.TalentOptionDataType;
import vo.TalentQnaDataType;
import vo.TalentVersionDataType;


public class TalentInsertAction implements TalentAction {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		TalentDataType talent = null;
		TalentOptionDataType option = null;
		TalentQnaDataType qna = null;
		TalentVersionDataType version = null;
	
		String realFolder="";
		String saveFolder="/TalentUpload";
		ArrayList<String> list = new ArrayList<String>();
		ArrayList<String> title = new ArrayList<String>();
		ArrayList<String> descript = new ArrayList<String>();
		ArrayList<Integer> price = new ArrayList<Integer>();
		ArrayList<Integer> date = new ArrayList<Integer>();
		ArrayList<Integer> num = new ArrayList<Integer>();
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		talent = new TalentDataType();
		option = new TalentOptionDataType();
		qna = new TalentQnaDataType();
		version = new TalentVersionDataType();
		talent.setEmail(multi.getParameter("email"));
		talent.setTitle(multi.getParameter("servicetitle"));
		if(multi.getParameterValues("keyword[]") != null) {
			String keyword[] = multi.getParameterValues("keyword[]");
			for(String key : keyword) {
				list.add(key);
			}
			talent.setKeyword(list);
		}else {
			System.out.println("keyword 작성 안했더라쥬~");
		}
		if(multi.getParameterValues("vers_title[]") != null) {
			String vers_title[] = multi.getParameterValues("vers_title[]");
			String vers_descript[] = multi.getParameterValues("vers_descript[]");
			String vers_price[] = multi.getParameterValues("vers_price[]");
			String vers_date[] = multi.getParameterValues("vers_date[]");
			String recruit_num[] = multi.getParameterValues("recruit_num[]");
			for(int i=0; i<vers_title.length; i++) {
				title.add(vers_title[i]);
				descript.add(vers_descript[i]);
				price.add(Integer.parseInt(vers_price[i]));
				date.add(Integer.parseInt(vers_date[i]));
				num.add(Integer.parseInt(recruit_num[i]));
			}
			version.setVers_title(title);
			version.setVers_descript(descript);;
			version.setVers_price(price);
			version.setVers_date(date);
			version.setRecruit_num(num);
			System.out.println("버전 3개로 저장됨.");
		}else {
			version.setTitle(multi.getParameter("vers_title"));
			version.setDescript(multi.getParameter("vers_descript"));
			version.setPrice(Integer.parseInt(multi.getParameter("vers_price")));
			version.setDate(Integer.parseInt(multi.getParameter("vers_date")));
			version.setNum(Integer.parseInt(multi.getParameter("recruit_num")));
			System.out.println("스탠다드 버전으로 저장됨.");
		}
		if(multi.getParameterValues("op_title[]") != null) {
			op_title[] 있으면 넣음. null 가능 // 옵션 테이블
			op_descript[]
			op_price[]
			op_date[]
		}else {
			System.out.println("옵션 정보 없음.");
		}
		if(multi.getParameter("service_descript") != null) {
			talent.setService_descript(multi.getParameter("service_descript"));;
		}if(multi.getParameter("service_text") != null) {
			talent.setService_text(multi.getParameter("service_text"));
		}if(multi.getParameter("recruit") != null) {
			talent.setRecruit(multi.getParameter("recruit"));
		}
		
		if(multi.getParameterValues("qna_title[]") != null) {
			qna_title[] 있으면 넣음. null 가능 qna_answer[]이랑 묶음 // qna테이블
			qna_answer[]
		}else {
			System.out.println("qna 없음.");
		}
		
		image
		image[] 있으면 넣음. null 가능
		파일 저장하는거 까먹음. 한 번 확인해봐야됨.
		
		boardBean.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
		boardBean.setBOARD_SUBJECT(multi.getParameter("BOARD_SUBJECT"));
		boardBean.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));
		boardBean.setBOARD_FILE(
		multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
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
			forward.setPath("boardList.bo");
		}

		return forward;
		
	}

}