<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PhoneVo"%>

<%
	PhoneDao phoneDao = new PhoneDao();
	List<PhoneVo> phoneList = phoneDao.personSelect();

	System.out.println(phoneList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호부</h1>
	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	
	<%for(int i =0; i<phoneList.size(); i++) {%>
		<table border="1">
			<tr>
				<td>등록번호(personId)</td>
				<td>[ <%=phoneList.get(i).getPersonId()%>번 ]</td>
			</tr>
			<tr>
				<td>이름(name)</td>
				<td><%=phoneList.get(i).getName()%></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=phoneList.get(i).getHp()%></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=phoneList.get(i).getCompany()%></td>
			</tr>
			<tr>
				<td>
					<a href="./updateForm.jsp?personId=<%=phoneList.get(i).getPersonId()%>">[수정]</a>
				</td>
				
				<td>
					<a href="./delete.jsp?personId=<%=phoneList.get(i).getPersonId()%>">[삭제]</a>
				</td>
			</tr>
		</table>
		<br>
	<%}%>
	
	<a href="http://localhost:8088/phonebook1/writeForm.jsp" target="_blank">추가 번호 등록</a>
	<br><br><br>
	
</body>
</html>