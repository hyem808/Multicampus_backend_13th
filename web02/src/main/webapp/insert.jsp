<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   	String id = request.getParameter("id");
   	String pw = request.getParameter("pw");
   	String name = request.getParameter("name");
   	String tel = request.getParameter("tel");

    //1. 드라이버 설정
   	Class.forName("com.mysql.cj.jdbc.Driver");
    //out.print("1. 드라이버 설정 성공");
    
    //2. db연결 - url(ip + port + db명), id, pw
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";
    
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    //out.print("2. db연결 성공");
    
    //3. sql문 생성
    String sql = "insert into member values (?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    ps.setString(2, pw);
    ps.setString(3, name);
    ps.setString(4, tel);
    
    //out.print("3. sql문 생성 성공");
    
    //4. sql문 전송 
    ps.executeUpdate();
    //out.print("4. sql문 전송 성공");
    	
    %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입성공</title>
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
	<h1>회원가입 정보</h1>
	<p>  : 가입한 회원정보를 확인하세요. </p>
</div>
<table class="table table-dark table-striped">
	<tr> <!-- 가로줄 -->
		<td>아이디</td> <!-- 셀 -->
		<td><%= id %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%= pw %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%= name %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%= tel %></td>
	</tr>
</table>
<hr>
	<a href="member.html">
		<button class="btn btn-outline-success">첫페이지로</button>
	</a>
<hr>
</body>
</html>