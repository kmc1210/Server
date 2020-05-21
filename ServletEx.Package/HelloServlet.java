package hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/hello - 접속 완료");
		
		//응답 데이터 형식 지정
		response.setContentType("text/html;charset=utf-8");
		
		
		// 응답 출력 스트림
		PrintWriter out =response.getWriter();
		
		
		// 응답 내용 출력(HTML 형식)
		out.append("<h1>하이하이</h1>")
			.append("<h3>잘되는건가요!</h3>");
		
		System.out.println("콘솔 확인!");
		
	}


}
