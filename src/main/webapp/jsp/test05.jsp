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
		
		String result = "";
		for(int i = 0; i < unitArray.length; i++){
			if(unitArray[i].equals("inch")){
				double inch = num1 * 0.39;
				result += inch + "in<br>";
			} else if(unitArray[i].equals("yard")){
				double yard = num1 * 0.010936133;
				result += yard + "yd<br>";
			} else if(unitArray[i].equals("feet")){
				double feet = num1 * 0.032808399;
				result += feet + "ft<br>";
			} else if(unitArray[i].equals("meter")){
				double meter = num1 / 100.0;
				result += meter + "M<br>";
			}
		}
		/*String unitString = "";
		for(int i = 0; i < unitArray.length; i++){
			unitString += unitArray[i] + " ";
		}
		*/
		/* double num1inch = num1 / 2.54;
		double num1yard = num1 / 91.44;
		double num1feet = num1 / 30.48;
		double num1meter = num1 / 100.0;
		
		String print = "";
		
		if(unitString.contains("inch")){
			print += num1inch + "in";
		}
		if(unitString.contains("yard")){
			print += num1yard + "yar";
		}
		if(unitString.contains("feet")){
			print += num1feet + "ft";
		}
		if(unitString.contains("meter")){
			print += num1meter + "m";
		}
		*/
	
	
	%>
	
	<h2>변환결과</h2>
	<h3><%= num1 %>cm</h3>
	<hr>
	<h3><%= result %></h3>

</body>
</html>