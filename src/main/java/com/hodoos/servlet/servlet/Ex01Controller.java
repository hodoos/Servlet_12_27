package com.hodoos.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		// 문자 인코딩 설정
		response.setCharacterEncoding("utf-8");
		// 컨텐츠 타입 MIME
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// 날짜 객체 import 할 때 util로 import 해야 합니다.
		Date now = new Date();
		out.println(now);
		
		// 날짜 포메팅 // 소문자 m 은 분 대문자 M 은 월
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(now);
		
		out.println(dateString);
		// 분명히 수정했는데 변화가 없다고 하면 서버를 껏다 키면 됩니다.
		
		
		
	}
}
