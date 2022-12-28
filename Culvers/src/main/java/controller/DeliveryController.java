package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDAO;

@WebServlet("/")
public class DeliveryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeliveryController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doPro(request, response);
	}

	protected void doPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String context = request.getContentType();
		String command = request.getServletPath();
		String site = null;

		LoginDAO login = new LoginDAO();

		switch (command) {
		case "/add":
			site = login.nextCustno(request, response);
			break;
		case "/insertLog":
			site = login.insertLog(request, response);
			break;
		case "/list":
			site = "list.jsp";
			break;
		case "/order":
			site = login.nextOrder(request,response);
			break;
		
		 case "/orderMenu": 
			 site = login.orderMenu(request, response); 
			 break;
		 case "/check":
			 site = login.selectAll(request, response);
			 break;

			
		}
		getServletContext().getRequestDispatcher("/" + site).forward(request, response);
	}
}