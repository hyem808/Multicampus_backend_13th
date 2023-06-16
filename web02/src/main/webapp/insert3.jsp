<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 	<%
 	String id = request.getParameter("id");
 	String name = request.getParameter("name");
 	String content = request.getParameter("content");
 	String price = request.getParameter("price");
 	String company = request.getParameter("company");
 	String img = request.getParameter("img");
 	
	Class.forName("com.mysql.cj.jdbc.Driver");
    //out객체: 내장된 객체, PrintWriter
    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";
    //2. db연결 - url(ip + port + db명), id, pw
    
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    
    //3. sql문 생성
    String sql = "insert into product values (?, ?, ?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    ps.setString(2, name);
    ps.setString(3, content);
    ps.setString(4, price);
    ps.setString(5, company);
    ps.setString(6, img);
    
    //4. sql문 전송 
    ps.executeUpdate();
    	 
 	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 추가</title>
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
<h1>추가된 상품 내용</h1>
<p>  : 추가한 상품에 대한 내용을 확인하세요 </p>
</div>
<hr>
<table class="table table-dark table-striped">
	<tr> <!-- 가로줄 -->
		<td>아이디</td> <!-- 셀 -->
		<td><%= id %></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><%= name %></td>
	</tr>
	<tr>
		<td>상세설명</td>
		<td><%= content %></td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><%= price %></td>
	</tr>
	<tr>
		<td>제조사</td>
		<td><%= company %></td>
	</tr>
	<tr>
		<td>이미지</td>
		<td><%= img %></td>
	</tr>
</table>

<hr>
	<a href="product.html">
		<button class="btn btn-outline-success">첫페이지로</button>
	</a>
<hr>
</body>
</html>