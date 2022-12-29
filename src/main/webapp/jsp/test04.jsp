<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		String num1String = request.getParameter("num1");
		String num2String = request.getParameter("num2");
		String symbol = request.getParameter("symbol");
		
		int num1 = Integer.parseInt(num1String);
		int num2 = Integer.parseInt(num2String);
		
		double result = 0;
		if(symbol.equals("addition")){
			result = num1 + num2;
			symbol = "+";
		} else if(symbol.equals("subtraction")){
			result = num1 - num2;
			symbol = "-";
		} else if(symbol.equals("multiplication")){
			result = num1 * num2;
			symbol = "X";
		} else if(symbol.equals("division")){
			result = num1 / num2;
			symbol = "/";
		}
	
	%>
	
	<div>
		<div><h1>계산 결과</h1></div>
		<div><h1> <%= num1 + symbol + num2 + " = "%> <span class="text-primary"> <%= result %></span> </h1></div>
	
	</div>
	
	

</body>
</html>