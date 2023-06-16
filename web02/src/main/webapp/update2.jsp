<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String no = request.getParameter("no");
    String content = request.getParameter("content");

   	Class.forName("com.mysql.cj.jdbc.Driver");
    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "mario";

    Connection con = DriverManager.getConnection(url, user, password); //Connection
    
    String sql = "update bbs set content = ? where no = ?";

    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(2, no);
    ps.setString(1, content);

    ps.executeUpdate();
    	
    %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
요청에 대한 응답이 들어가는 부분.<br>
서버로 전달된 no: <%= no %> <br>
서버로 전달된 content: <%= content %> <br>
</body>
</html>