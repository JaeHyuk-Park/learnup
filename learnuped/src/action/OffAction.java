package action;

import java.io.IOException;
import javax.servlet.http.*;

import vo.ActionForward;

public interface OffAction {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;

}
