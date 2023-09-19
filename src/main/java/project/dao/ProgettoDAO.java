package project.dao;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import project.dto.TableBlobDTO;
import project.utility.ProfiloBlob;

public interface ProgettoDAO {

	
	//Profilo
	List<TableBlobDTO> getAllUser() throws SQLException;
	void updateImmagine(int idUtente,InputStream i, int size) throws SQLException;
	TableBlobDTO ricercaUtente(int idUtente) throws SQLException;
}
