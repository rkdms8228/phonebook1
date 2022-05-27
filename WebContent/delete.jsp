<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PhoneVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 값 가져오기
	int personId = Integer.parseInt(request.getParameter("personId"));
	
	//PhoneDao 객체 만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personDelete()를 이용해서 삭제하기
	phoneDao.personDelete(personId);
	int count = phoneDao.personDelete(personId);
	System.out.println(count);
	
	response.sendRedirect("./list.jsp");
	
%>
