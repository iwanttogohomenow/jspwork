package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet(name = "now", urlPatterns = { "/NowPage" })
public class NowServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html; charset=utf-8");
	
	PrintWriter out = response.getWriter(); //브라우저에 써라
	out.println("<html>");
	out.println("<head><title>현재시간</title></head>");
	out.println("<boby>");
	out.println("현재 시간은");
	out.println(new Date()); //simpledateformat ?;;
	out.println("입니다.");
	out.println("</body></html>");
	}

}
