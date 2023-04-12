package action;

import javax.servlet.http.*;

import vo.ActionForward;
import vo.TalentDataType;

public interface TalentAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
	// 게터세터 클래스 execute 문
}
