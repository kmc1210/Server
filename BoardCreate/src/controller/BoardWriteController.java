package web.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import web.dto.Board;
import web.dto.Member;
import web.service.face.BoardService;
import web.service.face.MemberService;
import web.service.impl.BoardServiceImpl;
import web.service.impl.MemberServiceImpl;

@WebServlet("/board/write")
public class BoardWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//BoardService 객체 생성
	private BoardService boardService = new BoardServiceImpl();
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Write [doGET] 확인");
		
		if( req.getSession().getAttribute("login") == null) {
			
			resp.sendRedirect("/main");
		
			return;
		}
		
		req.getRequestDispatcher("/WEB-INF/views/board/write.jsp").forward(req, resp);
		}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("글쓰기 doPOST 확인");
		
		
		
		boardService.write(req);
		
		resp.sendRedirect("/board/list");
	}
	
}
