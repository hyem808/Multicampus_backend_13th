<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%
 	String no = request.getParameter("no");
 	String title = request.getParameter("title");
 	String content = request.getParameter("content");
 	String writer = request.getParameter("writer");
 	
	Class.forName("com.mysql.cj.jdbc.Driver");
    //out객체: 내장된 객체, PrintWriter
    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";
    //2. db연결 - url(ip + port + db명), id, pw
    
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    
    //3. sql문 생성
    String sql = "insert into bbs values (?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setInt(1, Integer.parseInt(no));
    ps.setString(2, title);
    ps.setString(3, content);
    ps.setString(4, writer);
    
    //4. sql문 전송 
    ps.executeUpdate();
    	 
 	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록 성공</title>
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
	<h1>등록 게시글 정보</h1>
	<p>  : 등록한 게시글 정보를 확인하세요. </p>
</div>
<table class="table table-dark table-striped">
	<tr> <!-- 가로줄 -->
		<td>게시글 번호</td> <!-- 셀 -->
		<td><%= no %></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><%= title %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%= content %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%= writer %></td>
	</tr>
</table>
<hr>
	<a href="bbs.html">
		<button class="btn btn-outline-success">첫페이지로</button>
	</a>
<hr>
</body>
</html>