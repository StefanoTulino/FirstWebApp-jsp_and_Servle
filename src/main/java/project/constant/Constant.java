package project.constant;

public class Constant {
	private static final String DB_URL = "jdbc:oracle:thin:@//192.168.1.117:1521/xepdb1";
    private static final String DB_USER = "first_connection";
    private static final String DB_PASSW = "root";
	
	
	
    public static String getDbUrl() {
		return DB_URL;
	}
	public static String getDbUser() {
		return DB_USER;
	}
	public static String getDbPassw() {
		return DB_PASSW;
	}
	
    
    
}
