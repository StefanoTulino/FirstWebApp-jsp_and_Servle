package project.dto;

import java.sql.Blob;

public class TableBlobDTO {
	
	private int id;
	private String nome;
	private Blob immagine;
	private byte[] immagineByte;
	
	
	public TableBlobDTO() {
		super();
	}

	
	
	public TableBlobDTO(int id, String nome, Blob immagine) {
		super();
		this.id = id;
		this.nome = nome;
		this.immagine = immagine;
	}
	
	


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Blob getImmagine() {
		return immagine;
	}


	public void setImmagine(Blob immagine) {
		this.immagine = immagine;
	}
	
	

	@Override
	public String toString() {
		return "TableBlob [id=" + id + ", nome=" + nome + ", immagine=" + immagine + "]";
	}
	
	
}
