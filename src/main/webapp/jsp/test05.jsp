<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String num1String = request.getParameter("num1");
		String[] unitArray = request.getParameterValues("unit");
		
		int num1 = Integer.parseInt(num1String);
		String unitString = "";
		for(int i = 0; i < unitArray.length; i++){
			unitString += unitArray[i] + " ";
		}
		
		double num1inch = num1 / 2.54;
		double num1yard = num1 / 91.44;
		double num1feet = num1 / 30.48;
		double num1meter = num1 / 100.0;
		
		String print = "";
		
		if(unitString.contains("inch")){
			print += num1inch + "in" + "\n";
		}
		if(unitString.contains("yard")){
			print += num1yard + "yar" + "\n";
		}
		if(unitString.contains("feet")){
			print += num1feet + "ft" + "\n";
		}
		if(unitString.contains("meter")){
			print += num1meter + "m" + "\n";
		}
	
	
	%>
	
	<div>
		<div><h1>변환결과</h1></div>
		<div><h1><%= num1 %>cm</h1></div>
		<hr>
		<div>
			<h1><%= print %></h1>
		</div>
	</div>

</body>
</html>