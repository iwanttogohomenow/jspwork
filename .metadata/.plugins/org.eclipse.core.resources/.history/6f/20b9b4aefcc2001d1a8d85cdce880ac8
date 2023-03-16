package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet(name = "AServlet", urlPatterns = { "/Consver" })
public class Conservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append("실행됨:  ").append(request.getContextPath());
	} //get방식으로 보냈을 때 타는 메소드

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}  //post방식으로 보냈을 때 타는 메소드

}
