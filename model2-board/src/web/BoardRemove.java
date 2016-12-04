package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Board;
import service.BoardDao;

@WebServlet("/board/BoardRemove")
public class BoardRemove extends HttpServlet {
	private BoardDao boardDao;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("boardNo") == null) {
			response.sendRedirect(request.getContextPath()+"/board/BoardList");
		} else {

		request.getRequestDispatcher("/board/boardRemoveForm.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost진입성공");
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		String boardPw =request.getParameter("boardPw");
		Board board = new Board();
		board.setBoardNo(boardNo);
		board.setBoardPw(boardPw);
		boardDao = new BoardDao();
		int rowCount = boardDao.deleteBoard(board);
		if(rowCount==1){
			response.sendRedirect(request.getContextPath()+"/board/BoardList");
		}else{
			response.sendRedirect(request.getContextPath()+"/board/BoardRemove?boardNo="+boardNo);
		}
	}

}
