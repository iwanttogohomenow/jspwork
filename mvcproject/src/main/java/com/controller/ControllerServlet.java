package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.LoginBean;


//@WebServlet(name = "myController", urlPatterns = { "/ControllerServlet" })
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
//	request객체 (post방식)
//	파라미터
//	id  = abc
//	passwd =  1111
//	submit을 누르면 action을 실행
	
//	컨트롤러
       
   

	//post방식으로 보내서 post 실행
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id"); //abc
		String password = request.getParameter("passwd"); //1111
		
		LoginBean bean = new LoginBean(); //model
		bean.setId(id);
		bean.setPassword(password);
		request.setAttribute("bean", bean);
		
		boolean status = bean.validate();
		
		if(status) {
			RequestDispatcher rd = request.getRequestDispatcher("/re/mvc_success.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/re/mvc_error.jsp");
			rd.forward(request, response);
		}
	}//sendRedirect로 보내면 끊어짐
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		doPost(req, res);
	}
}
