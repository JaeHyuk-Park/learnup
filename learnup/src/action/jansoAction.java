package action;

import javax.servlet.http.*;
import vo.ActionForward;;

public interface jansoAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
	
}
