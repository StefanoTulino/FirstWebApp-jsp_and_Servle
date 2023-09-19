package project.dao.impl;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import project.dao.ProgettoDAO;
import project.dto.TableBlobDTO;
import project.utility.BaseDAO;

public class ProgettoDAOImpl extends BaseDAO implements ProgettoDAO  {

	
	@Override
	public List<TableBlobDTO> getAllUser() throws SQLException {
		Connection connection=super.connect();
		Statement statement= connection.createStatement();
		List<TableBlobDTO> lista= new ArrayList<>();
	
		try {
			String sql="SELECT * FROM table_blob t";
			ResultSet rs= statement.executeQuery(sql);
			while(rs.next()) {
				lista.add(new TableBlobDTO(rs.getInt("id"),rs.getString("name"),rs.getBlob("img")));
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Exception: "+ e.getMessage());
// 	Con esso mi dà errore di connessione chiusa		
//		} finally {
//			statement.close();
//			super.closeConnect(connection);
//		}
		}
	return lista;
	}

	
	
	@Override
	public void updateImmagine(int idUtente,InputStream i, int size) throws SQLException {
		Connection connection=super.connect();
		
	
		try {
			String sql="UPDATE table_blob t SET img=? WHERE id=?";
			PreparedStatement preparedStatement= connection.prepareStatement(sql);
			preparedStatement.setBinaryStream(1, i, size);
			preparedStatement.setInt(2, idUtente);
			int rs= preparedStatement.executeUpdate();
			if(rs!=0) {
				System.out.println("Update riuscito");
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Exception: "+ e.getMessage());
		}
	}



	@Override
	public TableBlobDTO ricercaUtente(int idUtente) throws SQLException {
		Connection connection=super.connect();
		TableBlobDTO profilo= new TableBlobDTO();
	
		try {
			String sql="SELECT * FROM table_blob t WHERE t.id=?";
			PreparedStatement preparedStatement= connection.prepareStatement(sql);
			preparedStatement.setInt(1, idUtente);
			ResultSet rs= preparedStatement.executeQuery();
			while(rs.next()) {
				profilo=new TableBlobDTO(rs.getInt("id"),rs.getString("name"),rs.getBlob("img"));
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Exception: "+ e.getMessage());
		

		}
	return profilo;
	}


}