
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PhoneVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.List"%>

<%
	//파라미터 꺼내기
	int personId = Integer.parseInt(request.getParameter("personId"));
	System.out.println(personId);
	
	//id 데이터 가져오기
	PhoneDao phoneDao = new PhoneDao();
	PhoneVo phoneVo = phoneDao.getPerson(personId);
	System.out.println(personId);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호부</h1>
	<h2>등록폼</h2>
	<p>
		정보를 수정하려면 <br>
		아래 항목을 변경하고 "수정" 버튼을 클릭하세요.
	</p>
	
	<form action="./insert.jsp" method="get">
		등록번호(personId) <input type="text" name="personId" value="<%=phoneVo.getPersonId()%>"> <br>
		이름(name) <input type="text" name="name" value="<%=phoneVo.getName()%>"> <br>
		핸드폰(hp) <input type="text" name="hp" value="<%=phoneVo.getHp()%>"> <br>
		회사번호(company) <input type="text" name="company" value="<%=phoneVo.getCompany()%>"> <br><br>
	
		<button type="submit">수정</button>
	</form>
	
</body>
</html>