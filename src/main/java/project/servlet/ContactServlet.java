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


public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProgettoService progettoService= new ProgettoServiceImpl();
       
   
    public ContactServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd= request.getRequestDispatcher("jsp/contact.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome= request.getParameter("nome");
		System.out.println(nome);
		//Se uno dei due viene cliccato, allora viene preso il suo valore,ovviamente se questo non
		//include una condizione di default
		String radio= request.getParameter("radio");
		System.out.println(radio);
		int età= Integer.parseInt(request.getParameter("range"));
		System.out.println(età);
		String textArea= request.getParameter("textarea");
		System.out.println(textArea);
		
		RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}
