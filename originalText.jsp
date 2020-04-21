<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="ERROR.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>输入处理</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		int guess = Integer.parseInt(request.getParameter("originalText"));		//输入的数字
		int answer = (int)application.getAttribute("toBeGuess");					//答案
		int count = (int)application.getAttribute("count");
		String result = "";														//回复
		
		if(guess < answer)
			result = "小了！";
		
		if(guess > answer)
			result = "大了！";
		
		if(guess == answer){
			result = "猜中啦！";
		}
		
		count++;
		
		application.setAttribute("result", result);							//参数：回复	
		application.setAttribute("count", count);							//参数：猜的次数
		response.sendRedirect("originalText.html");
	 %>
</body>
</html>