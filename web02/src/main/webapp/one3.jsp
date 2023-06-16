<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
     <%
    String id = request.getParameter("id");
    	
    //1. 드라이버 설정
   	Class.forName("com.mysql.cj.jdbc.Driver");
    //out.print("1. 드라이버 설정 성공<br>");
    
    //2. db연결 - url(ip + port + db명), id, pw    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";
    
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    //out.print("2. db연결 성공<br>");
    
    //3. sql문 생성
    String sql = "select * from product where id = ?"; 
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    
    //out.print("3. sql문 생성 성공<br>");
    
    //4. sql문 전송 

    ResultSet table = ps.executeQuery(); //db로 부터 받은 table을 서버의 ram에 저장해두자.!
    //out.print("4. sql문 전송 성공<br><br>");
    String id2 ="";
    String name ="";
    String content ="";
    String price ="";
    String company ="";
    String img ="";
    if(table.next()){
    	id2 = table.getString(1);  
    	name = table.getString(2); 
    	content = table.getString(3); 
    	price = table.getString(4); 
    	company = table.getString(5);
    	img = table.getString(6); 
    }
     %>
 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 검색 페이지</title>
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
<h1>검색 결과</h1>
<p>  : 검색한 상품 아이디에 대한 모든 칼럼을 제공합니다. </p>
</div>
<hr>
<table class="table table-dark table-striped">
	<tr> <!-- 가로줄 -->
		<td>아이디</td> <!-- 셀 -->
		<td><%= id2 %></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><%= name %></td>
	</tr>
	<tr>
		<td>상세정보</td>
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
		<td>상품이미지</td>
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