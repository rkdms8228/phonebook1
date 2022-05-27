<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PhoneVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 값 꺼내기
	int personId = Integer.parseInt(request.getParameter("personId"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//PhoneVo 만들기
	PhoneVo phoneVo = new PhoneVo(personId, name, hp, company);
	
	//PhoneDao personUpdate()로 수정하기
	PhoneDao phoneDao = new PhoneDao();
	int count = phoneDao.personUpdate(phoneVo);
	System.out.println(count);
	
	response.sendRedirect("./list.jsp");
	
%>