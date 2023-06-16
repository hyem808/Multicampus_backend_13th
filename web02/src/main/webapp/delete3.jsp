<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.multi.mvc02.MemberDAO33"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	//1. 드라이버 설정
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
	String user = "root";
	String password = "mario";
	//2. db연결 - url(ip + port + db명), id, pw
	
	Connection con = DriverManager.getConnection(url, user, password); //Connection
	
	//3. sql문 생성	
	String sql = "delete from product where id = ?";

	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, id);
	//ps.setString(2, name);
	
	//4. sql문 전송 
	ps.executeUpdate();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제 완료</title>
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
<h1>선택한 상품이 성공적으로 삭제되었습니다.</h1>
<p>  : 삭제된 상품의 아이디입니다. </p>
</div>
<hr>
<table class="table table-dark table-striped">
	<tr> <!-- 가로줄 -->
		<td>상품아이디</td> <!-- 셀 -->
		<td><%= id %></td>
	</tr>


</table>

<hr>
	<a href="product.html">
		<button class="btn btn-outline-success">첫페이지로</button>
	</a>
<hr>
</body>
</html>