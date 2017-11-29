package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDao;
import vo.BookVO;

@WebServlet(urlPatterns="/book.do")
public class BookServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// book.do ��û�� get ������� ���� �� �����.
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// book.do ��û�� post ������� ���� �� �����.
		req.setCharacterEncoding("euc-kr");
		process(req, resp);
	}
	
	public void process
		(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String type = request.getParameter("type");
		BookDao dao = new BookDao();
		
		String viewPath = "";
		
		if(type.equals("bookList")){
			// å ��Ϻ��⸦ ���� �۾� ���� �κ�
			List<BookVO> bookList = dao.selectAll();
			
			// �۾��� ��� �����͸� request ���尴ü�� ��Ƽ�
			request.setAttribute("bookList", bookList);
			
			// book_list.jsp ���� forward ��.
			viewPath = "book_list.jsp";
		}else if(type.equals("insertForm")){
			// å �߰��� �ʿ��� �۾� ����
			viewPath = "insert_form.jsp";
		}else if(type.equals("insert")){
			// ����,���ǻ�,����,�⵵ �Ķ���Ͱ� �� ����� �۾�
			String title = request.getParameter("title");
			String publisher = request.getParameter("pub");
			String year = request.getParameter("year");
			String priceStr = request.getParameter("price");
			
			int price = Integer.parseInt(priceStr);
			BookVO book = new BookVO(title, publisher, price, year);
			
			int result = dao.insert(book);
			
			request.setAttribute("insertResult", result);
			
			viewPath = "insert_result.jsp";			
		}else if(type.equals("updateForm")){
			// å ������ �ʿ��� �۾� ����
		}else if(type.equals("deleteForm")){
			// å ������ �ʿ��� �۾� ����
		}
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(viewPath);
		dispatcher.forward(request, response);
	}

}






