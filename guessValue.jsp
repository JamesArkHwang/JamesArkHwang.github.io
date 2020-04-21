<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生成待猜测数</title>
</head>
<body>
	<%
		int restart = (int)application.getAttribute("restart");
		
		if(restart == Integer.MIN_VALUE){
				application.removeAttribute("toBeGuess");
				restart = 0;
		}
		
		if(restart != Integer.MIN_VALUE){
			int toBeGuess = ((int)(Math.random() * 10000)) % 100 + 1;
			application.setAttribute("toBeGuess", toBeGuess);					//参数：答案
		}
		
		application.setAttribute("restart", restart);							//参数：重新设置答案
	 %>
	 <jsp:forward page="ResultText.jsp"></jsp:forward>
</body>
</html>