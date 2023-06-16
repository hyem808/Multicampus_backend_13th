<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
     <%
    String id = request.getParameter("id"); //summer
    	//내장된 객체: request, response, session, application, model
    	

    //1. 드라이버 설정
   	Class.forName("com.mysql.cj.jdbc.Driver");
    out.print("1. 드라이버 설정 성공<br>");
    
    //2. db연결 - url(ip + port + db명), id, pw    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";
    
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    out.print("2. db연결 성공<br>");
    
    //3. sql문 생성
    String sql = "select * from member where id = ?"; 
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    
    out.print("3. sql문 생성 성공<br>");
    
    //4. sql문 전송 

    ResultSet table = ps.executeQuery(); //db로 부터 받은 table을 서버의 ram에 저장해두자.!
    out.print("4. sql문 전송 성공<br><br>");
    String id2 ="";
    String pw ="";
    String name ="";
    String tel ="";
    if(table.next()){
    	out.print("결과 row가 있음.~<br><hr color=red><br>");
    	id2 = table.getString(1); //id컬럼 
    	pw = table.getString(2); //pw
    	name = table.getString(3); //name
    	tel = table.getString(4); //tel
    }
     %>
 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 검색 페이지</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body bgcolor="cream">
검색 결과<br>
<hr color="red">
<table class="table table-dark table-striped">
	<tr>
		<td>아이디</td>
		<td><%= id2 %></td>
	</tr>
	<tr>
		<td>패스워드</td>
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
</body>
</html>