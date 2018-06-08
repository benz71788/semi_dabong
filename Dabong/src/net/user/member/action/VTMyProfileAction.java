package net.user.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.user.member.db.VTMemberDAO;
import net.user.member.db.VTMemberVO;

public class VTMyProfileAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		VTMemberDAO memberDAO = new VTMemberDAO();
		VTMemberVO memberVO = memberDAO.member_info(id);
		int age = memberDAO.userAge(id);
		
		forward.setPath("./user/profile/my_profile.jsp");
		forward.setRedirect(false);
		request.setAttribute("member", memberVO);
		request.setAttribute("userAge", age);
		return forward;
	}

}
