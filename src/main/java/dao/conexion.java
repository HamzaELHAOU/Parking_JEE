package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {
	private static Connection connection;
	static {
	
	}
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/parking?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatet\r\n"
					+ "imeCode=false&serverTimezone=UTC","root","");
			System.out.println("connection fait ");
			
		} catch (Exception e) {
		System.out.println(e.getMessage());
		}
		return connection;
	}
}
