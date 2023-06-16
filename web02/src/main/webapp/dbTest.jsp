<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page import="java.sql.DriverManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    // 스크립트릿
    // JDBC 프로그래밍
    // 1. 드라이버 연결
    Class.forName("com.mysql.cj.jdbc.Driver");
    out.print("1. 드라이버 설정 성공");
    // 2. db연결 - url(ip + port + db명), id, pw
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";
    
    Connection con = DriverManager.getConnection(url, user, password);
    out.print("2. DB 연결 성공");
    
    // 3. sql문 생성
    String sql = "insert into member values ('win2','win2','win2','016')";
    PreparedStatement ps = con.prepareStatement(sql);
    out.print("3. sql문 생성 성공");
    
    // 4. sql문 전송
    ps.executeUpdate(sql);
    out.print("4. sql문 전송 성공");
    
    %>
<!DOCTYPE html>
<!-- 박혜민 바보 멍충이 똥깨 해삼 말미잘~-->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>