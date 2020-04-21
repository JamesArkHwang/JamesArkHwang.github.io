<%@page import="org.apache.tomcat.util.net.ApplicationBufferHandler"%>
<%@page import="java.applet.Applet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>猜一猜</title>
</head>
<body>
	<%
		application.setAttribute("restart", 0);
		application.setAttribute("result", "");
		application.setAttribute("count", 0);
	 %>
	<div align="center">
		<h1>猜一猜</h1>
		<h3>范围：1~100</h3>
		
		<iframe name="displayFrame" frameborder="0" width=100% height=150px src="originalText.html"> </iframe>
		
		<iframe name="sendFrame" frameborder="0" width=100% height=300px src="guessValue.jsp"></iframe>
	</div>
</body>
</html>