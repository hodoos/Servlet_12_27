<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="/jsp/test07.jsp">
		<h1>메뉴 검색</h1>
		<input type="text" name="menu">
		<label><input type="checkbox" name="pointFilter" value="true"> 4점이하 제외</label>
		<br>
		<button type="submit">검색</button>
	</form>
</body>
</html>