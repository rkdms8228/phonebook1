<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PhoneVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 값 가져오기
	int personId = Integer.parseInt(request.getParameter("personId"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//수정 값 받기
	PhoneVo phoneVo = new PhoneVo(personId, name, hp, company);
	
	//PhoneDao 객체 만들기
	PhoneDao phoneDao = new PhoneDao();
	
	response.sendRedirect("./list.jsp");
	
%>