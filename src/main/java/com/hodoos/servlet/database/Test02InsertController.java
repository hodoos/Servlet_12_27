package com.hodoos.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hodoos.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02InsertController  extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `website`\r\n"
				+ "	(`name`, `url`, `createdAt`, `updatedAt` )\r\n"
				+ "    VALUES\r\n"
				+ "    ('" + name + "', '" + url + "', now(), now())";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test02.jsp");
		
//		INSERT INTO `website`
//		(`name`, `url`, `createdAt`, `updatedAt` )
//	    VALUES
//	    (now(), now())
	}
}