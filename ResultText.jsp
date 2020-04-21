<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 结果</title>
</head>
<body>
	<div align="center">
	
		<input type="button" onclick="javascript:window.location.href='ResultText.jsp';" value="猜 测 结 果"/>
		
		<br><br><br>
	
		<%
			String result = (String)application.getAttribute("result");
			int count = (int)application.getAttribute("count");
			int	restart = (int)application.getAttribute("restart");
		 %>
		 <%
			if(count == 0){
				result = "~等待你的猜想~";
			}		 
		  %>
		 
		<h1><%=result %></h1>
		
		<br>
		
	 	<h4>这是你猜的第 <%=count %> 次</h4>
	
	 	<input type="button" onclick="javascript:window.location.href='reset.jsp';" value="重新设置答案"/>

	</div>
</body>
</html>