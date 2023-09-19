package project.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import project.constant.Constant;


public class BaseDAO {
	
	protected Connection connect() {
		Connection connection=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection(Constant.getDbUrl(),Constant.getDbUser(),Constant.getDbPassw());
			System.out.println("connesso");
		} catch (Exception e) {
			System.out.println("Causa: " + e.getMessage());
		} 
	return connection;
	}
	
	
	protected void closeConnect(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Base DAO: "+ e.getMessage());
		}
	}
	
	

}
