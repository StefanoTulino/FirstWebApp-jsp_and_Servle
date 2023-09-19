package project.utility;

import java.sql.Blob;
import java.util.Arrays;

public class ProfiloBlob {
	
	private int id;
	private String nome;
	private String immagineByte;
	
	
	public ProfiloBlob() {
		super();
	}

	
	public ProfiloBlob(int id, String nome, String immagineByte) {
		this.id = id;
		this.nome = nome;
		this.immagineByte = immagineByte;
	}

	
	
	public ProfiloBlob(int id, String nome) {
		this.id = id;
		this.nome = nome;
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
	
	public String getImmagineByte() {
		return immagineByte;
	}


	public void setImmagineByte(String immagineByte) {
		this.immagineByte = immagineByte;
	}


	@Override
	public String toString() {
		return "ProfiloBlob [id=" + id + ", nome=" + nome + 
				", immagineByte=" + immagineByte + "]";
	}


}
