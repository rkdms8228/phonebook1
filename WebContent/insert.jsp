<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PhoneVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	//PhoneVo 메모리에 올린다.
	//생성자 name hp company
	//Dao.insert(phoneVo)
	
	//Person 객체 만들기
	PhoneVo phoneVo = new PhoneVo(name, hp, company);
	
	//PhoneDao 객체 만들기
	PhoneDao phoneDao = new PhoneDao();
	
	//PhoneDao의 personInsert()를 이용해서 저장하기
	int count = phoneDao.personInsert(phoneVo);
	System.out.println(count);
	
	////////////////////////////////////////////////////////////
	//리스트 가져와서 뿌리기
	////////////////////////////////////////////////////////////
	//List<PhoneVo> phoneList = phoneDao.personSelect();
	//System.out.println(phoneList);
	
	response.sendRedirect("./list.jsp");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	등록이 완료되었습니다.

</body>
</html>