<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double average = sum / scores.length;
	%>
	<h1>점수 평균은 <%= average %> 입니다.</h1>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		int score2 = 0;
		
		for(int i = 0; i < scoreList.size(); i ++) {
			if(scoreList.get(i).equals("O")){
				score += 100 / scoreList.size();
			}
		}
		
		for(String check:scoreList) {
			if(check.equals("O")){
				score2 += 100 / scoreList.size();
			}
		}
	%>
	<h1>채점 결과는 <%= score %>점 입니다.</h1>
	
	<%!
		
		public int intCount(int num){
			int sum = 0;
			for(int i = 1; i <= num; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<h1>1에서 50까지의 합은 <%= intCount(50) %> 입니다.</h1>
	
	<%!
		//String birthDay = "20010820";
		public int calBirthday(String birthday){
			String yearString = birthday.substring(0,4);
			int year = Integer.parseInt(yearString);
			int age = 2022 - year;
			return age;
		}
	%>
	<h1>20010820 의 나이는 <%= calBirthday("20010820") %> 살 입니다.</h1>
	
	
	
	
	
</body>
</html>