package project.service;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import project.utility.ProfiloBlob;

public interface ProgettoService {

	List<ProfiloBlob> listaUtenti();
	void modificaImgProfilo(int idUtente,InputStream i, int size);
	ProfiloBlob searchUtente(int id);
}
