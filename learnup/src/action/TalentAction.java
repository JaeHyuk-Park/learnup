package action;

import javax.servlet.http.*;

import vo.NoticedataType;

public interface TalentAction {
	public NoticedataType execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
	// ���ͼ��� Ŭ���� execute ��
}
