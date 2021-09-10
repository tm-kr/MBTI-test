package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Singleton {
	private static Singleton instance;
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "MBTI";
	private String password = "1234";
	private Singleton() {
		
	}
	public static Singleton getInstance() {
		synchronized(Singleton.class) {
			try {
				Class.forName("oracle.jdbc.OracleDriver");
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			if (instance == null) {
				instance = new Singleton();
			}
		}
		return instance;
	}
	public Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url, user, password);
	}
}
