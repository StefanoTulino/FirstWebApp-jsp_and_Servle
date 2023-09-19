package project.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project.service.ProgettoService;
import project.service.impl.ProgettoServiceImpl;

import java.io.IOException;


public class Page2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProgettoService progettoService= new ProgettoServiceImpl();
       
   
    public Page2Servlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("jsp/page2.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("jsp/page2.jsp");
		rd.forward(request, response);
	}

}
