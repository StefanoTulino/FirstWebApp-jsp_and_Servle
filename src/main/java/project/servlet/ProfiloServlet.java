package project.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import project.service.ProgettoService;
import project.service.impl.ProgettoServiceImpl;
import project.utility.ProfiloBlob;


@MultipartConfig
public class ProfiloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProgettoService progettoService= new ProgettoServiceImpl();
       
    
    public ProfiloServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//View all profile
//		List<ProfiloBlob> listaUtenti= progettoService.listaUtenti();
//		request.setAttribute("listaUtenti", listaUtenti);
		
		//QUI DOVREI PRENDERE L'id dalla Session, ma non esistendo parto da un id esistente fissato
		ProfiloBlob profilo= progettoService.searchUtente(41);
		request.setAttribute("user", profilo);
		RequestDispatcher rd= request.getRequestDispatcher("jsp/profilo.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Modifica immagine di un singolo utente
			Part imgPart= request.getPart("img");
			String filePath = imgPart.getSubmittedFileName();//Retrieves complete file name with path and directories 
	        Path p = Paths.get(filePath); //creates a Path object
	        String fileName = p.getFileName().toString();//Retrieves file name from Path object
	        InputStream fileContent = imgPart.getInputStream();//converts Part data to input stream
	        int  len=(int) imgPart.getSize();
			
	        int id= Integer.parseInt(request.getParameter("idProfilo"));
			progettoService.modificaImgProfilo(id, fileContent,len);
			ProfiloBlob profilo= progettoService.searchUtente(id);
			request.setAttribute("user", profilo);
				
			RequestDispatcher rd= request.getRequestDispatcher("jsp/profilo.jsp");
			rd.forward(request, response);
	}

}
