package action;

import javax.servlet.http.*;

import vo.ActionForward;

public interface TalentAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
	// ���ͼ��� Ŭ���� execute ��
}
