package controller;

import java.io.IOException;
import java.io.PrintWriter;
import vo.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.LoginService;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id"); //"admin"
		String passwd = request.getParameter("passwd");//"1234"
		LoginService loginService = new LoginService(); // loginMember 리턴
		Member loginMember = loginService.getLoginMember(id, passwd);

		
		if (loginMember != null) {
			HttpSession session = request.getSession(); //객체생성 처리
			session.setAttribute("id", id);
			response.sendRedirect("index.jsp");

		} else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>"); 
			out.println("alert('로그인실패')");
			out.println("history.back()"); //이전페이지로 돌아가기
			out.println("</script>");
		}
	}
}
