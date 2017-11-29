package servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/test03.nhn")
public class ForwardServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("menu", "kimchi");
		request.setAttribute("randomNum", new Random().nextInt(100));
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("test03_view.jsp");
		dispatcher.forward(request, response);
	}
}
