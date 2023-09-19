package project.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import project.dao.ProgettoDAO;
import project.dao.impl.ProgettoDAOImpl;
import project.dto.TableBlobDTO;
import project.service.ProgettoService;
import project.utility.ProfiloBlob;

public class ProgettoServiceImpl implements ProgettoService {
	
	private ProgettoDAO progettoDao= new ProgettoDAOImpl();

	
	//trasformiamo la stringa di Blob in un array di byte, per poi trasformarlo in una string semplice
	@Override
	public List<ProfiloBlob> listaUtenti() {
		List<TableBlobDTO> lista= new ArrayList<>();
		List<ProfiloBlob> listaProfilo= new ArrayList<>();
		try {
			lista=  progettoDao.getAllUser();
			for(TableBlobDTO t: lista) {
				Blob b= t.getImmagine();
				if(b!=null) {
				//CODICE INCLUSO NELL'IF!
				InputStream inputStream = b.getBinaryStream();
	            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	            byte[] buffer = new byte[4096];
	            int bytesRead = -1;
	            while ((bytesRead = inputStream.read(buffer)) != -1) {
	                outputStream.write(buffer, 0, bytesRead);                  
	            	}  
	            byte[] imageBytes = outputStream.toByteArray();
	            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
	            inputStream.close();
	            outputStream.close();
	            listaProfilo.add(new ProfiloBlob(t.getId(), t.getNome(), base64Image));
				
				} else {
					listaProfilo.add(new ProfiloBlob(t.getId(), t.getNome()));
				}
	           
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error Service: "+ e.getMessage());
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Error Service: "+ e.getMessage());
		}
		
	return listaProfilo;
	}


	@Override
	public void modificaImgProfilo(int idUtente, InputStream i, int size) {
		try {
			progettoDao.updateImmagine(idUtente, i, size);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error Service: "+ e.getMessage());
		}
		
	}


	@Override
	public ProfiloBlob searchUtente(int id) {
		TableBlobDTO profiloNoImage= new TableBlobDTO();
		ProfiloBlob profilo= new ProfiloBlob();
		try {
			profiloNoImage= progettoDao.ricercaUtente(id);
			Blob b= profiloNoImage.getImmagine();
			if(b!=null) {
			InputStream inputStream = b.getBinaryStream();
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
             
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);                  
            	}
             
            byte[] imageBytes = outputStream.toByteArray();
            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
            
            inputStream.close();
            outputStream.close();
            profilo=new ProfiloBlob(profiloNoImage.getId(), profiloNoImage.getNome(), base64Image);
			} else {
				profilo=new ProfiloBlob(profiloNoImage.getId(), profiloNoImage.getNome());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Error Service: "+ e.getMessage());
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Error Service: "+ e.getMessage());
		}
		
	return profilo;
	}

}
