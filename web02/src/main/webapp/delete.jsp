<%@page import="com.multi.mvc02.MemberDAO33"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//클라이언트가 입력한 No를 서버에서 받아주기(자바로!)
    	// Car car = new Car();
    	//HttpServletRequest request = new HttpServletRequest(); 
    	//car.run();
    	String id = request.getParameter("id"); //String, "100" 
    	//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수!
    	
    	//가방이 필요한가요?VO??? 가방X
    	MemberDAO33 dao = new MemberDAO33();
    	dao.delete(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 성공</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
	body {
		background: black;
	}
	
	td {
		width: 150px;
		text-align: center;
	}
</style>
</head>
<body>
<div class="container p-5 my-5 bg-dark text-white">
<h1>회원탈퇴가 성공적으로 처리되었습니다.</h1>
<p>  : 삭제된 회원의 아이디정보입니다. </p>
</div>
<hr>
<table class="table table-dark table-striped">
	<tr> <!-- 가로줄 -->
		<td>회원 아이디</td> <!-- 셀 -->
		<td><%= id %></td>
	</tr>


</table>

<hr>
	<a href="member.html">
		<button class="btn btn-outline-success">첫페이지로</button>
	</a>
<hr>
</body>
</html>